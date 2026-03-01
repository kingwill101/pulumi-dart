// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityPreference resources.
class SecurityPreferenceState {
  /// Whether to allow RAM users to manage their own passwords. Value:
  /// - true (default): Allowed.
  /// - false: not allowed.
  final pulumi.Input<bool>? allowUserToChangePassword;
  /// Whether to allow RAM users to log on using a passkey. Value:
  /// - true (default): Allowed.
  /// - false: not allowed.
  final pulumi.Input<bool>? allowUserToLoginWithPasskey;
  /// Whether to allow RAM users to manage their own access keys. Value:
  /// - true: Allow.
  /// - false (default): Not allowed.
  final pulumi.Input<bool>? allowUserToManageAccessKeys;
  /// Whether to allow RAM users to manage multi-factor authentication devices. Value:
  /// - true (default): Allowed.
  /// - false: not allowed.
  final pulumi.Input<bool>? allowUserToManageMfaDevices;
  /// Whether to allow RAM users to independently manage the binding and unbinding of personal DingTalk. Value:
  /// - true (default): Allowed.
  /// - false: not allowed.
  final pulumi.Input<bool>? allowUserToManagePersonalDingTalk;
  /// Whether to save the verification status of a RAM user after logging in using multi-factor authentication. The validity period is 7 days. Value:
  /// - true: Allow.
  /// - false (default): Not allowed.
  final pulumi.Input<bool>? enableSaveMfaTicket;
  /// Field `enforce_mfa_for_login` has been deprecated from provider version 1.248.0. New field `mfa_operation_for_login` instead.
  /// Specifies whether MFA is required for all RAM users when they log on to the Alibaba Cloud Management Console by using usernames and passwords. Valid values: `true` and `false`
  final pulumi.Input<bool>? enforceMfaForLogin;
  /// The login mask. The logon mask determines which IP addresses are affected by the logon console, including password logon and single sign-on (SSO), but API calls made using the access key are not affected.
  /// - If the mask is specified, RAM users can only log on from the specified IP address.
  /// - If you do not specify any mask, the login console function will apply to the entire network.
  ///
  /// > NOTE: When you need to configure multiple login masks, use a semicolon `;` to separate them, for example: `192.168.0.0/16;10.0.0.0/8`.
  ///
  /// Configure a maximum of 40 logon masks, with a total length of 512 characters.
  final pulumi.Input<String>? loginNetworkMasks;
  /// The validity period of the logon session of RAM users.
  /// Valid values: 1 to 24. Unit: hours.
  /// Default value: 6.
  final pulumi.Input<int>? loginSessionDuration;
  /// The maximum idle time (in days) of an access key for a RAM user. After the access key is not used for this period, it is automatically disabled on the next day. Possible values are `90`, `180`, `365`, `730`. Defaults to `730`.
  final pulumi.Input<int>? maxIdleDaysForAccessKeys;
  /// The maximum idle time (days) of the RAM user. If the RAM user has the console logon enabled, the console logon will be automatically disabled on the next day after the continuous logon time (excluding SSO logon time) reaches this time. Possible values are `90`, `180`, `365`, `730`. Defaults to `730`.
  final pulumi.Input<int>? maxIdleDaysForUsers;
  /// MFA must be used during logon (replace the original EnforceMFAForLogin parameter, the original parameter is still valid, we recommend that you update it to a new parameter). Value:
  /// - mandatory: mandatory for all RAM users. The original value of EnforceMFAForLogin is true.
  /// - independent (default): depends on the independent configuration of each RAM user. The original value of EnforceMFAForLogin is false.
  /// - adaptive: Used only during abnormal login.
  final pulumi.Input<String>? mfaOperationForLogin;
  /// Whether MFA is verified twice during abnormal logon. Value:
  /// - autonomous (default): Skip, do not force binding.
  /// - enforceVerify: Force binding validation.
  final pulumi.Input<String>? operationForRiskLogin;
  /// Means of multi-factor authentication. Value:
  /// - sms: secure phone.
  /// - email: Secure mailbox.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<List<String>>? verificationTypes;

  /// Creates a new [SecurityPreferenceState].
  /// [allowUserToChangePassword] Whether to allow RAM users to manage their own passwords. Value:
  /// [allowUserToLoginWithPasskey] Whether to allow RAM users to log on using a passkey. Value:
  /// [allowUserToManageAccessKeys] Whether to allow RAM users to manage their own access keys. Value:
  /// [allowUserToManageMfaDevices] Whether to allow RAM users to manage multi-factor authentication devices. Value:
  /// [allowUserToManagePersonalDingTalk] Whether to allow RAM users to independently manage the binding and unbinding of personal DingTalk. Value:
  /// [enableSaveMfaTicket] Whether to save the verification status of a RAM user after logging in using multi-factor authentication. The validity period is 7 days. Value:
  /// [enforceMfaForLogin] Field `enforce_mfa_for_login` has been deprecated from provider version 1.248.0. New field `mfa_operation_for_login` instead.
  /// [loginNetworkMasks] The login mask. The logon mask determines which IP addresses are affected by the logon console, including password logon and single sign-on (SSO), but API calls made using the access key are not affected.
  /// [loginSessionDuration] The validity period of the logon session of RAM users.
  /// [maxIdleDaysForAccessKeys] The maximum idle time (in days) of an access key for a RAM user. After the access key is not used for this period, it is automatically disabled on the next day. Possible values are `90`, `180`, `365`, `730`. Defaults to `730`.
  /// [maxIdleDaysForUsers] The maximum idle time (days) of the RAM user. If the RAM user has the console logon enabled, the console logon will be automatically disabled on the next day after the continuous logon time (excluding SSO logon time) reaches this time. Possible values are `90`, `180`, `365`, `730`. Defaults to `730`.
  /// [mfaOperationForLogin] MFA must be used during logon (replace the original EnforceMFAForLogin parameter, the original parameter is still valid, we recommend that you update it to a new parameter). Value:
  /// [operationForRiskLogin] Whether MFA is verified twice during abnormal logon. Value:
  /// [verificationTypes] Means of multi-factor authentication. Value:
  SecurityPreferenceState({
    pulumi.Output<bool>? allowUserToChangePassword,
    pulumi.Output<bool>? allowUserToLoginWithPasskey,
    pulumi.Output<bool>? allowUserToManageAccessKeys,
    pulumi.Output<bool>? allowUserToManageMfaDevices,
    pulumi.Output<bool>? allowUserToManagePersonalDingTalk,
    pulumi.Output<bool>? enableSaveMfaTicket,
    pulumi.Output<bool>? enforceMfaForLogin,
    pulumi.Output<String>? loginNetworkMasks,
    pulumi.Output<int>? loginSessionDuration,
    pulumi.Output<int>? maxIdleDaysForAccessKeys,
    pulumi.Output<int>? maxIdleDaysForUsers,
    pulumi.Output<String>? mfaOperationForLogin,
    pulumi.Output<String>? operationForRiskLogin,
    pulumi.Output<List<String>>? verificationTypes,
  }) :
      allowUserToChangePassword = pulumi.Input.asOptionalInput<bool>(allowUserToChangePassword),
      allowUserToLoginWithPasskey = pulumi.Input.asOptionalInput<bool>(allowUserToLoginWithPasskey),
      allowUserToManageAccessKeys = pulumi.Input.asOptionalInput<bool>(allowUserToManageAccessKeys),
      allowUserToManageMfaDevices = pulumi.Input.asOptionalInput<bool>(allowUserToManageMfaDevices),
      allowUserToManagePersonalDingTalk = pulumi.Input.asOptionalInput<bool>(allowUserToManagePersonalDingTalk),
      enableSaveMfaTicket = pulumi.Input.asOptionalInput<bool>(enableSaveMfaTicket),
      enforceMfaForLogin = pulumi.Input.asOptionalInput<bool>(enforceMfaForLogin),
      loginNetworkMasks = pulumi.Input.asOptionalInput<String>(loginNetworkMasks),
      loginSessionDuration = pulumi.Input.asOptionalInput<int>(loginSessionDuration),
      maxIdleDaysForAccessKeys = pulumi.Input.asOptionalInput<int>(maxIdleDaysForAccessKeys),
      maxIdleDaysForUsers = pulumi.Input.asOptionalInput<int>(maxIdleDaysForUsers),
      mfaOperationForLogin = pulumi.Input.asOptionalInput<String>(mfaOperationForLogin),
      operationForRiskLogin = pulumi.Input.asOptionalInput<String>(operationForRiskLogin),
      verificationTypes = pulumi.Input.asOptionalInput<List<String>>(verificationTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUserToChangePassword': ?allowUserToChangePassword,
      'allowUserToLoginWithPasskey': ?allowUserToLoginWithPasskey,
      'allowUserToManageAccessKeys': ?allowUserToManageAccessKeys,
      'allowUserToManageMfaDevices': ?allowUserToManageMfaDevices,
      'allowUserToManagePersonalDingTalk': ?allowUserToManagePersonalDingTalk,
      'enableSaveMfaTicket': ?enableSaveMfaTicket,
      'enforceMfaForLogin': ?enforceMfaForLogin,
      'loginNetworkMasks': ?loginNetworkMasks,
      'loginSessionDuration': ?loginSessionDuration,
      'maxIdleDaysForAccessKeys': ?maxIdleDaysForAccessKeys,
      'maxIdleDaysForUsers': ?maxIdleDaysForUsers,
      'mfaOperationForLogin': ?mfaOperationForLogin,
      'operationForRiskLogin': ?operationForRiskLogin,
      'verificationTypes': ?verificationTypes,
    };
  }

  factory SecurityPreferenceState.fromMap(Map<String, dynamic> map) {
    return SecurityPreferenceState(
      allowUserToChangePassword: map['allowUserToChangePassword'] == null ? null : pulumi.Output.create<bool>(map['allowUserToChangePassword'] as bool),
      allowUserToLoginWithPasskey: map['allowUserToLoginWithPasskey'] == null ? null : pulumi.Output.create<bool>(map['allowUserToLoginWithPasskey'] as bool),
      allowUserToManageAccessKeys: map['allowUserToManageAccessKeys'] == null ? null : pulumi.Output.create<bool>(map['allowUserToManageAccessKeys'] as bool),
      allowUserToManageMfaDevices: map['allowUserToManageMfaDevices'] == null ? null : pulumi.Output.create<bool>(map['allowUserToManageMfaDevices'] as bool),
      allowUserToManagePersonalDingTalk: map['allowUserToManagePersonalDingTalk'] == null ? null : pulumi.Output.create<bool>(map['allowUserToManagePersonalDingTalk'] as bool),
      enableSaveMfaTicket: map['enableSaveMfaTicket'] == null ? null : pulumi.Output.create<bool>(map['enableSaveMfaTicket'] as bool),
      enforceMfaForLogin: map['enforceMfaForLogin'] == null ? null : pulumi.Output.create<bool>(map['enforceMfaForLogin'] as bool),
      loginNetworkMasks: map['loginNetworkMasks'] == null ? null : pulumi.Output.create<String>(map['loginNetworkMasks'] as String),
      loginSessionDuration: map['loginSessionDuration'] == null ? null : pulumi.Output.create<int>(map['loginSessionDuration'] as int),
      maxIdleDaysForAccessKeys: map['maxIdleDaysForAccessKeys'] == null ? null : pulumi.Output.create<int>(map['maxIdleDaysForAccessKeys'] as int),
      maxIdleDaysForUsers: map['maxIdleDaysForUsers'] == null ? null : pulumi.Output.create<int>(map['maxIdleDaysForUsers'] as int),
      mfaOperationForLogin: map['mfaOperationForLogin'] == null ? null : pulumi.Output.create<String>(map['mfaOperationForLogin'] as String),
      operationForRiskLogin: map['operationForRiskLogin'] == null ? null : pulumi.Output.create<String>(map['operationForRiskLogin'] as String),
      verificationTypes: map['verificationTypes'] == null ? null : pulumi.Output.create<List<String>>((map['verificationTypes'] as List).cast<String>()),
    );
  }
}

