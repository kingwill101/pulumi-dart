import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_detector_feature_additional_configuration.dart';
import 'member_detector_feature_args.dart';

/// Provides a resource to manage a single Amazon GuardDuty [detector feature](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-features-activation-model.html#guardduty-features) for a member account.
///
/// > **NOTE:** Deleting this resource does not disable the detector feature in the member account, the resource in simply removed from state instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.guardduty.Detector("example", {enable: true});
/// const runtimeMonitoring = new aws.guardduty.MemberDetectorFeature("runtime_monitoring", {
///     detectorId: example.id,
///     accountId: "123456789012",
///     name: "S3_DATA_EVENTS",
///     status: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.guardduty.Detector("example", enable=True)
/// runtime_monitoring = aws.guardduty.MemberDetectorFeature("runtime_monitoring",
///     detector_id=example.id,
///     account_id="123456789012",
///     name="S3_DATA_EVENTS",
///     status="ENABLED")
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
///     var runtimeMonitoring = new Aws.GuardDuty.MemberDetectorFeature("runtime_monitoring", new()
///     {
///         DetectorId = example.Id,
///         AccountId = "123456789012",
///         Name = "S3_DATA_EVENTS",
///         Status = "ENABLED",
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
/// 		_, err = guardduty.NewMemberDetectorFeature(ctx, "runtime_monitoring", &guardduty.MemberDetectorFeatureArgs{
/// 			DetectorId: example.ID(),
/// 			AccountId:  pulumi.String("123456789012"),
/// 			Name:       pulumi.String("S3_DATA_EVENTS"),
/// 			Status:     pulumi.String("ENABLED"),
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
/// import com.pulumi.aws.guardduty.MemberDetectorFeature;
/// import com.pulumi.aws.guardduty.MemberDetectorFeatureArgs;
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
///         var runtimeMonitoring = new MemberDetectorFeature("runtimeMonitoring", MemberDetectorFeatureArgs.builder()
///             .detectorId(example.id())
///             .accountId("123456789012")
///             .name("S3_DATA_EVENTS")
///             .status("ENABLED")
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
///   runtimeMonitoring:
///     type: aws:guardduty:MemberDetectorFeature
///     name: runtime_monitoring
///     properties:
///       detectorId: ${example.id}
///       accountId: '123456789012'
///       name: S3_DATA_EVENTS
///       status: ENABLED
/// ```
///
///
/// ## Extended Threat Detection for EKS
///
/// To enable GuardDuty [Extended Threat Detection](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-extended-threat-detection.html) for EKS, you need at least one of these features enabled: [EKS Protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html) or [Runtime Monitoring](https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring-configuration.html). For maximum detection coverage, enabling both is recommended to enhance detection capabilities.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.guardduty.Detector("example", {enable: true});
/// const eksProtection = new aws.guardduty.DetectorFeature("eks_protection", {
///     detectorId: example.id,
///     accountId: "123456789012",
///     name: "EKS_AUDIT_LOGS",
///     status: "ENABLED",
/// });
/// const eksRuntimeMonitoring = new aws.guardduty.DetectorFeature("eks_runtime_monitoring", {
///     detectorId: example.id,
///     accountId: "123456789012",
///     name: "EKS_RUNTIME_MONITORING",
///     status: "ENABLED",
///     additionalConfigurations: [{
///         name: "EKS_ADDON_MANAGEMENT",
///         status: "ENABLED",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.guardduty.Detector("example", enable=True)
/// eks_protection = aws.guardduty.DetectorFeature("eks_protection",
///     detector_id=example.id,
///     account_id="123456789012",
///     name="EKS_AUDIT_LOGS",
///     status="ENABLED")
/// eks_runtime_monitoring = aws.guardduty.DetectorFeature("eks_runtime_monitoring",
///     detector_id=example.id,
///     account_id="123456789012",
///     name="EKS_RUNTIME_MONITORING",
///     status="ENABLED",
///     additional_configurations=[{
///         "name": "EKS_ADDON_MANAGEMENT",
///         "status": "ENABLED",
///     }])
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
///     var eksProtection = new Aws.GuardDuty.DetectorFeature("eks_protection", new()
///     {
///         DetectorId = example.Id,
///         AccountId = "123456789012",
///         Name = "EKS_AUDIT_LOGS",
///         Status = "ENABLED",
///     });
///
///     var eksRuntimeMonitoring = new Aws.GuardDuty.DetectorFeature("eks_runtime_monitoring", new()
///     {
///         DetectorId = example.Id,
///         AccountId = "123456789012",
///         Name = "EKS_RUNTIME_MONITORING",
///         Status = "ENABLED",
///         AdditionalConfigurations = new[]
///         {
///             new Aws.GuardDuty.Inputs.DetectorFeatureAdditionalConfigurationArgs
///             {
///                 Name = "EKS_ADDON_MANAGEMENT",
///                 Status = "ENABLED",
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
/// 		_, err = guardduty.NewDetectorFeature(ctx, "eks_protection", &guardduty.DetectorFeatureArgs{
/// 			DetectorId: example.ID(),
/// 			AccountId:  "123456789012",
/// 			Name:       pulumi.String("EKS_AUDIT_LOGS"),
/// 			Status:     pulumi.String("ENABLED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = guardduty.NewDetectorFeature(ctx, "eks_runtime_monitoring", &guardduty.DetectorFeatureArgs{
/// 			DetectorId: example.ID(),
/// 			AccountId:  "123456789012",
/// 			Name:       pulumi.String("EKS_RUNTIME_MONITORING"),
/// 			Status:     pulumi.String("ENABLED"),
/// 			AdditionalConfigurations: guardduty.DetectorFeatureAdditionalConfigurationArray{
/// 				&guardduty.DetectorFeatureAdditionalConfigurationArgs{
/// 					Name:   pulumi.String("EKS_ADDON_MANAGEMENT"),
/// 					Status: pulumi.String("ENABLED"),
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
/// import com.pulumi.aws.guardduty.DetectorFeature;
/// import com.pulumi.aws.guardduty.DetectorFeatureArgs;
/// import com.pulumi.aws.guardduty.inputs.DetectorFeatureAdditionalConfigurationArgs;
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
///         var eksProtection = new DetectorFeature("eksProtection", DetectorFeatureArgs.builder()
///             .detectorId(example.id())
///             .accountId("123456789012")
///             .name("EKS_AUDIT_LOGS")
///             .status("ENABLED")
///             .build());
///
///         var eksRuntimeMonitoring = new DetectorFeature("eksRuntimeMonitoring", DetectorFeatureArgs.builder()
///             .detectorId(example.id())
///             .accountId("123456789012")
///             .name("EKS_RUNTIME_MONITORING")
///             .status("ENABLED")
///             .additionalConfigurations(DetectorFeatureAdditionalConfigurationArgs.builder()
///                 .name("EKS_ADDON_MANAGEMENT")
///                 .status("ENABLED")
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
///   eksProtection:
///     type: aws:guardduty:DetectorFeature
///     name: eks_protection
///     properties:
///       detectorId: ${example.id}
///       accountId: '123456789012'
///       name: EKS_AUDIT_LOGS
///       status: ENABLED
///   eksRuntimeMonitoring:
///     type: aws:guardduty:DetectorFeature
///     name: eks_runtime_monitoring
///     properties:
///       detectorId: ${example.id}
///       accountId: '123456789012'
///       name: EKS_RUNTIME_MONITORING
///       status: ENABLED
///       additionalConfigurations:
///         - name: EKS_ADDON_MANAGEMENT
///           status: ENABLED
/// ```
class MemberDetectorFeature extends pulumi.CustomResource {
  /// Member account ID to be updated.
  late final pulumi.Output<String> accountId;

  /// Additional feature configuration block. See below.
  late final pulumi.Output<List<MemberDetectorFeatureAdditionalConfiguration>?>
  additionalConfigurations;

  /// Amazon GuardDuty detector ID.
  late final pulumi.Output<String> detectorId;

  /// The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`,`RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> status;

  /// Creates a new [MemberDetectorFeature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MemberDetectorFeature]. {@macro pulumi_guardduty_member_detector_feature_member_detector_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MemberDetectorFeature(
    String name, {
    MemberDetectorFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:guardduty/memberDetectorFeature:MemberDetectorFeature',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accountId = registerOutput<String>('accountId');
    this.additionalConfigurations =
        registerOutput<List<MemberDetectorFeatureAdditionalConfiguration>?>(
          'additionalConfigurations',
        );
    this.detectorId = registerOutput<String>('detectorId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
