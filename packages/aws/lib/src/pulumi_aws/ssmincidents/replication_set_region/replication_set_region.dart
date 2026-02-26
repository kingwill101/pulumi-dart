// ignore_for_file: unused_element, unnecessary_cast

class ReplicationSetRegion {
  /// The Amazon Resource name (ARN) of the customer managed key. If omitted, AWS manages the AWS KMS keys for you, using an AWS owned key, as indicated by a default value of `DefaultKey`.
  final String? kmsKeyArn;

  /// The name of the Region, such as `ap-southeast-2`.
  final String name;

  /// The current status of the Region.
  /// * Valid Values: `ACTIVE` | `CREATING` | `UPDATING` | `DELETING` | `FAILED`
  final String? status;

  /// More information about the status of a Region.
  final String? statusMessage;

  ReplicationSetRegion({
    this.kmsKeyArn,
    required this.name,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    map['name'] = name;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final statusMessageValue = statusMessage;
    if (statusMessageValue != null) {
      map['statusMessage'] = statusMessageValue;
    }
    return map;
  }

  factory ReplicationSetRegion.fromMap(Map<String, dynamic> map) {
    return ReplicationSetRegion(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      name: map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      statusMessage:
          map['statusMessage'] == null ? null : map['statusMessage'] as String,
    );
  }
}
