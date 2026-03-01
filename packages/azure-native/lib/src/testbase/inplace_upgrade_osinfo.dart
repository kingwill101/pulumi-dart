// ignore_for_file: unused_element, unnecessary_cast

import 'os_properties.dart';

/// Specifies the baseline os and target os for in-place upgrade tests.
class InplaceUpgradeOSInfo {
  /// Specifies the baseline os for in-place upgrade tests.
  final OsProperties? baselineOS;
  /// Specifies the target os for in-place upgrade tests.
  final String? targetOS;

  /// Creates a new [InplaceUpgradeOSInfo].
  /// [baselineOS] Specifies the baseline os for in-place upgrade tests.
  /// [targetOS] Specifies the target os for in-place upgrade tests.
  InplaceUpgradeOSInfo({
    this.baselineOS,
    this.targetOS,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineOS': ?baselineOS == null ? null : baselineOS!.toMap(),
      'targetOS': ?targetOS,
    };
  }

  factory InplaceUpgradeOSInfo.fromMap(Map<String, dynamic> map) {
    return InplaceUpgradeOSInfo(
      baselineOS: map['baselineOS'] == null ? null : OsProperties.fromMap((map['baselineOS'] as Map).cast<String, dynamic>()),
      targetOS: map['targetOS'] == null ? null : map['targetOS'] as String,
    );
  }
}

