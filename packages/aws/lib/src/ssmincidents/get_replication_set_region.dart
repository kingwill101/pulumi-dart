// ignore_for_file: unused_element, unnecessary_cast


class GetReplicationSetRegion {
  /// The ARN of the AWS Key Management Service (AWS KMS) encryption key.
  final String kmsKeyArn;
  /// The name of the Region.
  final String name;
  /// The current status of the Region.
  /// * Valid Values: `ACTIVE` | `CREATING` | `UPDATING` | `DELETING` | `FAILED`
  final String status;
  /// More information about the status of a Region.
  final String statusMessage;

  /// Creates a new [GetReplicationSetRegion].
  /// [kmsKeyArn] The ARN of the AWS Key Management Service (AWS KMS) encryption key.
  /// [name] The name of the Region.
  /// [status] The current status of the Region.
  /// [statusMessage] More information about the status of a Region.
  GetReplicationSetRegion({
    required this.kmsKeyArn,
    required this.name,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
      'name': name,
      'status': status,
      'statusMessage': statusMessage,
    };
  }

  factory GetReplicationSetRegion.fromMap(Map<String, dynamic> map) {
    return GetReplicationSetRegion(
      kmsKeyArn: map['kmsKeyArn'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}

