import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_args.dart';
import 'organization_configuration_datasources.dart';

/// Manages the GuardDuty Organization Configuration in the current AWS Region. The AWS account utilizing this resource must have been assigned as a delegated Organization administrator account, e.g., via the `aws.guardduty.OrganizationAdminAccount` resource. More information about Organizations support in GuardDuty can be found in the [GuardDuty User Guide](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html).
///
/// > **NOTE:** This is an advanced resource. The provider will automatically assume management of the GuardDuty Organization Configuration without import and perform no actions on removal from the resource configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.guardduty.Detector("example", {enable: true});
/// const exampleOrganizationConfiguration = new aws.guardduty.OrganizationConfiguration("example", {
///     autoEnableOrganizationMembers: "ALL",
///     detectorId: example.id,
///     datasources: {
///         s3Logs: {
///             autoEnable: true,
///         },
///         kubernetes: {
///             auditLogs: {
///                 enable: true,
///             },
///         },
///         malwareProtection: {
///             scanEc2InstanceWithFindings: {
///                 ebsVolumes: {
///                     autoEnable: true,
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.guardduty.Detector("example", enable=True)
/// example_organization_configuration = aws.guardduty.OrganizationConfiguration("example",
///     auto_enable_organization_members="ALL",
///     detector_id=example.id,
///     datasources={
///         "s3_logs": {
///             "auto_enable": True,
///         },
///         "kubernetes": {
///             "audit_logs": {
///                 "enable": True,
///             },
///         },
///         "malware_protection": {
///             "scan_ec2_instance_with_findings": {
///                 "ebs_volumes": {
///                     "auto_enable": True,
///                 },
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GuardDuty.Detector("example", new()
///     {
///         Enable = true,
///     });
///
///     var exampleOrganizationConfiguration = new Aws.GuardDuty.OrganizationConfiguration("example", new()
///     {
///         AutoEnableOrganizationMembers = "ALL",
///         DetectorId = example.Id,
///         Datasources = new Aws.GuardDuty.Inputs.OrganizationConfigurationDatasourcesArgs
///         {
///             S3Logs = new Aws.GuardDuty.Inputs.OrganizationConfigurationDatasourcesS3LogsArgs
///             {
///                 AutoEnable = true,
///             },
///             Kubernetes = new Aws.GuardDuty.Inputs.OrganizationConfigurationDatasourcesKubernetesArgs
///             {
///                 AuditLogs = new Aws.GuardDuty.Inputs.OrganizationConfigurationDatasourcesKubernetesAuditLogsArgs
///                 {
///                     Enable = true,
///                 },
///             },
///             MalwareProtection = new Aws.GuardDuty.Inputs.OrganizationConfigurationDatasourcesMalwareProtectionArgs
///             {
///                 ScanEc2InstanceWithFindings = new Aws.GuardDuty.Inputs.OrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsArgs
///                 {
///                     EbsVolumes = new Aws.GuardDuty.Inputs.OrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesArgs
///                     {
///                         AutoEnable = true,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := guardduty.NewDetector(ctx, "example", &guardduty.DetectorArgs{
/// 			Enable: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = guardduty.NewOrganizationConfiguration(ctx, "example", &guardduty.OrganizationConfigurationArgs{
/// 			AutoEnableOrganizationMembers: pulumi.String("ALL"),
/// 			DetectorId:                    example.ID(),
/// 			Datasources: &guardduty.OrganizationConfigurationDatasourcesArgs{
/// 				S3Logs: &guardduty.OrganizationConfigurationDatasourcesS3LogsArgs{
/// 					AutoEnable: pulumi.Bool(true),
/// 				},
/// 				Kubernetes: &guardduty.OrganizationConfigurationDatasourcesKubernetesArgs{
/// 					AuditLogs: &guardduty.OrganizationConfigurationDatasourcesKubernetesAuditLogsArgs{
/// 						Enable: pulumi.Bool(true),
/// 					},
/// 				},
/// 				MalwareProtection: &guardduty.OrganizationConfigurationDatasourcesMalwareProtectionArgs{
/// 					ScanEc2InstanceWithFindings: &guardduty.OrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsArgs{
/// 						EbsVolumes: &guardduty.OrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesArgs{
/// 							AutoEnable: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.guardduty.Detector;
/// import com.pulumi.aws.guardduty.DetectorArgs;
/// import com.pulumi.aws.guardduty.OrganizationConfiguration;
/// import com.pulumi.aws.guardduty.OrganizationConfigurationArgs;
/// import com.pulumi.aws.guardduty.inputs.OrganizationConfigurationDatasourcesArgs;
/// import com.pulumi.aws.guardduty.inputs.OrganizationConfigurationDatasourcesS3LogsArgs;
/// import com.pulumi.aws.guardduty.inputs.OrganizationConfigurationDatasourcesKubernetesArgs;
/// import com.pulumi.aws.guardduty.inputs.OrganizationConfigurationDatasourcesKubernetesAuditLogsArgs;
/// import com.pulumi.aws.guardduty.inputs.OrganizationConfigurationDatasourcesMalwareProtectionArgs;
/// import com.pulumi.aws.guardduty.inputs.OrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsArgs;
/// import com.pulumi.aws.guardduty.inputs.OrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Detector("example", DetectorArgs.builder()
///             .enable(true)
///             .build());
///
///         var exampleOrganizationConfiguration = new OrganizationConfiguration("exampleOrganizationConfiguration", OrganizationConfigurationArgs.builder()
///             .autoEnableOrganizationMembers("ALL")
///             .detectorId(example.id())
///             .datasources(OrganizationConfigurationDatasourcesArgs.builder()
///                 .s3Logs(OrganizationConfigurationDatasourcesS3LogsArgs.builder()
///                     .autoEnable(true)
///                     .build())
///                 .kubernetes(OrganizationConfigurationDatasourcesKubernetesArgs.builder()
///                     .auditLogs(OrganizationConfigurationDatasourcesKubernetesAuditLogsArgs.builder()
///                         .enable(true)
///                         .build())
///                     .build())
///                 .malwareProtection(OrganizationConfigurationDatasourcesMalwareProtectionArgs.builder()
///                     .scanEc2InstanceWithFindings(OrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsArgs.builder()
///                         .ebsVolumes(OrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesArgs.builder()
///                             .autoEnable(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:guardduty:Detector
///     properties:
///       enable: true
///   exampleOrganizationConfiguration:
///     type: aws:guardduty:OrganizationConfiguration
///     name: example
///     properties:
///       autoEnableOrganizationMembers: ALL
///       detectorId: ${example.id}
///       datasources:
///         s3Logs:
///           autoEnable: true
///         kubernetes:
///           auditLogs:
///             enable: true
///         malwareProtection:
///           scanEc2InstanceWithFindings:
///             ebsVolumes:
///               autoEnable: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty Organization Configurations using the GuardDuty Detector ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/organizationConfiguration:OrganizationConfiguration example 00b00fd5aecc0ab60a708659477e9617
/// ```
class OrganizationConfiguration extends pulumi.CustomResource {
  /// Indicates the auto-enablement configuration of GuardDuty for the member accounts in the organization.
  /// Valid values are `ALL`, `NEW`, `NONE`.
  late final pulumi.Output<String> autoEnableOrganizationMembers;

  /// Configuration for the collected datasources. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.OrganizationConfigurationFeature` resources.
  ///
  /// > **NOTE:** One of `auto_enable` or `auto_enable_organization_members` must be specified.
  late final pulumi.Output<OrganizationConfigurationDatasources> datasources;

  /// The detector ID of the GuardDuty account.
  late final pulumi.Output<String> detectorId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [OrganizationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationConfiguration]. {@macro pulumi_guardduty_organization_configuration_organization_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationConfiguration(
    String name, {
    OrganizationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:guardduty/organizationConfiguration:OrganizationConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoEnableOrganizationMembers = registerOutput<String>(
      'autoEnableOrganizationMembers',
    );
    this.datasources = registerOutput<OrganizationConfigurationDatasources>(
      'datasources',
    );
    this.detectorId = registerOutput<String>('detectorId');
    this.region = registerOutput<String>('region');
  }
}
