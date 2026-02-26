import 'package:pulumi/pulumi.dart';
import 'organization_vpc_flow_logs_config_args.dart';

/// VPC Flow Logs Config is a resource that lets you configure Flow Logs for Organization.
///
///
///
/// ## Example Usage
///
/// ### Network Management Org Vpc Flow Logs Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const org_test = new gcp.networkmanagement.OrganizationVpcFlowLogsConfig("org-test", {
/// vpcFlowLogsConfigId: "basic-org-test-id",
/// location: "global",
/// organization: "123456789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// org_test = gcp.networkmanagement.OrganizationVpcFlowLogsConfig("org-test",
/// vpc_flow_logs_config_id="basic-org-test-id",
/// location="global",
/// organization="123456789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var org_test = new Gcp.NetworkManagement.OrganizationVpcFlowLogsConfig("org-test", new()
/// {
/// VpcFlowLogsConfigId = "basic-org-test-id",
/// Location = "global",
/// Organization = "123456789",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanagement.NewOrganizationVpcFlowLogsConfig(ctx, "org-test", &networkmanagement.OrganizationVpcFlowLogsConfigArgs{
/// VpcFlowLogsConfigId: pulumi.String("basic-org-test-id"),
/// Location:            pulumi.String("global"),
/// Organization:        pulumi.String("123456789"),
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
/// import com.pulumi.gcp.networkmanagement.OrganizationVpcFlowLogsConfig;
/// import com.pulumi.gcp.networkmanagement.OrganizationVpcFlowLogsConfigArgs;
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
/// var org_test = new OrganizationVpcFlowLogsConfig("org-test", OrganizationVpcFlowLogsConfigArgs.builder()
/// .vpcFlowLogsConfigId("basic-org-test-id")
/// .location("global")
/// .organization("123456789")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// org-test:
/// type: gcp:networkmanagement:OrganizationVpcFlowLogsConfig
/// properties:
/// vpcFlowLogsConfigId: basic-org-test-id
/// location: global
/// organization: '123456789'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// OrganizationVpcFlowLogsConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/vpcFlowLogsConfigs/{{vpc_flow_logs_config_id}}`
///
/// * `{{organization}}/{{location}}/{{vpc_flow_logs_config_id}}`
///
/// When using the `pulumi import` command, OrganizationVpcFlowLogsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/organizationVpcFlowLogsConfig:OrganizationVpcFlowLogsConfig default organizations/{{organization}}/locations/{{location}}/vpcFlowLogsConfigs/{{vpc_flow_logs_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/organizationVpcFlowLogsConfig:OrganizationVpcFlowLogsConfig default {{organization}}/{{location}}/{{vpc_flow_logs_config_id}}
/// ```
class OrganizationVpcFlowLogsConfig extends CustomResource {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values: INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  late final Output<String> aggregationInterval;

  /// Output only. The time the config was created.
  late final Output<String> createTime;

  /// Determines whether to include cross project annotations in the logs.
  /// This field is available only for organization configurations. If not
  /// specified in org configs will be set to CROSS_PROJECT_METADATA_ENABLED.
  /// Possible values:
  /// CROSS_PROJECT_METADATA_ENABLED
  /// CROSS_PROJECT_METADATA_DISABLED
  /// Possible values are: `CROSS_PROJECT_METADATA_ENABLED`, `CROSS_PROJECT_METADATA_DISABLED`.
  late final Output<String> crossProjectMetadata;

  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  late final Output<String?> filterExpr;

  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0
  late final Output<double> flowSampling;

  /// Optional. Resource labels to represent the user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  late final Output<String> location;

  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  late final Output<String> metadata;

  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  late final Output<List<String>?> metadataFields;

  /// Identifier. Unique name of the configuration using the form:     `organizations/{org_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  late final Output<String> name;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> organization;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: ENABLED DISABLED
  late final Output<String> state;

  /// Output only. The time the config was updated.
  late final Output<String> updateTime;

  /// Required. ID of the `VpcFlowLogsConfig`.
  late final Output<String> vpcFlowLogsConfigId;

  OrganizationVpcFlowLogsConfig(
    String name, {
    OrganizationVpcFlowLogsConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/organizationVpcFlowLogsConfig:OrganizationVpcFlowLogsConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aggregationInterval = registerOutput<String>('aggregationInterval');
    this.createTime = registerOutput<String>('createTime');
    this.crossProjectMetadata = registerOutput<String>('crossProjectMetadata');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.filterExpr = registerOutput<String?>('filterExpr');
    this.flowSampling = registerOutput<double>('flowSampling');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<String>('metadata');
    this.metadataFields = registerOutput<List<String>?>('metadataFields');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.vpcFlowLogsConfigId = registerOutput<String>('vpcFlowLogsConfigId');
  }
}
