// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_user_user_args_doc}
class UserArgs {
  /// Specify the New of the User That Created the Remark Information. Supports up to 500 Characters.
  final pulumi.Input<String>? comment;
  /// Specify the New Created the User's Display Name. Supports up to 128 Characters.
  final pulumi.Input<String>? displayName;
  /// Specify the New User's Mailbox.
  final pulumi.Input<String>? email;
  /// You Want to Query the User the Bastion Host ID of.
  final pulumi.Input<String> instanceId;
  /// Specify the New of the User That Created a Different Mobile Phone Number from Your.
  final pulumi.Input<String>? mobile;
  /// Specify the New Create User Mobile Phone Number of the International Domain Name. The Default Value Is the CN. Valid Values:
  /// * CN: Mainland China (+86)
  /// * HK: hong Kong, China (+852)
  /// * MO: Macau, China (+853)
  /// * TW: Taiwan, China (+886)
  /// * RU: Russian (+7)
  /// * SG: Singapore (+65)
  /// * MY: malaysia (+60)
  /// * ID: Indonesia (+62)
  /// * DE: Germany (+49)
  /// * AU: Australia (+61)
  /// * US: United States (+1)
  /// * AE: dubai (+971)
  /// * JP: Japan (+81) Introducing the Long-Range
  /// * GB: United Kingdom (+44)
  /// * IN: India (+91)
  /// * KR: South Korea (+82)
  /// * PH: philippines (+63)
  /// * CH: Switzerland (+41)
  /// * SE: Sweden (+46)
  final pulumi.Input<String>? mobileCountryCode;
  /// Specify the New User's Password. Supports up to 128 Characters. Description of the New User as the Source of the Local User That Is, Source Value for Local, this Parameter Is Required.
  final pulumi.Input<String>? password;
  /// Specify the New of the User That Created the Source. Valid Values:
  /// * Local: Local User
  /// * Ram: Ram User
  /// * AD: AD-authenticated User
  /// * LDAP: LDAP-authenticated User
  /// > **NOTE:** From version 1.199.0, `source` can be set to `AD`, `LDAP`.
  final pulumi.Input<String> source;
  /// Specify the Newly Created User Is Uniquely Identified. Indicates That the Parameter Is a Bastion Host Corresponding to the User with the Ram User's Unique Identifier. The Newly Created User Source Grant Permission to a RAM User (That Is, Source Used as a Ram), this Parameter Is Required. You Can Call Access Control of Listusers Interface from the Return Data Userid to Obtain the Parameters.
  final pulumi.Input<String>? sourceUserId;
  /// The status of the resource. Valid values: `Frozen`, `Normal`.
  final pulumi.Input<String>? status;
  /// Specify the New User Name. This Parameter Is Only by Letters, Lowercase Letters, Numbers, and Underscores (_), Supports up to 128 Characters.
  final pulumi.Input<String> userName;

  /// Creates a new [UserArgs].
  /// [comment] Specify the New of the User That Created the Remark Information. Supports up to 500 Characters.
  /// [displayName] Specify the New Created the User's Display Name. Supports up to 128 Characters.
  /// [email] Specify the New User's Mailbox.
  /// [instanceId] You Want to Query the User the Bastion Host ID of.
  /// [mobile] Specify the New of the User That Created a Different Mobile Phone Number from Your.
  /// [mobileCountryCode] Specify the New Create User Mobile Phone Number of the International Domain Name. The Default Value Is the CN. Valid Values:
  /// [password] Specify the New User's Password. Supports up to 128 Characters. Description of the New User as the Source of the Local User That Is, Source Value for Local, this Parameter Is Required.
  /// [source] Specify the New of the User That Created the Source. Valid Values:
  /// [sourceUserId] Specify the Newly Created User Is Uniquely Identified. Indicates That the Parameter Is a Bastion Host Corresponding to the User with the Ram User's Unique Identifier. The Newly Created User Source Grant Permission to a RAM User (That Is, Source Used as a Ram), this Parameter Is Required. You Can Call Access Control of Listusers Interface from the Return Data Userid to Obtain the Parameters.
  /// [status] The status of the resource. Valid values: `Frozen`, `Normal`.
  /// [userName] Specify the New User Name. This Parameter Is Only by Letters, Lowercase Letters, Numbers, and Underscores (_), Supports up to 128 Characters.
  UserArgs({
    this.comment,
    this.displayName,
    this.email,
    required this.instanceId,
    this.mobile,
    this.mobileCountryCode,
    this.password,
    required this.source,
    this.sourceUserId,
    this.status,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'displayName': ?displayName,
      'email': ?email,
      'instanceId': instanceId,
      'mobile': ?mobile,
      'mobileCountryCode': ?mobileCountryCode,
      'password': ?password,
      'source': source,
      'sourceUserId': ?sourceUserId,
      'status': ?status,
      'userName': userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      mobile: map['mobile'] == null ? null : (map['mobile'] as String).input(),
      mobileCountryCode: map['mobileCountryCode'] == null ? null : (map['mobileCountryCode'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      source: (map['source'] as String).input(),
      sourceUserId: map['sourceUserId'] == null ? null : (map['sourceUserId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

