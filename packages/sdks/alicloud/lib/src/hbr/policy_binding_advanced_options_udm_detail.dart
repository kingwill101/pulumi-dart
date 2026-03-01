// ignore_for_file: unused_element, unnecessary_cast


class PolicyBindingAdvancedOptionsUdmDetail {
  /// Custom KMS key ID of encrypted copy
  final String? destinationKmsKeyId;
  /// The list of backup disks. If it is empty, all disks are backed up.
  final List<String>? diskIdLists;
  /// List of cloud disk IDs that are not backed up
  final List<String>? excludeDiskIdLists;

  /// Creates a new [PolicyBindingAdvancedOptionsUdmDetail].
  /// [destinationKmsKeyId] Custom KMS key ID of encrypted copy
  /// [diskIdLists] The list of backup disks. If it is empty, all disks are backed up.
  /// [excludeDiskIdLists] List of cloud disk IDs that are not backed up
  PolicyBindingAdvancedOptionsUdmDetail({
    this.destinationKmsKeyId,
    this.diskIdLists,
    this.excludeDiskIdLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationKmsKeyId': ?destinationKmsKeyId,
      'diskIdLists': ?diskIdLists,
      'excludeDiskIdLists': ?excludeDiskIdLists,
    };
  }

  factory PolicyBindingAdvancedOptionsUdmDetail.fromMap(Map<String, dynamic> map) {
    return PolicyBindingAdvancedOptionsUdmDetail(
      destinationKmsKeyId: map['destinationKmsKeyId'] == null ? null : map['destinationKmsKeyId'] as String,
      diskIdLists: map['diskIdLists'] == null ? null : (map['diskIdLists'] as List).cast<String>(),
      excludeDiskIdLists: map['excludeDiskIdLists'] == null ? null : (map['excludeDiskIdLists'] as List).cast<String>(),
    );
  }
}

