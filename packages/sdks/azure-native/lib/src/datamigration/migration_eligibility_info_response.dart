// ignore_for_file: unused_element, unnecessary_cast


/// Information about migration eligibility of a server object
class MigrationEligibilityInfoResponse {
  /// Whether object is eligible for migration or not.
  final bool isEligibleForMigration;
  /// Information about eligibility failure for the server object.
  final List<String> validationMessages;

  /// Creates a new [MigrationEligibilityInfoResponse].
  /// [isEligibleForMigration] Whether object is eligible for migration or not.
  /// [validationMessages] Information about eligibility failure for the server object.
  MigrationEligibilityInfoResponse({
    required this.isEligibleForMigration,
    required this.validationMessages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEligibleForMigration': isEligibleForMigration,
      'validationMessages': validationMessages,
    };
  }

  factory MigrationEligibilityInfoResponse.fromMap(Map<String, dynamic> map) {
    return MigrationEligibilityInfoResponse(
      isEligibleForMigration: map['isEligibleForMigration'] as bool,
      validationMessages: (map['validationMessages'] as List).cast<String>(),
    );
  }
}

