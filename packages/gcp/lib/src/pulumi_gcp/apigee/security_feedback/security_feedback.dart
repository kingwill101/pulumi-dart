import 'package:pulumi/pulumi.dart';
import '../security_feedback_feedback_context/security_feedback_feedback_context.dart';
import 'security_feedback_args.dart';

/// Represents a feedback report from an Advanced API Security customer.
/// Manages customer feedback about ML models.
///
///
/// To get more information about SecurityFeedback, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.securityFeedback/create)
/// * How-to Guides
/// * [Create a SecurityFeedback](https://docs.cloud.google.com/apigee/docs/api-security/abuse-detection#exclude-traffic-from-abuse-detection)
///
/// ## Example Usage
///
/// ### Apigee Security Feedback Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
/// name: "apigee-range",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 16,
/// network: apigeeNetwork.id,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
/// network: apigeeNetwork.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [apigeeRange.name],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
/// analyticsRegion: "us-central1",
/// projectId: current.then(current => current.project),
/// authorizedNetwork: apigeeNetwork.id,
/// }, {
/// dependsOn: [apigeeVpcConnection],
/// });
/// const apigeeOrgSecurityAddonsConfig = new gcp.apigee.AddonsConfig("apigee_org_security_addons_config", {
/// org: apigeeOrg.name,
/// addonsConfig: {
/// apiSecurityConfig: {
/// enabled: true,
/// },
/// },
/// });
/// const securityFeedback = new gcp.apigee.SecurityFeedback("security_feedback", {
/// feedbackId: "my-feedback",
/// orgId: apigeeOrg.id,
/// displayName: "terraform test display name",
/// feedbackType: "EXCLUDED_DETECTION",
/// reason: "INTERNAL_SYSTEM",
/// comment: "terraform test comment",
/// feedbackContexts: [
/// {
/// attribute: "ATTRIBUTE_ENVIRONMENTS",
/// values: [apigeeEnvironment.name],
/// },
/// {
/// attribute: "ATTRIBUTE_IP_ADDRESS_RANGES",
/// values: [
/// "10.0.0.0",
/// "172.16.0.0/12",
/// ],
/// },
/// ],
/// }, {
/// dependsOn: [apigeeOrgSecurityAddonsConfig],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
/// name="apigee-range",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=16,
/// network=apigee_network.id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
/// network=apigee_network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[apigee_range.name])
/// apigee_org = gcp.apigee.Organization("apigee_org",
/// analytics_region="us-central1",
/// project_id=current.project,
/// authorized_network=apigee_network.id,
/// opts = pulumi.ResourceOptions(depends_on=[apigee_vpc_connection]))
/// apigee_org_security_addons_config = gcp.apigee.AddonsConfig("apigee_org_security_addons_config",
/// org=apigee_org.name,
/// addons_config={
/// "api_security_config": {
/// "enabled": True,
/// },
/// })
/// security_feedback = gcp.apigee.SecurityFeedback("security_feedback",
/// feedback_id="my-feedback",
/// org_id=apigee_org.id,
/// display_name="terraform test display name",
/// feedback_type="EXCLUDED_DETECTION",
/// reason="INTERNAL_SYSTEM",
/// comment="terraform test comment",
/// feedback_contexts=[
/// {
/// "attribute": "ATTRIBUTE_ENVIRONMENTS",
/// "values": [apigee_environment["name"]],
/// },
/// {
/// "attribute": "ATTRIBUTE_IP_ADDRESS_RANGES",
/// "values": [
/// "10.0.0.0",
/// "172.16.0.0/12",
/// ],
/// },
/// ],
/// opts = pulumi.ResourceOptions(depends_on=[apigee_org_security_addons_config]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Gcp.Organizations.GetClientConfig.Invoke();
///
/// var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
/// {
/// Name = "apigee-network",
/// });
///
/// var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
/// {
/// Name = "apigee-range",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 16,
/// Network = apigeeNetwork.Id,
/// });
///
/// var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
/// {
/// Network = apigeeNetwork.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// apigeeRange.Name,
/// },
/// });
///
/// var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
/// {
/// AnalyticsRegion = "us-central1",
/// ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// AuthorizedNetwork = apigeeNetwork.Id,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigeeVpcConnection,
/// },
/// });
///
/// var apigeeOrgSecurityAddonsConfig = new Gcp.Apigee.AddonsConfig("apigee_org_security_addons_config", new()
/// {
/// Org = apigeeOrg.Name,
/// AddonsConfigDetails = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigArgs
/// {
/// ApiSecurityConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs
/// {
/// Enabled = true,
/// },
/// },
/// });
///
/// var securityFeedback = new Gcp.Apigee.SecurityFeedback("security_feedback", new()
/// {
/// FeedbackId = "my-feedback",
/// OrgId = apigeeOrg.Id,
/// DisplayName = "terraform test display name",
/// FeedbackType = "EXCLUDED_DETECTION",
/// Reason = "INTERNAL_SYSTEM",
/// Comment = "terraform test comment",
/// FeedbackContexts = new[]
/// {
/// new Gcp.Apigee.Inputs.SecurityFeedbackFeedbackContextArgs
/// {
/// Attribute = "ATTRIBUTE_ENVIRONMENTS",
/// Values = new[]
/// {
/// apigeeEnvironment.Name,
/// },
/// },
/// new Gcp.Apigee.Inputs.SecurityFeedbackFeedbackContextArgs
/// {
/// Attribute = "ATTRIBUTE_IP_ADDRESS_RANGES",
/// Values = new[]
/// {
/// "10.0.0.0",
/// "172.16.0.0/12",
/// },
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigeeOrgSecurityAddonsConfig,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// Name: pulumi.String("apigee-network"),
/// })
/// if err != nil {
/// return err
/// }
/// apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("apigee-range"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(16),
/// Network:      apigeeNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: apigeeNetwork.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// apigeeRange.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// AnalyticsRegion:   pulumi.String("us-central1"),
/// ProjectId:         pulumi.String(current.Project),
/// AuthorizedNetwork: apigeeNetwork.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigeeVpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// apigeeOrgSecurityAddonsConfig, err := apigee.NewAddonsConfig(ctx, "apigee_org_security_addons_config", &apigee.AddonsConfigArgs{
/// Org: apigeeOrg.Name,
/// AddonsConfig: &apigee.AddonsConfigAddonsConfigArgs{
/// ApiSecurityConfig: &apigee.AddonsConfigAddonsConfigApiSecurityConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigee.NewSecurityFeedback(ctx, "security_feedback", &apigee.SecurityFeedbackArgs{
/// FeedbackId:   pulumi.String("my-feedback"),
/// OrgId:        apigeeOrg.ID(),
/// DisplayName:  pulumi.String("terraform test display name"),
/// FeedbackType: pulumi.String("EXCLUDED_DETECTION"),
/// Reason:       pulumi.String("INTERNAL_SYSTEM"),
/// Comment:      pulumi.String("terraform test comment"),
/// FeedbackContexts: apigee.SecurityFeedbackFeedbackContextArray{
/// &apigee.SecurityFeedbackFeedbackContextArgs{
/// Attribute: pulumi.String("ATTRIBUTE_ENVIRONMENTS"),
/// Values: pulumi.StringArray{
/// apigeeEnvironment.Name,
/// },
/// },
/// &apigee.SecurityFeedbackFeedbackContextArgs{
/// Attribute: pulumi.String("ATTRIBUTE_IP_ADDRESS_RANGES"),
/// Values: pulumi.StringArray{
/// pulumi.String("10.0.0.0"),
/// pulumi.String("172.16.0.0/12"),
/// },
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigeeOrgSecurityAddonsConfig,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.AddonsConfig;
/// import com.pulumi.gcp.apigee.AddonsConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs;
/// import com.pulumi.gcp.apigee.SecurityFeedback;
/// import com.pulumi.gcp.apigee.SecurityFeedbackArgs;
/// import com.pulumi.gcp.apigee.inputs.SecurityFeedbackFeedbackContextArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
/// .name("apigee-network")
/// .build());
///
/// var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
/// .name("apigee-range")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(16)
/// .network(apigeeNetwork.id())
/// .build());
///
/// var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
/// .network(apigeeNetwork.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(apigeeRange.name())
/// .build());
///
/// var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
/// .analyticsRegion("us-central1")
/// .projectId(current.project())
/// .authorizedNetwork(apigeeNetwork.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(apigeeVpcConnection)
/// .build());
///
/// var apigeeOrgSecurityAddonsConfig = new AddonsConfig("apigeeOrgSecurityAddonsConfig", AddonsConfigArgs.builder()
/// .org(apigeeOrg.name())
/// .addonsConfig(AddonsConfigAddonsConfigArgs.builder()
/// .apiSecurityConfig(AddonsConfigAddonsConfigApiSecurityConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
/// .build());
///
/// var securityFeedback = new SecurityFeedback("securityFeedback", SecurityFeedbackArgs.builder()
/// .feedbackId("my-feedback")
/// .orgId(apigeeOrg.id())
/// .displayName("terraform test display name")
/// .feedbackType("EXCLUDED_DETECTION")
/// .reason("INTERNAL_SYSTEM")
/// .comment("terraform test comment")
/// .feedbackContexts(
/// SecurityFeedbackFeedbackContextArgs.builder()
/// .attribute("ATTRIBUTE_ENVIRONMENTS")
/// .values(apigeeEnvironment.name())
/// .build(),
/// SecurityFeedbackFeedbackContextArgs.builder()
/// .attribute("ATTRIBUTE_IP_ADDRESS_RANGES")
/// .values(
/// "10.0.0.0",
/// "172.16.0.0/12")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(apigeeOrgSecurityAddonsConfig)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apigeeNetwork:
/// type: gcp:compute:Network
/// name: apigee_network
/// properties:
/// name: apigee-network
/// apigeeRange:
/// type: gcp:compute:GlobalAddress
/// name: apigee_range
/// properties:
/// name: apigee-range
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 16
/// network: ${apigeeNetwork.id}
/// apigeeVpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: apigee_vpc_connection
/// properties:
/// network: ${apigeeNetwork.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${apigeeRange.name}
/// apigeeOrg:
/// type: gcp:apigee:Organization
/// name: apigee_org
/// properties:
/// analyticsRegion: us-central1
/// projectId: ${current.project}
/// authorizedNetwork: ${apigeeNetwork.id}
/// options:
/// dependsOn:
/// - ${apigeeVpcConnection}
/// apigeeOrgSecurityAddonsConfig:
/// type: gcp:apigee:AddonsConfig
/// name: apigee_org_security_addons_config
/// properties:
/// org: ${apigeeOrg.name}
/// addonsConfig:
/// apiSecurityConfig:
/// enabled: true
/// securityFeedback:
/// type: gcp:apigee:SecurityFeedback
/// name: security_feedback
/// properties:
/// feedbackId: my-feedback
/// orgId: ${apigeeOrg.id}
/// displayName: terraform test display name
/// feedbackType: EXCLUDED_DETECTION
/// reason: INTERNAL_SYSTEM
/// comment: terraform test comment
/// feedbackContexts:
/// - attribute: ATTRIBUTE_ENVIRONMENTS
/// values:
/// - ${apigeeEnvironment.name}
/// - attribute: ATTRIBUTE_IP_ADDRESS_RANGES
/// values:
/// - 10.0.0.0
/// - 172.16.0.0/12
/// options:
/// dependsOn:
/// - ${apigeeOrgSecurityAddonsConfig}
/// variables:
/// current:
/// fn::invoke:
/// function: gcp:organizations:getClientConfig
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// SecurityFeedback can be imported using any of these accepted formats:
///
/// * `{{org_id}}/securityFeedback/{{feedback_id}}`
///
/// * `{{org_id}}/{{feedback_id}}`
///
/// When using the `pulumi import` command, SecurityFeedback can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/securityFeedback:SecurityFeedback default {{org_id}}/securityFeedback/{{feedback_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/securityFeedback:SecurityFeedback default {{org_id}}/{{feedback_id}}
/// ```
class SecurityFeedback extends CustomResource {
  /// Optional text the user can provide for additional, unstructured context.
  late final Output<String?> comment;

  /// The time when this specific feedback id was created.
  late final Output<String> createTime;

  /// The display name of the feedback.
  late final Output<String?> displayName;

  /// One or more attribute/value pairs for constraining the feedback.
  /// Structure is documented below.
  late final Output<List<SecurityFeedbackFeedbackContext>> feedbackContexts;

  /// Resource ID of the security feedback.
  late final Output<String> feedbackId;

  /// The type of feedback being submitted.
  /// Possible values are: `EXCLUDED_DETECTION`.
  late final Output<String> feedbackType;

  /// Name of the security feedback resource,
  /// in the format `organizations/{{org_name}}/securityFeedback/{{feedback_id}}`.
  late final Output<String> name;

  /// The Apigee Organization associated with the Apigee Security Feedback,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// The reason for the feedback.
  /// Possible values are: `INTERNAL_SYSTEM`, `NON_RISK_CLIENT`, `NAT`, `PENETRATION_TEST`, `OTHER`.
  late final Output<String?> reason;

  /// The time when this specific feedback id was updated.
  late final Output<String> updateTime;

  SecurityFeedback(
    String name, {
    SecurityFeedbackArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/securityFeedback:SecurityFeedback',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.comment = Output.createUnknown<String?>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String?>();
    this.feedbackContexts =
        Output.createUnknown<List<SecurityFeedbackFeedbackContext>>();
    this.feedbackId = Output.createUnknown<String>();
    this.feedbackType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.orgId = Output.createUnknown<String>();
    this.reason = Output.createUnknown<String?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
