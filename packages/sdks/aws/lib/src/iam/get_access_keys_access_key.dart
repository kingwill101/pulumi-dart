// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessKeysAccessKey {
  /// Access key ID.
  final pulumi.Input<String> accessKeyId;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the access key was created.
  final pulumi.Input<String> createDate;
  /// Access key status. Possible values are `Active` and `Inactive`.
  final pulumi.Input<String> status;

  /// Creates a new [GetAccessKeysAccessKey].
  /// [accessKeyId] Access key ID.
  /// [createDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the access key was created.
  /// [status] Access key status. Possible values are `Active` and `Inactive`.
  GetAccessKeysAccessKey({
    required this.accessKeyId,
    required this.createDate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'createDate': createDate,
      'status': status,
    };
  }

  factory GetAccessKeysAccessKey.fromMap(Map<String, dynamic> map) {
    return GetAccessKeysAccessKey(
      accessKeyId: (map['accessKeyId'] as String).input(),
      createDate: (map['createDate'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

