import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_args.dart';
import 'detector_datasources.dart';
import 'detector_state.dart';

/// Provides a resource to manage an Amazon GuardDuty detector.
///
/// > **NOTE:** Deleting this resource is equivalent to "disabling" GuardDuty for an AWS region, which removes all existing findings. You can set the `enable` attribute to `false` to instead "suspend" monitoring and feedback reporting while keeping existing data. See the [Suspending or Disabling Amazon GuardDuty documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_suspend-disable.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myDetector = new aws.guardduty.Detector("MyDetector", {
///     enable: true,
///     datasources: {
///         s3Logs: {
///             enable: true,
///         },
///         kubernetes: {
///             auditLogs: {
///                 enable: false,
///             },
///         },
///         malwareProtection: {
///             scanEc2InstanceWithFindings: {
///                 ebsVolumes: {
///                     enable: true,
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
/// my_detector = aws.guardduty.Detector("MyDetector",
///     enable=True,
///     datasources={
///         "s3_logs": {
///             "enable": True,
///         },
///         "kubernetes": {
///             "audit_logs": {
///                 "enable": False,
///             },
///         },
///         "malware_protection": {
///             "scan_ec2_instance_with_findings": {
///                 "ebs_volumes": {
///                     "enable": True,
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
///     var myDetector = new Aws.GuardDuty.Detector("MyDetector", new()
///     {
///         Enable = true,
///         Datasources = new Aws.GuardDuty.Inputs.DetectorDatasourcesArgs
///         {
///             S3Logs = new Aws.GuardDuty.Inputs.DetectorDatasourcesS3LogsArgs
///             {
///                 Enable = true,
///             },
///             Kubernetes = new Aws.GuardDuty.Inputs.DetectorDatasourcesKubernetesArgs
///             {
///                 AuditLogs = new Aws.GuardDuty.Inputs.DetectorDatasourcesKubernetesAuditLogsArgs
///                 {
///                     Enable = false,
///                 },
///             },
///             MalwareProtection = new Aws.GuardDuty.Inputs.DetectorDatasourcesMalwareProtectionArgs
///             {
///                 ScanEc2InstanceWithFindings = new Aws.GuardDuty.Inputs.DetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsArgs
///                 {
///                     EbsVolumes = new Aws.GuardDuty.Inputs.DetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesArgs
///                     {
///                         Enable = true,
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
/// 		_, err := guardduty.NewDetector(ctx, "MyDetector", &guardduty.DetectorArgs{
/// 			Enable: pulumi.Bool(true),
/// 			Datasources: &guardduty.DetectorDatasourcesArgs{
/// 				S3Logs: &guardduty.DetectorDatasourcesS3LogsArgs{
/// 					Enable: pulumi.Bool(true),
/// 				},
/// 				Kubernetes: &guardduty.DetectorDatasourcesKubernetesArgs{
/// 					AuditLogs: &guardduty.DetectorDatasourcesKubernetesAuditLogsArgs{
/// 						Enable: pulumi.Bool(false),
/// 					},
/// 				},
/// 				MalwareProtection: &guardduty.DetectorDatasourcesMalwareProtectionArgs{
/// 					ScanEc2InstanceWithFindings: &guardduty.DetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsArgs{
/// 						EbsVolumes: &guardduty.DetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesArgs{
/// 							Enable: pulumi.Bool(true),
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
/// import com.pulumi.aws.guardduty.inputs.DetectorDatasourcesArgs;
/// import com.pulumi.aws.guardduty.inputs.DetectorDatasourcesS3LogsArgs;
/// import com.pulumi.aws.guardduty.inputs.DetectorDatasourcesKubernetesArgs;
/// import com.pulumi.aws.guardduty.inputs.DetectorDatasourcesKubernetesAuditLogsArgs;
/// import com.pulumi.aws.guardduty.inputs.DetectorDatasourcesMalwareProtectionArgs;
/// import com.pulumi.aws.guardduty.inputs.DetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsArgs;
/// import com.pulumi.aws.guardduty.inputs.DetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesArgs;
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
///         var myDetector = new Detector("myDetector", DetectorArgs.builder()
///             .enable(true)
///             .datasources(DetectorDatasourcesArgs.builder()
///                 .s3Logs(DetectorDatasourcesS3LogsArgs.builder()
///                     .enable(true)
///                     .build())
///                 .kubernetes(DetectorDatasourcesKubernetesArgs.builder()
///                     .auditLogs(DetectorDatasourcesKubernetesAuditLogsArgs.builder()
///                         .enable(false)
///                         .build())
///                     .build())
///                 .malwareProtection(DetectorDatasourcesMalwareProtectionArgs.builder()
///                     .scanEc2InstanceWithFindings(DetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsArgs.builder()
///                         .ebsVolumes(DetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesArgs.builder()
///                             .enable(true)
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
///   myDetector:
///     type: aws:guardduty:Detector
///     name: MyDetector
///     properties:
///       enable: true
///       datasources:
///         s3Logs:
///           enable: true
///         kubernetes:
///           auditLogs:
///             enable: false
///         malwareProtection:
///           scanEc2InstanceWithFindings:
///             ebsVolumes:
///               enable: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty detectors using the detector ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/detector:Detector MyDetector 00b00fd5aecc0ab60a708659477e9617
/// ```
///
/// The ID of the detector can be retrieved via the [AWS CLI](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/guardduty/list-detectors.html) using `aws guardduty list-detectors`.
class Detector extends pulumi.CustomResource {
  /// The AWS account ID of the GuardDuty detector
  late final pulumi.Output<String> accountId;
  /// Amazon Resource Name (ARN) of the GuardDuty detector
  late final pulumi.Output<String> arn;
  /// Describes which data sources will be enabled for the detector. See Data Sources below for more details. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.DetectorFeature` resources.
  late final pulumi.Output<DetectorDatasources> datasources;
  /// Enable monitoring and feedback reporting. Setting to `false` is equivalent to "suspending" GuardDuty. Defaults to `true`.
  late final pulumi.Output<bool?> enable;
  /// Specifies the frequency of notifications sent for subsequent finding occurrences. If the detector is a GuardDuty member account, the value is determined by the GuardDuty primary account and cannot be modified, otherwise defaults to `SIX_HOURS`. For standalone and GuardDuty primary accounts, it must be configured in this provider to enable drift detection. Valid values for standalone and primary accounts: `FIFTEEN_MINUTES`, `ONE_HOUR`, `SIX_HOURS`. See [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings_cloudwatch.html#guardduty_findings_cloudwatch_notification_frequency) for more information.
  late final pulumi.Output<String> findingPublishingFrequency;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Detector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Detector]. {@macro pulumi_guardduty_detector_detector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Detector(
    String name, {
    DetectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/detector:Detector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.datasources = registerOutput<DetectorDatasources>('datasources');
    this.enable = registerOutput<bool?>('enable');
    this.findingPublishingFrequency = registerOutput<String>('findingPublishingFrequency');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Detector] resource's state with the given [name] and [id].
  static Detector get(
    String name,
    pulumi.Input<String> id, {
    DetectorState? state,
  }) {
    return Detector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Detector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/detector:Detector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.datasources = registerOutput<DetectorDatasources>('datasources');
    this.enable = registerOutput<bool?>('enable');
    this.findingPublishingFrequency = registerOutput<String>('findingPublishingFrequency');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
