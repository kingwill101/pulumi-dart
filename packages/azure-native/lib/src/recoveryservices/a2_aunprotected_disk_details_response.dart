// ignore_for_file: unused_element, unnecessary_cast


/// A2A unprotected disk details.
class A2AUnprotectedDiskDetailsResponse {
  /// A value indicating whether the disk auto protection is enabled.
  final String? diskAutoProtectionStatus;
  /// The source lun Id for the data disk.
  final int? diskLunId;

  /// Creates a new [A2AUnprotectedDiskDetailsResponse].
  /// [diskAutoProtectionStatus] A value indicating whether the disk auto protection is enabled.
  /// [diskLunId] The source lun Id for the data disk.
  A2AUnprotectedDiskDetailsResponse({
    this.diskAutoProtectionStatus,
    this.diskLunId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskAutoProtectionStatus': ?diskAutoProtectionStatus,
      'diskLunId': ?diskLunId,
    };
  }

  factory A2AUnprotectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AUnprotectedDiskDetailsResponse(
      diskAutoProtectionStatus: map['diskAutoProtectionStatus'] == null ? null : map['diskAutoProtectionStatus'] as String,
      diskLunId: map['diskLunId'] == null ? null : map['diskLunId'] as int,
    );
  }
}

