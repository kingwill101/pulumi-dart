import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_preference_args.dart';

/// ## Import
///
/// RAM Security Preference can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/securityPreference:SecurityPreference example
/// ```
class SecurityPreference extends pulumi.CustomResource {
  /// Whether to allow RAM users to manage their own passwords. Value:
  /// - true (default): Allowed.
  /// - false: not allowed.
  late final pulumi.Output<bool> allowUserToChangePassword;
  /// Whether to allow RAM users to log on using a passkey. Value:
  /// - true (default): Allowed.
  /// - false: not allowed.
  late final pulumi.Output<bool> allowUserToLoginWithPasskey;
  /// Whether to allow RAM users to manage their own access keys. Value:
  /// - true: Allow.
  /// - false (default): Not allowed.
  late final pulumi.Output<bool> allowUserToManageAccessKeys;
  /// Whether to allow RAM users to manage multi-factor authentication devices. Value:
  /// - true (default): Allowed.
  /// - false: not allowed.
  late final pulumi.Output<bool> allowUserToManageMfaDevices;
  /// Whether to allow RAM users to independently manage the binding and unbinding of personal DingTalk. Value:
  /// - true (default): Allowed.
  /// - false: not allowed.
  late final pulumi.Output<bool> allowUserToManagePersonalDingTalk;
  /// Whether to save the verification status of a RAM user after logging in using multi-factor authentication. The validity period is 7 days. Value:
  /// - true: Allow.
  /// - false (default): Not allowed.
  late final pulumi.Output<bool> enableSaveMfaTicket;
  /// Field `enforce_mfa_for_login` has been deprecated from provider version 1.248.0. New field `mfa_operation_for_login` instead.
  /// Specifies whether MFA is required for all RAM users when they log on to the Alibaba Cloud Management Console by using usernames and passwords. Valid values: `true` and `false`
  late final pulumi.Output<bool> enforceMfaForLogin;
  /// The login mask. The logon mask determines which IP addresses are affected by the logon console, including password logon and single sign-on (SSO), but API calls made using the access key are not affected.
  /// - If the mask is specified, RAM users can only log on from the specified IP address.
  /// - If you do not specify any mask, the login console function will apply to the entire network.
  ///
  /// > NOTE: When you need to configure multiple login masks, use a semicolon `;` to separate them, for example: `192.168.0.0/16;10.0.0.0/8`.
  ///
  /// Configure a maximum of 40 logon masks, with a total length of 512 characters.
  late final pulumi.Output<String?> loginNetworkMasks;
  /// The validity period of the logon session of RAM users.
  /// Valid values: 1 to 24. Unit: hours.
  /// Default value: 6.
  late final pulumi.Output<int> loginSessionDuration;
  /// The maximum idle time (in days) of an access key for a RAM user. After the access key is not used for this period, it is automatically disabled on the next day. Possible values are `90`, `180`, `365`, `730`. Defaults to `730`.
  late final pulumi.Output<int> maxIdleDaysForAccessKeys;
  /// The maximum idle time (days) of the RAM user. If the RAM user has the console logon enabled, the console logon will be automatically disabled on the next day after the continuous logon time (excluding SSO logon time) reaches this time. Possible values are `90`, `180`, `365`, `730`. Defaults to `730`.
  late final pulumi.Output<int> maxIdleDaysForUsers;
  /// MFA must be used during logon (replace the original EnforceMFAForLogin parameter, the original parameter is still valid, we recommend that you update it to a new parameter). Value:
  /// - mandatory: mandatory for all RAM users. The original value of EnforceMFAForLogin is true.
  /// - independent (default): depends on the independent configuration of each RAM user. The original value of EnforceMFAForLogin is false.
  /// - adaptive: Used only during abnormal login.
  late final pulumi.Output<String> mfaOperationForLogin;
  /// Whether MFA is verified twice during abnormal logon. Value:
  /// - autonomous (default): Skip, do not force binding.
  /// - enforceVerify: Force binding validation.
  late final pulumi.Output<String> operationForRiskLogin;
  /// Means of multi-factor authentication. Value:
  /// - sms: secure phone.
  /// - email: Secure mailbox.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<List<String>?> verificationTypes;

  /// Creates a new [SecurityPreference].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPreference]. {@macro pulumi_ram_security_preference_security_preference_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPreference(
    String name, {
    SecurityPreferenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/securityPreference:SecurityPreference',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowUserToChangePassword = registerOutput<bool>('allowUserToChangePassword');
    this.allowUserToLoginWithPasskey = registerOutput<bool>('allowUserToLoginWithPasskey');
    this.allowUserToManageAccessKeys = registerOutput<bool>('allowUserToManageAccessKeys');
    this.allowUserToManageMfaDevices = registerOutput<bool>('allowUserToManageMfaDevices');
    this.allowUserToManagePersonalDingTalk = registerOutput<bool>('allowUserToManagePersonalDingTalk');
    this.enableSaveMfaTicket = registerOutput<bool>('enableSaveMfaTicket');
    this.enforceMfaForLogin = registerOutput<bool>('enforceMfaForLogin');
    this.loginNetworkMasks = registerOutput<String?>('loginNetworkMasks');
    this.loginSessionDuration = registerOutput<int>('loginSessionDuration');
    this.maxIdleDaysForAccessKeys = registerOutput<int>('maxIdleDaysForAccessKeys');
    this.maxIdleDaysForUsers = registerOutput<int>('maxIdleDaysForUsers');
    this.mfaOperationForLogin = registerOutput<String>('mfaOperationForLogin');
    this.operationForRiskLogin = registerOutput<String>('operationForRiskLogin');
    this.verificationTypes = registerOutput<List<String>?>('verificationTypes');
  }
}
