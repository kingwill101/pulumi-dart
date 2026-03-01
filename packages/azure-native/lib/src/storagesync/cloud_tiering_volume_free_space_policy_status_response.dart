// ignore_for_file: unused_element, unnecessary_cast


/// Status of the volume free space policy
class CloudTieringVolumeFreeSpacePolicyStatusResponse {
  /// Current volume free space percentage.
  final int currentVolumeFreeSpacePercent;
  /// In the case where multiple server endpoints are present in a volume, an effective free space policy is applied.
  final int effectiveVolumeFreeSpacePolicy;
  /// Last updated timestamp
  final String lastUpdatedTimestamp;

  /// Creates a new [CloudTieringVolumeFreeSpacePolicyStatusResponse].
  /// [currentVolumeFreeSpacePercent] Current volume free space percentage.
  /// [effectiveVolumeFreeSpacePolicy] In the case where multiple server endpoints are present in a volume, an effective free space policy is applied.
  /// [lastUpdatedTimestamp] Last updated timestamp
  CloudTieringVolumeFreeSpacePolicyStatusResponse({
    required this.currentVolumeFreeSpacePercent,
    required this.effectiveVolumeFreeSpacePolicy,
    required this.lastUpdatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVolumeFreeSpacePercent': currentVolumeFreeSpacePercent,
      'effectiveVolumeFreeSpacePolicy': effectiveVolumeFreeSpacePolicy,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
    };
  }

  factory CloudTieringVolumeFreeSpacePolicyStatusResponse.fromMap(Map<String, dynamic> map) {
    return CloudTieringVolumeFreeSpacePolicyStatusResponse(
      currentVolumeFreeSpacePercent: map['currentVolumeFreeSpacePercent'] as int,
      effectiveVolumeFreeSpacePolicy: map['effectiveVolumeFreeSpacePolicy'] as int,
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
    );
  }
}

