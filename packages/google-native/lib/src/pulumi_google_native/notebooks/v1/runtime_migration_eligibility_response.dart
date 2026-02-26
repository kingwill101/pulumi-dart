// ignore_for_file: unused_element, unnecessary_cast

/// RuntimeMigrationEligibility represents the feasibility information of a migration from GmN to WbI.
class RuntimeMigrationEligibilityResponse {
  /// Certain configurations make the GmN ineligible for an automatic migration. A manual migration is required.
  final List<String> errors;

  /// Certain configurations will be defaulted during the migration.
  final List<String> warnings;

  RuntimeMigrationEligibilityResponse({
    required this.errors,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = errors;
    map['warnings'] = warnings;
    return map;
  }

  factory RuntimeMigrationEligibilityResponse.fromMap(
      Map<String, dynamic> map) {
    return RuntimeMigrationEligibilityResponse(
      errors: (map['errors'] as List).cast<String>(),
      warnings: (map['warnings'] as List).cast<String>(),
    );
  }
}
