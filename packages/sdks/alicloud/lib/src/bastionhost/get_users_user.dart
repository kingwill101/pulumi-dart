// ignore_for_file: unused_element, unnecessary_cast


class GetUsersUser {
  /// Specify the New of the User That Created the Remark Information. Supports up to 500 Characters.
  final String comment;
  /// Specify the New Created the User's Display Name. Supports up to 128 Characters.
  final String displayName;
  /// Specify the New User's Mailbox.
  final String email;
  /// The ID of the User.
  final String id;
  /// You Want to Query the User the Bastion Host ID of.
  final String instanceId;
  /// Specify the New of the User That Created a Different Mobile Phone Number from Your.
  final String mobile;
  /// Specify the New Create User Mobile Phone Number of the International Domain Name. The Default Value Is the CN Value: CN: Mainland China (+86) HK: hong Kong, China (+852) Mo: Macau, China (+853) TW: Taiwan, China (+886) ru: Russian (+7) SG: Singapore (+65) My: malaysia (+60) ID: Indonesia (+62) De: Germany (+49) AU: Australia (+61) US: United States (+1) AE: dubai (+971) JP: Japan (+81) Introducing the Long-Range GB: United Kingdom (+44) in: India (+91) KR: South Korea (+82) Ph: philippines (+63) Ch: Switzerland (+41) Se: Sweden (+46).
  final String mobileCountryCode;
  /// Specify the New of the User That Created the Source. Valid Values: Local: Local User RAM: Ram User.
  final String source;
  /// Specify the Newly Created User Is Uniquely Identified. Indicates That the Parameter Is a Bastion Host Corresponding to the User with the Ram User's Unique Identifier. The Newly Created User Source Grant Permission to a RAM User (That Is, Source Used as a Ram), this Parameter Is Required. You Can Call Access Control of Listusers Interface from the Return Data Userid to Obtain the Parameters.
  final String sourceUserId;
  /// The status of the resource.
  final String status;
  /// The User ID.
  final String userId;
  /// Specify the New User Name. This Parameter Is Only by Letters, Lowercase Letters, Numbers, and Underscores (_), Supports up to 128 Characters.
  final String userName;

  /// Creates a new [GetUsersUser].
  /// [comment] Specify the New of the User That Created the Remark Information. Supports up to 500 Characters.
  /// [displayName] Specify the New Created the User's Display Name. Supports up to 128 Characters.
  /// [email] Specify the New User's Mailbox.
  /// [id] The ID of the User.
  /// [instanceId] You Want to Query the User the Bastion Host ID of.
  /// [mobile] Specify the New of the User That Created a Different Mobile Phone Number from Your.
  /// [mobileCountryCode] Specify the New Create User Mobile Phone Number of the International Domain Name. The Default Value Is the CN Value: CN: Mainland China (+86) HK: hong Kong, China (+852) Mo: Macau, China (+853) TW: Taiwan, China (+886) ru: Russian (+7) SG: Singapore (+65) My: malaysia (+60) ID: Indonesia (+62) De: Germany (+49) AU: Australia (+61) US: United States (+1) AE: dubai (+971) JP: Japan (+81) Introducing the Long-Range GB: United Kingdom (+44) in: India (+91) KR: South Korea (+82) Ph: philippines (+63) Ch: Switzerland (+41) Se: Sweden (+46).
  /// [source] Specify the New of the User That Created the Source. Valid Values: Local: Local User RAM: Ram User.
  /// [sourceUserId] Specify the Newly Created User Is Uniquely Identified. Indicates That the Parameter Is a Bastion Host Corresponding to the User with the Ram User's Unique Identifier. The Newly Created User Source Grant Permission to a RAM User (That Is, Source Used as a Ram), this Parameter Is Required. You Can Call Access Control of Listusers Interface from the Return Data Userid to Obtain the Parameters.
  /// [status] The status of the resource.
  /// [userId] The User ID.
  /// [userName] Specify the New User Name. This Parameter Is Only by Letters, Lowercase Letters, Numbers, and Underscores (_), Supports up to 128 Characters.
  GetUsersUser({
    required this.comment,
    required this.displayName,
    required this.email,
    required this.id,
    required this.instanceId,
    required this.mobile,
    required this.mobileCountryCode,
    required this.source,
    required this.sourceUserId,
    required this.status,
    required this.userId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'displayName': displayName,
      'email': email,
      'id': id,
      'instanceId': instanceId,
      'mobile': mobile,
      'mobileCountryCode': mobileCountryCode,
      'source': source,
      'sourceUserId': sourceUserId,
      'status': status,
      'userId': userId,
      'userName': userName,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      comment: map['comment'] as String,
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      mobile: map['mobile'] as String,
      mobileCountryCode: map['mobileCountryCode'] as String,
      source: map['source'] as String,
      sourceUserId: map['sourceUserId'] as String,
      status: map['status'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] as String,
    );
  }
}

