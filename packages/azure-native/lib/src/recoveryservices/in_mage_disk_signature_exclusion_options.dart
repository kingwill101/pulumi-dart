// ignore_for_file: unused_element, unnecessary_cast


/// Guest disk signature based disk exclusion option when doing enable protection of virtual machine in InMage provider.
class InMageDiskSignatureExclusionOptions {
  /// The guest signature of disk to be excluded from replication.
  final String? diskSignature;

  /// Creates a new [InMageDiskSignatureExclusionOptions].
  /// [diskSignature] The guest signature of disk to be excluded from replication.
  InMageDiskSignatureExclusionOptions({
    this.diskSignature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSignature': ?diskSignature,
    };
  }

  factory InMageDiskSignatureExclusionOptions.fromMap(Map<String, dynamic> map) {
    return InMageDiskSignatureExclusionOptions(
      diskSignature: map['diskSignature'] == null ? null : map['diskSignature'] as String,
    );
  }
}

