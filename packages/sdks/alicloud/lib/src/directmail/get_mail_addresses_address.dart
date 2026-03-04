// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMailAddressesAddress {
  /// The sender address.
  final pulumi.Input<String> accountName;

  /// The creation of the record time.
  final pulumi.Input<String> createTime;

  /// On the quota limit.
  final pulumi.Input<String> dailyCount;

  /// On the quota.
  final pulumi.Input<String> dailyReqCount;

  /// Domain name status. Valid values: `0`, `1`.
  final pulumi.Input<String> domainStatus;

  /// The ID of the Mail Address.
  final pulumi.Input<String> id;

  /// The sender address ID.
  final pulumi.Input<String> mailAddressId;

  /// Monthly quota limit.
  final pulumi.Input<String> monthCount;

  /// Months amount.
  final pulumi.Input<String> monthReqCount;

  /// Return address.
  final pulumi.Input<String> replyAddress;

  /// If using STMP address status.
  final pulumi.Input<String> replyStatus;

  /// Account type.
  final pulumi.Input<String> sendtype;

  /// Account Status. Valid values: `0`, `1`. Freeze: 1, normal: 0.
  final pulumi.Input<String> status;

  /// Creates a new [GetMailAddressesAddress].
  /// [accountName] The sender address.
  /// [createTime] The creation of the record time.
  /// [dailyCount] On the quota limit.
  /// [dailyReqCount] On the quota.
  /// [domainStatus] Domain name status. Valid values: `0`, `1`.
  /// [id] The ID of the Mail Address.
  /// [mailAddressId] The sender address ID.
  /// [monthCount] Monthly quota limit.
  /// [monthReqCount] Months amount.
  /// [replyAddress] Return address.
  /// [replyStatus] If using STMP address status.
  /// [sendtype] Account type.
  /// [status] Account Status. Valid values: `0`, `1`. Freeze: 1, normal: 0.
  GetMailAddressesAddress({
    required this.accountName,
    required this.createTime,
    required this.dailyCount,
    required this.dailyReqCount,
    required this.domainStatus,
    required this.id,
    required this.mailAddressId,
    required this.monthCount,
    required this.monthReqCount,
    required this.replyAddress,
    required this.replyStatus,
    required this.sendtype,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'createTime': createTime,
      'dailyCount': dailyCount,
      'dailyReqCount': dailyReqCount,
      'domainStatus': domainStatus,
      'id': id,
      'mailAddressId': mailAddressId,
      'monthCount': monthCount,
      'monthReqCount': monthReqCount,
      'replyAddress': replyAddress,
      'replyStatus': replyStatus,
      'sendtype': sendtype,
      'status': status,
    };
  }

  factory GetMailAddressesAddress.fromMap(Map<String, dynamic> map) {
    return GetMailAddressesAddress(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dailyCount: pulumi.Input.fromValue(map['dailyCount'] as String),
      dailyReqCount: pulumi.Input.fromValue(map['dailyReqCount'] as String),
      domainStatus: pulumi.Input.fromValue(map['domainStatus'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mailAddressId: pulumi.Input.fromValue(map['mailAddressId'] as String),
      monthCount: pulumi.Input.fromValue(map['monthCount'] as String),
      monthReqCount: pulumi.Input.fromValue(map['monthReqCount'] as String),
      replyAddress: pulumi.Input.fromValue(map['replyAddress'] as String),
      replyStatus: pulumi.Input.fromValue(map['replyStatus'] as String),
      sendtype: pulumi.Input.fromValue(map['sendtype'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
