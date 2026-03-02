// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PointInTimeRecoverySpecification
class PointInTimeRecoverySpecification {
  /// Indicates whether point in time recovery is enabled (true) or disabled (false) on the table.
  final pulumi.Input<bool>? pointInTimeRecoveryEnabled;

  /// Creates a new [PointInTimeRecoverySpecification].
  /// [pointInTimeRecoveryEnabled] Indicates whether point in time recovery is enabled (true) or disabled (false) on the table.
  PointInTimeRecoverySpecification({
    this.pointInTimeRecoveryEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointInTimeRecoveryEnabled': ?pointInTimeRecoveryEnabled,
    };
  }

  factory PointInTimeRecoverySpecification.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoverySpecification(
      pointInTimeRecoveryEnabled: map['pointInTimeRecoveryEnabled'] == null ? null : (map['pointInTimeRecoveryEnabled']! as bool).input(),
    );
  }
}

