// ignore_for_file: unused_element, unnecessary_cast

/// InstanceMigrationEligibility represents the feasibility information of a migration from UmN to WbI.
class InstanceMigrationEligibilityResponse {
  /// Certain configurations make the UmN ineligible for an automatic migration. A manual migration is required.
  final List<String> errors;

  /// Certain configurations will be defaulted during the migration.
  final List<String> warnings;

  /// Creates a new [InstanceMigrationEligibilityResponse].
  /// [errors] Certain configurations make the UmN ineligible for an automatic migration. A manual migration is required.
  /// [warnings] Certain configurations will be defaulted during the migration.
  InstanceMigrationEligibilityResponse({
    required this.errors,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = errors;
    map['warnings'] = warnings;
    return map;
  }

  factory InstanceMigrationEligibilityResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceMigrationEligibilityResponse(
      errors: (map['errors'] as List).cast<String>(),
      warnings: (map['warnings'] as List).cast<String>(),
    );
  }
}
