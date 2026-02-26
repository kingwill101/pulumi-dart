import 'package:pulumi/pulumi.dart';
import '../detector_feature_additional_configuration/detector_feature_additional_configuration.dart';
import 'detector_feature_args.dart';

/// Provides a resource to manage a single Amazon GuardDuty [detector feature](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-features-activation-model.html#guardduty-features).
///
/// > **NOTE:** Deleting this resource does not disable the detector feature, the resource in simply removed from state instead.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.guardduty.Detector("example", {enable: true});
/// const s3Protection = new aws.guardduty.DetectorFeature("s3_protection", {
/// detectorId: example.id,
/// name: "S3_DATA_EVENTS",
/// status: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.guardduty.Detector("example", enable=True)
/// s3_protection = aws.guardduty.DetectorFeature("s3_protection",
/// detector_id=example.id,
/// name="S3_DATA_EVENTS",
/// status="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.GuardDuty.Detector("example", new()
/// {
/// Enable = true,
/// });
///
/// var s3Protection = new Aws.GuardDuty.DetectorFeature("s3_protection", new()
/// {
/// DetectorId = example.Id,
/// Name = "S3_DATA_EVENTS",
/// Status = "ENABLED",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := guardduty.NewDetector(ctx, "example", &guardduty.DetectorArgs{
/// Enable: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = guardduty.NewDetectorFeature(ctx, "s3_protection", &guardduty.DetectorFeatureArgs{
/// DetectorId: example.ID(),
/// Name:       pulumi.String("S3_DATA_EVENTS"),
/// Status:     pulumi.String("ENABLED"),
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
/// import com.pulumi.aws.guardduty.Detector;
/// import com.pulumi.aws.guardduty.DetectorArgs;
/// import com.pulumi.aws.guardduty.DetectorFeature;
/// import com.pulumi.aws.guardduty.DetectorFeatureArgs;
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
/// var example = new Detector("example", DetectorArgs.builder()
/// .enable(true)
/// .build());
///
/// var s3Protection = new DetectorFeature("s3Protection", DetectorFeatureArgs.builder()
/// .detectorId(example.id())
/// .name("S3_DATA_EVENTS")
/// .status("ENABLED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:guardduty:Detector
/// properties:
/// enable: true
/// s3Protection:
/// type: aws:guardduty:DetectorFeature
/// name: s3_protection
/// properties:
/// detectorId: ${example.id}
/// name: S3_DATA_EVENTS
/// status: ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Extended Threat Detection for EKS
///
/// To enable GuardDuty [Extended Threat Detection](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-extended-threat-detection.html) for EKS, you need at least one of these features enabled: [EKS Protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html) or [Runtime Monitoring](https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring-configuration.html). For maximum detection coverage, enabling both is recommended to enhance detection capabilities.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.guardduty.Detector("example", {enable: true});
/// const eksProtection = new aws.guardduty.DetectorFeature("eks_protection", {
/// detectorId: example.id,
/// name: "EKS_AUDIT_LOGS",
/// status: "ENABLED",
/// });
/// const eksRuntimeMonitoring = new aws.guardduty.DetectorFeature("eks_runtime_monitoring", {
/// detectorId: example.id,
/// name: "EKS_RUNTIME_MONITORING",
/// status: "ENABLED",
/// additionalConfigurations: [{
/// name: "EKS_ADDON_MANAGEMENT",
/// status: "ENABLED",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.guardduty.Detector("example", enable=True)
/// eks_protection = aws.guardduty.DetectorFeature("eks_protection",
/// detector_id=example.id,
/// name="EKS_AUDIT_LOGS",
/// status="ENABLED")
/// eks_runtime_monitoring = aws.guardduty.DetectorFeature("eks_runtime_monitoring",
/// detector_id=example.id,
/// name="EKS_RUNTIME_MONITORING",
/// status="ENABLED",
/// additional_configurations=[{
/// "name": "EKS_ADDON_MANAGEMENT",
/// "status": "ENABLED",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.GuardDuty.Detector("example", new()
/// {
/// Enable = true,
/// });
///
/// var eksProtection = new Aws.GuardDuty.DetectorFeature("eks_protection", new()
/// {
/// DetectorId = example.Id,
/// Name = "EKS_AUDIT_LOGS",
/// Status = "ENABLED",
/// });
///
/// var eksRuntimeMonitoring = new Aws.GuardDuty.DetectorFeature("eks_runtime_monitoring", new()
/// {
/// DetectorId = example.Id,
/// Name = "EKS_RUNTIME_MONITORING",
/// Status = "ENABLED",
/// AdditionalConfigurations = new[]
/// {
/// new Aws.GuardDuty.Inputs.DetectorFeatureAdditionalConfigurationArgs
/// {
/// Name = "EKS_ADDON_MANAGEMENT",
/// Status = "ENABLED",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := guardduty.NewDetector(ctx, "example", &guardduty.DetectorArgs{
/// Enable: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = guardduty.NewDetectorFeature(ctx, "eks_protection", &guardduty.DetectorFeatureArgs{
/// DetectorId: example.ID(),
/// Name:       pulumi.String("EKS_AUDIT_LOGS"),
/// Status:     pulumi.String("ENABLED"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = guardduty.NewDetectorFeature(ctx, "eks_runtime_monitoring", &guardduty.DetectorFeatureArgs{
/// DetectorId: example.ID(),
/// Name:       pulumi.String("EKS_RUNTIME_MONITORING"),
/// Status:     pulumi.String("ENABLED"),
/// AdditionalConfigurations: guardduty.DetectorFeatureAdditionalConfigurationArray{
/// &guardduty.DetectorFeatureAdditionalConfigurationArgs{
/// Name:   pulumi.String("EKS_ADDON_MANAGEMENT"),
/// Status: pulumi.String("ENABLED"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Detector("example", DetectorArgs.builder()
/// .enable(true)
/// .build());
///
/// var eksProtection = new DetectorFeature("eksProtection", DetectorFeatureArgs.builder()
/// .detectorId(example.id())
/// .name("EKS_AUDIT_LOGS")
/// .status("ENABLED")
/// .build());
///
/// var eksRuntimeMonitoring = new DetectorFeature("eksRuntimeMonitoring", DetectorFeatureArgs.builder()
/// .detectorId(example.id())
/// .name("EKS_RUNTIME_MONITORING")
/// .status("ENABLED")
/// .additionalConfigurations(DetectorFeatureAdditionalConfigurationArgs.builder()
/// .name("EKS_ADDON_MANAGEMENT")
/// .status("ENABLED")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:guardduty:Detector
/// properties:
/// enable: true
/// eksProtection:
/// type: aws:guardduty:DetectorFeature
/// name: eks_protection
/// properties:
/// detectorId: ${example.id}
/// name: EKS_AUDIT_LOGS
/// status: ENABLED
/// eksRuntimeMonitoring:
/// type: aws:guardduty:DetectorFeature
/// name: eks_runtime_monitoring
/// properties:
/// detectorId: ${example.id}
/// name: EKS_RUNTIME_MONITORING
/// status: ENABLED
/// additionalConfigurations:
/// - name: EKS_ADDON_MANAGEMENT
/// status: ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
class DetectorFeature extends CustomResource {
  /// Additional feature configuration block for features`EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  late final Output<List<DetectorFeatureAdditionalConfiguration>?>
      additionalConfigurations;

  /// Amazon GuardDuty detector ID.
  late final Output<String> detectorId;

  /// The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  late final Output<String> status;

  DetectorFeature(
    String name, {
    DetectorFeatureArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/detectorFeature:DetectorFeature',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalConfigurations =
        Output.createUnknown<List<DetectorFeatureAdditionalConfiguration>?>();
    this.detectorId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}
