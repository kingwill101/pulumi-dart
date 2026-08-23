// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationSetRegion {
  /// The Amazon Resource name (ARN) of the customer managed key. If omitted, AWS manages the AWS KMS keys for you, using an AWS owned key, as indicated by a default value of `DefaultKey`.
  final pulumi.Input<String>? kmsKeyArn;
  /// The name of the Region, such as `ap-southeast-2`.
  final pulumi.Input<String> name;
  /// The current status of the Region.
  /// * Valid Values: `ACTIVE` | `CREATING` | `UPDATING` | `DELETING` | `FAILED`
  final pulumi.Input<String>? status;
  /// More information about the status of a Region.
  final pulumi.Input<String>? statusMessage;

  /// Creates a new [ReplicationSetRegion].
  /// [kmsKeyArn] The Amazon Resource name (ARN) of the customer managed key. If omitted, AWS manages the AWS KMS keys for you, using an AWS owned key, as indicated by a default value of `DefaultKey`.
  /// [name] The name of the Region, such as `ap-southeast-2`.
  /// [status] The current status of the Region.
  /// [statusMessage] More information about the status of a Region.
  const ReplicationSetRegion({
    this.kmsKeyArn,
    required this.name,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': ?kmsKeyArn,
      'name': name,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory ReplicationSetRegion.fromMap(Map<String, dynamic> map) {
    return ReplicationSetRegion(
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
