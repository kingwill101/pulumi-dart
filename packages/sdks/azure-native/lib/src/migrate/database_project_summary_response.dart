// ignore_for_file: unused_element, unnecessary_cast


/// The database project summary class.
class DatabaseProjectSummaryResponse {
  /// Gets or sets the extended summary.
  final Map<String, String>? extendedSummary;
  /// Gets the Instance type.
  /// Expected value is 'Databases'.
  final String instanceType;
  /// Gets or sets the time when summary was last refreshed.
  final String? lastSummaryRefreshedTime;
  /// Gets or sets the state of refresh summary.
  final String? refreshSummaryState;

  /// Creates a new [DatabaseProjectSummaryResponse].
  /// [extendedSummary] Gets or sets the extended summary.
  /// [instanceType] Gets the Instance type.
  /// [lastSummaryRefreshedTime] Gets or sets the time when summary was last refreshed.
  /// [refreshSummaryState] Gets or sets the state of refresh summary.
  DatabaseProjectSummaryResponse({
    this.extendedSummary,
    required this.instanceType,
    this.lastSummaryRefreshedTime,
    this.refreshSummaryState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedSummary': ?extendedSummary,
      'instanceType': instanceType,
      'lastSummaryRefreshedTime': ?lastSummaryRefreshedTime,
      'refreshSummaryState': ?refreshSummaryState,
    };
  }

  factory DatabaseProjectSummaryResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseProjectSummaryResponse(
      extendedSummary: map['extendedSummary'] == null ? null : (map['extendedSummary'] as Map).cast<String, String>(),
      instanceType: map['instanceType'] as String,
      lastSummaryRefreshedTime: map['lastSummaryRefreshedTime'] == null ? null : map['lastSummaryRefreshedTime'] as String,
      refreshSummaryState: map['refreshSummaryState'] == null ? null : map['refreshSummaryState'] as String,
    );
  }
}

