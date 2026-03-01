// ignore_for_file: unused_element, unnecessary_cast


/// The migration assessment related configuration.
class MigrationAssessment {
  /// Indicates if migration assessment is enabled for this SQL Server instance.
  final bool? enabled;

  /// Creates a new [MigrationAssessment].
  /// [enabled] Indicates if migration assessment is enabled for this SQL Server instance.
  MigrationAssessment({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory MigrationAssessment.fromMap(Map<String, dynamic> map) {
    return MigrationAssessment(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

