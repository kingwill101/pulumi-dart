// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyBindingAdvancedOptionsUdmDetail {
  /// Custom KMS key ID of encrypted copy
  final pulumi.Input<String>? destinationKmsKeyId;
  /// The list of backup disks. If it is empty, all disks are backed up.
  final pulumi.Input<List<String>>? diskIdLists;
  /// List of cloud disk IDs that are not backed up
  final pulumi.Input<List<String>>? excludeDiskIdLists;

  /// Creates a new [PolicyBindingAdvancedOptionsUdmDetail].
  /// [destinationKmsKeyId] Custom KMS key ID of encrypted copy
  /// [diskIdLists] The list of backup disks. If it is empty, all disks are backed up.
  /// [excludeDiskIdLists] List of cloud disk IDs that are not backed up
  const PolicyBindingAdvancedOptionsUdmDetail({
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
      destinationKmsKeyId: (() { final guardedValue = map['destinationKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskIdLists: (() { final guardedValue = map['diskIdLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludeDiskIdLists: (() { final guardedValue = map['excludeDiskIdLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

