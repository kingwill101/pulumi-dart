// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption at rest settings for disk or snapshot
class Encryption {
  /// ResourceId of the disk encryption set to use for enabling encryption at rest.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The type of key used to encrypt the data of the disk.
  final pulumi.Input<String>? type;

  /// Creates a new [Encryption].
  /// [diskEncryptionSetId] ResourceId of the disk encryption set to use for enabling encryption at rest.
  /// [type] The type of key used to encrypt the data of the disk.
  Encryption({
    this.diskEncryptionSetId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'type': ?type,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

