// ignore_for_file: unused_element, unnecessary_cast


class GetMailAddressesAddress {
  /// The sender address.
  final String accountName;
  /// The creation of the record time.
  final String createTime;
  /// On the quota limit.
  final String dailyCount;
  /// On the quota.
  final String dailyReqCount;
  /// Domain name status. Valid values: `0`, `1`.
  final String domainStatus;
  /// The ID of the Mail Address.
  final String id;
  /// The sender address ID.
  final String mailAddressId;
  /// Monthly quota limit.
  final String monthCount;
  /// Months amount.
  final String monthReqCount;
  /// Return address.
  final String replyAddress;
  /// If using STMP address status.
  final String replyStatus;
  /// Account type.
  final String sendtype;
  /// Account Status. Valid values: `0`, `1`. Freeze: 1, normal: 0.
  final String status;

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
      accountName: map['accountName'] as String,
      createTime: map['createTime'] as String,
      dailyCount: map['dailyCount'] as String,
      dailyReqCount: map['dailyReqCount'] as String,
      domainStatus: map['domainStatus'] as String,
      id: map['id'] as String,
      mailAddressId: map['mailAddressId'] as String,
      monthCount: map['monthCount'] as String,
      monthReqCount: map['monthReqCount'] as String,
      replyAddress: map['replyAddress'] as String,
      replyStatus: map['replyStatus'] as String,
      sendtype: map['sendtype'] as String,
      status: map['status'] as String,
    );
  }
}

