import 'package:pulumi/pulumi.dart';
import '../addons_config_addons_config/addons_config_addons_config.dart';
import 'addons_config_args.dart';

/// Configures the add-ons for the Apigee organization. The existing add-on configuration will be fully replaced.
///
///
/// To get more information about AddonsConfig, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations#setaddons)
/// * How-to Guides
/// * [Creating an API organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org)
///
/// ## Example Usage
///
/// ### Apigee Addons Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testOrganization = new gcp.apigee.AddonsConfig("test_organization", {
/// org: "test_organization",
/// addonsConfig: {
/// apiSecurityConfig: {
/// enabled: true,
/// },
/// monetizationConfig: {
/// enabled: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_organization = gcp.apigee.AddonsConfig("test_organization",
/// org="test_organization",
/// addons_config={
/// "api_security_config": {
/// "enabled": True,
/// },
/// "monetization_config": {
/// "enabled": True,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testOrganization = new Gcp.Apigee.AddonsConfig("test_organization", new()
/// {
/// Org = "test_organization",
/// AddonsConfigDetails = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigArgs
/// {
/// ApiSecurityConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs
/// {
/// Enabled = true,
/// },
/// MonetizationConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigMonetizationConfigArgs
/// {
/// Enabled = true,
/// },
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigee.NewAddonsConfig(ctx, "test_organization", &apigee.AddonsConfigArgs{
/// Org: pulumi.String("test_organization"),
/// AddonsConfig: &apigee.AddonsConfigAddonsConfigArgs{
/// ApiSecurityConfig: &apigee.AddonsConfigAddonsConfigApiSecurityConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// MonetizationConfig: &apigee.AddonsConfigAddonsConfigMonetizationConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
/// })
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
/// import com.pulumi.gcp.apigee.AddonsConfig;
/// import com.pulumi.gcp.apigee.AddonsConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigMonetizationConfigArgs;
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
/// var testOrganization = new AddonsConfig("testOrganization", AddonsConfigArgs.builder()
/// .org("test_organization")
/// .addonsConfig(AddonsConfigAddonsConfigArgs.builder()
/// .apiSecurityConfig(AddonsConfigAddonsConfigApiSecurityConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .monetizationConfig(AddonsConfigAddonsConfigMonetizationConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testOrganization:
/// type: gcp:apigee:AddonsConfig
/// name: test_organization
/// properties:
/// org: test_organization
/// addonsConfig:
/// apiSecurityConfig:
/// enabled: true
/// monetizationConfig:
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Apigee Addons Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigee = new gcp.projects.Service("apigee", {
/// project: current.then(current => current.project),
/// service: "apigee.googleapis.com",
/// });
/// const compute = new gcp.projects.Service("compute", {
/// project: current.then(current => current.project),
/// service: "compute.googleapis.com",
/// });
/// const servicenetworking = new gcp.projects.Service("servicenetworking", {
/// project: current.then(current => current.project),
/// service: "servicenetworking.googleapis.com",
/// });
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {
/// name: "apigee-network",
/// project: current.then(current => current.project),
/// }, {
/// dependsOn: [compute],
/// });
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
/// name: "apigee-range",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 16,
/// network: apigeeNetwork.id,
/// project: current.then(current => current.project),
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
/// network: apigeeNetwork.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [apigeeRange.name],
/// });
/// const org = new gcp.apigee.Organization("org", {
/// analyticsRegion: "us-central1",
/// projectId: current.then(current => current.project),
/// authorizedNetwork: apigeeNetwork.id,
/// billingType: "EVALUATION",
/// }, {
/// dependsOn: [
/// apigeeVpcConnection,
/// apigee,
/// ],
/// });
/// const testOrganization = new gcp.apigee.AddonsConfig("test_organization", {
/// org: org.name,
/// addonsConfig: {
/// integrationConfig: {
/// enabled: true,
/// },
/// apiSecurityConfig: {
/// enabled: true,
/// },
/// connectorsPlatformConfig: {
/// enabled: true,
/// },
/// monetizationConfig: {
/// enabled: true,
/// },
/// advancedApiOpsConfig: {
/// enabled: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee = gcp.projects.Service("apigee",
/// project=current.project,
/// service="apigee.googleapis.com")
/// compute = gcp.projects.Service("compute",
/// project=current.project,
/// service="compute.googleapis.com")
/// servicenetworking = gcp.projects.Service("servicenetworking",
/// project=current.project,
/// service="servicenetworking.googleapis.com")
/// apigee_network = gcp.compute.Network("apigee_network",
/// name="apigee-network",
/// project=current.project,
/// opts = pulumi.ResourceOptions(depends_on=[compute]))
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
/// name="apigee-range",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=16,
/// network=apigee_network.id,
/// project=current.project)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
/// network=apigee_network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[apigee_range.name])
/// org = gcp.apigee.Organization("org",
/// analytics_region="us-central1",
/// project_id=current.project,
/// authorized_network=apigee_network.id,
/// billing_type="EVALUATION",
/// opts = pulumi.ResourceOptions(depends_on=[
/// apigee_vpc_connection,
/// apigee,
/// ]))
/// test_organization = gcp.apigee.AddonsConfig("test_organization",
/// org=org.name,
/// addons_config={
/// "integration_config": {
/// "enabled": True,
/// },
/// "api_security_config": {
/// "enabled": True,
/// },
/// "connectors_platform_config": {
/// "enabled": True,
/// },
/// "monetization_config": {
/// "enabled": True,
/// },
/// "advanced_api_ops_config": {
/// "enabled": True,
/// },
/// })
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
/// var apigee = new Gcp.Projects.Service("apigee", new()
/// {
/// Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// ServiceName = "apigee.googleapis.com",
/// });
///
/// var compute = new Gcp.Projects.Service("compute", new()
/// {
/// Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// ServiceName = "compute.googleapis.com",
/// });
///
/// var servicenetworking = new Gcp.Projects.Service("servicenetworking", new()
/// {
/// Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// ServiceName = "servicenetworking.googleapis.com",
/// });
///
/// var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
/// {
/// Name = "apigee-network",
/// Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// compute,
/// },
/// });
///
/// var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
/// {
/// Name = "apigee-range",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 16,
/// Network = apigeeNetwork.Id,
/// Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
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
/// var org = new Gcp.Apigee.Organization("org", new()
/// {
/// AnalyticsRegion = "us-central1",
/// ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// AuthorizedNetwork = apigeeNetwork.Id,
/// BillingType = "EVALUATION",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigeeVpcConnection,
/// apigee,
/// },
/// });
///
/// var testOrganization = new Gcp.Apigee.AddonsConfig("test_organization", new()
/// {
/// Org = org.Name,
/// AddonsConfigDetails = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigArgs
/// {
/// IntegrationConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigIntegrationConfigArgs
/// {
/// Enabled = true,
/// },
/// ApiSecurityConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs
/// {
/// Enabled = true,
/// },
/// ConnectorsPlatformConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigConnectorsPlatformConfigArgs
/// {
/// Enabled = true,
/// },
/// MonetizationConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigMonetizationConfigArgs
/// {
/// Enabled = true,
/// },
/// AdvancedApiOpsConfig = new Gcp.Apigee.Inputs.AddonsConfigAddonsConfigAdvancedApiOpsConfigArgs
/// {
/// Enabled = true,
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
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
/// apigee, err := projects.NewService(ctx, "apigee", &projects.ServiceArgs{
/// Project: pulumi.String(current.Project),
/// Service: pulumi.String("apigee.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// compute, err := projects.NewService(ctx, "compute", &projects.ServiceArgs{
/// Project: pulumi.String(current.Project),
/// Service: pulumi.String("compute.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewService(ctx, "servicenetworking", &projects.ServiceArgs{
/// Project: pulumi.String(current.Project),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// Name:    pulumi.String("apigee-network"),
/// Project: pulumi.String(current.Project),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// compute,
/// }))
/// if err != nil {
/// return err
/// }
/// apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("apigee-range"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(16),
/// Network:      apigeeNetwork.ID(),
/// Project:      pulumi.String(current.Project),
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
/// org, err := apigee.NewOrganization(ctx, "org", &apigee.OrganizationArgs{
/// AnalyticsRegion:   pulumi.String("us-central1"),
/// ProjectId:         pulumi.String(current.Project),
/// AuthorizedNetwork: apigeeNetwork.ID(),
/// BillingType:       pulumi.String("EVALUATION"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigeeVpcConnection,
/// apigee,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = apigee.NewAddonsConfig(ctx, "test_organization", &apigee.AddonsConfigArgs{
/// Org: org.Name,
/// AddonsConfig: &apigee.AddonsConfigAddonsConfigArgs{
/// IntegrationConfig: &apigee.AddonsConfigAddonsConfigIntegrationConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// ApiSecurityConfig: &apigee.AddonsConfigAddonsConfigApiSecurityConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// ConnectorsPlatformConfig: &apigee.AddonsConfigAddonsConfigConnectorsPlatformConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// MonetizationConfig: &apigee.AddonsConfigAddonsConfigMonetizationConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// AdvancedApiOpsConfig: &apigee.AddonsConfigAddonsConfigAdvancedApiOpsConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
/// })
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
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
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigIntegrationConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigApiSecurityConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigConnectorsPlatformConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigMonetizationConfigArgs;
/// import com.pulumi.gcp.apigee.inputs.AddonsConfigAddonsConfigAdvancedApiOpsConfigArgs;
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
/// var apigee = new Service("apigee", ServiceArgs.builder()
/// .project(current.project())
/// .service("apigee.googleapis.com")
/// .build());
///
/// var compute = new Service("compute", ServiceArgs.builder()
/// .project(current.project())
/// .service("compute.googleapis.com")
/// .build());
///
/// var servicenetworking = new Service("servicenetworking", ServiceArgs.builder()
/// .project(current.project())
/// .service("servicenetworking.googleapis.com")
/// .build());
///
/// var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
/// .name("apigee-network")
/// .project(current.project())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(compute)
/// .build());
///
/// var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
/// .name("apigee-range")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(16)
/// .network(apigeeNetwork.id())
/// .project(current.project())
/// .build());
///
/// var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
/// .network(apigeeNetwork.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(apigeeRange.name())
/// .build());
///
/// var org = new Organization("org", OrganizationArgs.builder()
/// .analyticsRegion("us-central1")
/// .projectId(current.project())
/// .authorizedNetwork(apigeeNetwork.id())
/// .billingType("EVALUATION")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// apigeeVpcConnection,
/// apigee)
/// .build());
///
/// var testOrganization = new AddonsConfig("testOrganization", AddonsConfigArgs.builder()
/// .org(org.name())
/// .addonsConfig(AddonsConfigAddonsConfigArgs.builder()
/// .integrationConfig(AddonsConfigAddonsConfigIntegrationConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .apiSecurityConfig(AddonsConfigAddonsConfigApiSecurityConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .connectorsPlatformConfig(AddonsConfigAddonsConfigConnectorsPlatformConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .monetizationConfig(AddonsConfigAddonsConfigMonetizationConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .advancedApiOpsConfig(AddonsConfigAddonsConfigAdvancedApiOpsConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apigee:
/// type: gcp:projects:Service
/// properties:
/// project: ${current.project}
/// service: apigee.googleapis.com
/// compute:
/// type: gcp:projects:Service
/// properties:
/// project: ${current.project}
/// service: compute.googleapis.com
/// servicenetworking:
/// type: gcp:projects:Service
/// properties:
/// project: ${current.project}
/// service: servicenetworking.googleapis.com
/// apigeeNetwork:
/// type: gcp:compute:Network
/// name: apigee_network
/// properties:
/// name: apigee-network
/// project: ${current.project}
/// options:
/// dependsOn:
/// - ${compute}
/// apigeeRange:
/// type: gcp:compute:GlobalAddress
/// name: apigee_range
/// properties:
/// name: apigee-range
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 16
/// network: ${apigeeNetwork.id}
/// project: ${current.project}
/// apigeeVpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: apigee_vpc_connection
/// properties:
/// network: ${apigeeNetwork.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${apigeeRange.name}
/// org:
/// type: gcp:apigee:Organization
/// properties:
/// analyticsRegion: us-central1
/// projectId: ${current.project}
/// authorizedNetwork: ${apigeeNetwork.id}
/// billingType: EVALUATION
/// options:
/// dependsOn:
/// - ${apigeeVpcConnection}
/// - ${apigee}
/// testOrganization:
/// type: gcp:apigee:AddonsConfig
/// name: test_organization
/// properties:
/// org: ${org.name}
/// addonsConfig:
/// integrationConfig:
/// enabled: true
/// apiSecurityConfig:
/// enabled: true
/// connectorsPlatformConfig:
/// enabled: true
/// monetizationConfig:
/// enabled: true
/// advancedApiOpsConfig:
/// enabled: true
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
/// AddonsConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AddonsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/addonsConfig:AddonsConfig default organizations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/addonsConfig:AddonsConfig default {{name}}
/// ```
class AddonsConfig extends CustomResource {
  /// Addon configurations of the Apigee organization.
  /// Structure is documented below.
  late final Output<AddonsConfigAddonsConfig?> addonsConfig;

  /// Name of the Apigee organization.
  late final Output<String> org;

  AddonsConfig(
    String name, {
    AddonsConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/addonsConfig:AddonsConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addonsConfig =
        registerOutput<AddonsConfigAddonsConfig?>('addonsConfig');
    this.org = registerOutput<String>('org');
  }
}
