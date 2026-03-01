// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PointInTimeRecoverySpecification
class PointInTimeRecoverySpecificationResponse {
  /// Indicates whether point in time recovery is enabled (true) or disabled (false) on the table.
  final bool? pointInTimeRecoveryEnabled;

  /// Creates a new [PointInTimeRecoverySpecificationResponse].
  /// [pointInTimeRecoveryEnabled] Indicates whether point in time recovery is enabled (true) or disabled (false) on the table.
  PointInTimeRecoverySpecificationResponse({
    this.pointInTimeRecoveryEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointInTimeRecoveryEnabled': ?pointInTimeRecoveryEnabled,
    };
  }

  factory PointInTimeRecoverySpecificationResponse.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoverySpecificationResponse(
      pointInTimeRecoveryEnabled: map['pointInTimeRecoveryEnabled'] == null ? null : map['pointInTimeRecoveryEnabled'] as bool,
    );
  }
}

