import 'package:pulumi/pulumi.dart';
import 'default_patch_baseline_args.dart';

/// Resource for registering an AWS Systems Manager Default Patch Baseline.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using the patch baseline ARN:
///
///
/// Using the operating system value:
///
///
/// **Using `pulumi import` to import** the Systems Manager Default Patch Baseline using the patch baseline ID, patch baseline ARN, or the operating system value. For example:
///
/// Using the patch baseline ID:
///
/// ```sh
/// $ pulumi import aws:ssm/defaultPatchBaseline:DefaultPatchBaseline example pb-1234567890abcdef1
/// ```
///
/// Using the patch baseline ARN:
///
/// ```sh
/// $ pulumi import aws:ssm/defaultPatchBaseline:DefaultPatchBaseline example arn:aws:ssm:us-west-2:123456789012:patchbaseline/pb-1234567890abcdef1
/// ```
///
/// Using the operating system value:
///
/// ```sh
/// $ pulumi import aws:ssm/defaultPatchBaseline:DefaultPatchBaseline example CENTOS
/// ```
class DefaultPatchBaseline extends CustomResource {
  /// ID of the patch baseline.
  /// Can be an ID or an ARN.
  /// When specifying an AWS-provided patch baseline, must be the ARN.
  late final Output<String> baselineId;

  /// The operating system the patch baseline applies to.
  /// Valid values are
  /// `AMAZON_LINUX`,
  /// `AMAZON_LINUX_2`,
  /// `AMAZON_LINUX_2022`,
  /// `AMAZON_LINUX_2023`,
  /// `CENTOS`,
  /// `DEBIAN`,
  /// `MACOS`,
  /// `ORACLE_LINUX`,
  /// `RASPBIAN`,
  /// `REDHAT_ENTERPRISE_LINUX`,
  /// `ROCKY_LINUX`,
  /// `SUSE`,
  /// `UBUNTU`, and
  /// `WINDOWS`.
  late final Output<String> operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DefaultPatchBaseline(
    String name, {
    DefaultPatchBaselineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/defaultPatchBaseline:DefaultPatchBaseline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baselineId = registerOutput<String>('baselineId');
    this.operatingSystem = registerOutput<String>('operatingSystem');
    this.region = registerOutput<String>('region');
  }
}
