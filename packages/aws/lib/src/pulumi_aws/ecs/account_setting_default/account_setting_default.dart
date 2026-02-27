import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_setting_default_args.dart';

/// Provides an ECS default account setting for a specific ECS Resource name within a specific region. More information can be found on the [ECS Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html).
///
/// > **NOTE:** The AWS API does not delete this resource. When you run `destroy`, the provider will attempt to disable the setting.
///
/// > **NOTE:** Your AWS account may not support disabling `containerInstanceLongArnFormat`, `serviceLongArnFormat`, and `taskLongArnFormat`. If your account does not support disabling these, "destroying" this resource will not disable the setting nor cause a provider error. However, the AWS Provider will log an AWS error: `InvalidParameterException: You can no longer disable Long Arn settings`.
///
/// ## Example Usage
///
/// ### Enable the long task ARN format
///
///
///
/// ### Set the default log driver mode to non-blocking
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECS Account Setting defaults using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/accountSettingDefault:AccountSettingDefault example taskLongArnFormat
/// ```
class AccountSettingDefault extends pulumi.CustomResource {
  /// Name of the account setting to set.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// State of the setting.
  late final pulumi.Output<String> value;

  AccountSettingDefault(
    String name, {
    AccountSettingDefaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/accountSettingDefault:AccountSettingDefault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.principalArn = registerOutput<String>('principalArn');
    this.region = registerOutput<String>('region');
    this.value = registerOutput<String>('value');
  }
}
