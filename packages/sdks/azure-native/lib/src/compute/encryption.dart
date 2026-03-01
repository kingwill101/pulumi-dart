// ignore_for_file: unused_element, unnecessary_cast


/// Encryption at rest settings for disk or snapshot
class Encryption {
  /// ResourceId of the disk encryption set to use for enabling encryption at rest.
  final String? diskEncryptionSetId;
  /// The type of key used to encrypt the data of the disk.
  final String? type;

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
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

