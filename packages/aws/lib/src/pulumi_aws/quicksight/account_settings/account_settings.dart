import 'package:pulumi/pulumi.dart';
import '../account_settings_timeouts/account_settings_timeouts.dart';
import 'account_settings_args.dart';

/// Resource for managing an AWS QuickSight Account Settings.
///
/// > Deletion of this resource will not modify any settings, only remove the resource from state.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Account Settings using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/accountSettings:AccountSettings example "012345678901"
/// ```
class AccountSettings extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The default namespace for this Amazon Web Services account. Currently, the default is `default`.
  late final Output<String> defaultNamespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A boolean value that determines whether or not an Amazon QuickSight account can be deleted. If `true`, it does not allow the account to be deleted and results in an error message if a user tries to make a DeleteAccountSubscription request. If `false`, it will allow the account to be deleted.
  late final Output<bool> terminationProtectionEnabled;
  late final Output<AccountSettingsTimeouts?> timeouts;

  AccountSettings(
    String name, {
    AccountSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/accountSettings:AccountSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.defaultNamespace = registerOutput<String>('defaultNamespace');
    this.region = registerOutput<String>('region');
    this.terminationProtectionEnabled =
        registerOutput<bool>('terminationProtectionEnabled');
    this.timeouts = registerOutput<AccountSettingsTimeouts?>('timeouts');
  }
}
