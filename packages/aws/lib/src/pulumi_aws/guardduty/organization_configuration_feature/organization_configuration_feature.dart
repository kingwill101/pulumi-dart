import 'package:pulumi/pulumi.dart';
import '../organization_configuration_feature_additional_configuration/organization_configuration_feature_additional_configuration.dart';
import 'organization_configuration_feature_args.dart';

/// Provides a resource to manage a single Amazon GuardDuty [organization configuration feature](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-features-activation-model.html#guardduty-features).
///
/// > **NOTE:** Deleting this resource does not disable the organization configuration feature, the resource is simply removed from state instead.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.guardduty.Detector("example", {enable: true});
/// const eksRuntimeMonitoring = new aws.guardduty.OrganizationConfigurationFeature("eks_runtime_monitoring", {
/// detectorId: example.id,
/// name: "EKS_RUNTIME_MONITORING",
/// autoEnable: "ALL",
/// additionalConfigurations: [{
/// name: "EKS_ADDON_MANAGEMENT",
/// autoEnable: "NEW",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.guardduty.Detector("example", enable=True)
/// eks_runtime_monitoring = aws.guardduty.OrganizationConfigurationFeature("eks_runtime_monitoring",
/// detector_id=example.id,
/// name="EKS_RUNTIME_MONITORING",
/// auto_enable="ALL",
/// additional_configurations=[{
/// "name": "EKS_ADDON_MANAGEMENT",
/// "auto_enable": "NEW",
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
/// var eksRuntimeMonitoring = new Aws.GuardDuty.OrganizationConfigurationFeature("eks_runtime_monitoring", new()
/// {
/// DetectorId = example.Id,
/// Name = "EKS_RUNTIME_MONITORING",
/// AutoEnable = "ALL",
/// AdditionalConfigurations = new[]
/// {
/// new Aws.GuardDuty.Inputs.OrganizationConfigurationFeatureAdditionalConfigurationArgs
/// {
/// Name = "EKS_ADDON_MANAGEMENT",
/// AutoEnable = "NEW",
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
/// _, err = guardduty.NewOrganizationConfigurationFeature(ctx, "eks_runtime_monitoring", &guardduty.OrganizationConfigurationFeatureArgs{
/// DetectorId: example.ID(),
/// Name:       pulumi.String("EKS_RUNTIME_MONITORING"),
/// AutoEnable: pulumi.String("ALL"),
/// AdditionalConfigurations: guardduty.OrganizationConfigurationFeatureAdditionalConfigurationArray{
/// &guardduty.OrganizationConfigurationFeatureAdditionalConfigurationArgs{
/// Name:       pulumi.String("EKS_ADDON_MANAGEMENT"),
/// AutoEnable: pulumi.String("NEW"),
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
/// import com.pulumi.aws.guardduty.OrganizationConfigurationFeature;
/// import com.pulumi.aws.guardduty.OrganizationConfigurationFeatureArgs;
/// import com.pulumi.aws.guardduty.inputs.OrganizationConfigurationFeatureAdditionalConfigurationArgs;
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
/// var eksRuntimeMonitoring = new OrganizationConfigurationFeature("eksRuntimeMonitoring", OrganizationConfigurationFeatureArgs.builder()
/// .detectorId(example.id())
/// .name("EKS_RUNTIME_MONITORING")
/// .autoEnable("ALL")
/// .additionalConfigurations(OrganizationConfigurationFeatureAdditionalConfigurationArgs.builder()
/// .name("EKS_ADDON_MANAGEMENT")
/// .autoEnable("NEW")
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
/// eksRuntimeMonitoring:
/// type: aws:guardduty:OrganizationConfigurationFeature
/// name: eks_runtime_monitoring
/// properties:
/// detectorId: ${example.id}
/// name: EKS_RUNTIME_MONITORING
/// autoEnable: ALL
/// additionalConfigurations:
/// - name: EKS_ADDON_MANAGEMENT
/// autoEnable: NEW
/// ```
/// <!--End PulumiCodeChooser -->
class OrganizationConfigurationFeature extends CustomResource {
  /// Additional feature configuration block for features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  late final Output<
          List<OrganizationConfigurationFeatureAdditionalConfiguration>?>
      additionalConfigurations;

  /// The status of the feature that is configured for the member accounts within the organization. Valid values: `NEW`, `ALL`, `NONE`.
  late final Output<String> autoEnable;

  /// The ID of the detector that configures the delegated administrator.
  late final Output<String> detectorId;

  /// The name of the feature that will be configured for the organization. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationConfigurationFeature(
    String name, {
    OrganizationConfigurationFeatureArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/organizationConfigurationFeature:OrganizationConfigurationFeature',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalConfigurations = registerOutput<
            List<OrganizationConfigurationFeatureAdditionalConfiguration>?>(
        'additionalConfigurations');
    this.autoEnable = registerOutput<String>('autoEnable');
    this.detectorId = registerOutput<String>('detectorId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
