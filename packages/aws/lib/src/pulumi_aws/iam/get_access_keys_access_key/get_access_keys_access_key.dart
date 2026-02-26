// ignore_for_file: unused_element, unnecessary_cast

class GetAccessKeysAccessKey {
  /// Access key ID.
  final String accessKeyId;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the access key was created.
  final String createDate;

  /// Access key status. Possible values are `Active` and `Inactive`.
  final String status;

  GetAccessKeysAccessKey({
    required this.accessKeyId,
    required this.createDate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessKeyId'] = accessKeyId;
    map['createDate'] = createDate;
    map['status'] = status;
    return map;
  }

  factory GetAccessKeysAccessKey.fromMap(Map<String, dynamic> map) {
    return GetAccessKeysAccessKey(
      accessKeyId: map['accessKeyId'] as String,
      createDate: map['createDate'] as String,
      status: map['status'] as String,
    );
  }
}
