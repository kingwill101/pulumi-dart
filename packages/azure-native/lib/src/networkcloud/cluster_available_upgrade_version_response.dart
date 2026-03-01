// ignore_for_file: unused_element, unnecessary_cast


class ClusterAvailableUpgradeVersionResponse {
  /// The indicator of whether the control plane will be impacted during the upgrade.
  final String controlImpact;
  /// The expected duration needed for this upgrade.
  final String expectedDuration;
  /// The impact description including the specific details and release notes.
  final String impactDescription;
  /// The last date the version of the platform is supported.
  final String supportExpiryDate;
  /// The target version this cluster will be upgraded to.
  final String targetClusterVersion;
  /// The indicator of whether the workload will be impacted during the upgrade.
  final String workloadImpact;

  /// Creates a new [ClusterAvailableUpgradeVersionResponse].
  /// [controlImpact] The indicator of whether the control plane will be impacted during the upgrade.
  /// [expectedDuration] The expected duration needed for this upgrade.
  /// [impactDescription] The impact description including the specific details and release notes.
  /// [supportExpiryDate] The last date the version of the platform is supported.
  /// [targetClusterVersion] The target version this cluster will be upgraded to.
  /// [workloadImpact] The indicator of whether the workload will be impacted during the upgrade.
  ClusterAvailableUpgradeVersionResponse({
    required this.controlImpact,
    required this.expectedDuration,
    required this.impactDescription,
    required this.supportExpiryDate,
    required this.targetClusterVersion,
    required this.workloadImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlImpact': controlImpact,
      'expectedDuration': expectedDuration,
      'impactDescription': impactDescription,
      'supportExpiryDate': supportExpiryDate,
      'targetClusterVersion': targetClusterVersion,
      'workloadImpact': workloadImpact,
    };
  }

  factory ClusterAvailableUpgradeVersionResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAvailableUpgradeVersionResponse(
      controlImpact: map['controlImpact'] as String,
      expectedDuration: map['expectedDuration'] as String,
      impactDescription: map['impactDescription'] as String,
      supportExpiryDate: map['supportExpiryDate'] as String,
      targetClusterVersion: map['targetClusterVersion'] as String,
      workloadImpact: map['workloadImpact'] as String,
    );
  }
}

