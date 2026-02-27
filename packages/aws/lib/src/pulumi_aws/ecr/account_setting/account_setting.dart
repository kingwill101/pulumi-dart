import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_setting_args.dart';

/// Provides a resource to manage AWS ECR account settings
///
/// ## Example Usage
///
/// ### Configuring Basic Scanning
///
///
///
/// ### Configuring Blob Mounting (Cross-Repository Layer Sharing)
///
///
///
/// ### Configuring Registry Policy Scope
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR Security Configurations using the account setting name. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/accountSetting:AccountSetting foo BASIC_SCAN_TYPE_VERSION
/// ```
class AccountSetting extends pulumi.CustomResource {
  /// Name of the account setting. One of: `BASIC_SCAN_TYPE_VERSION`, `BLOB_MOUNTING`, `REGISTRY_POLICY_SCOPE`.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Setting value that is specified. Valid values are:
  /// * If `name` is specified as `BASIC_SCAN_TYPE_VERSION`, one of: `AWS_NATIVE`, `CLAIR`.
  /// * If `name` is specified as `BLOB_MOUNTING`, one of: `ENABLED`, `DISABLED`.
  /// * If `name` is specified as `REGISTRY_POLICY_SCOPE`, one of: `V1`, `V2`.
  late final pulumi.Output<String> value;

  AccountSetting(
    String name, {
    AccountSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/accountSetting:AccountSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.value = registerOutput<String>('value');
  }
}
