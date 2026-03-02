// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about migration eligibility of a server object
class MigrationEligibilityInfoResponse {
  /// Whether object is eligible for migration or not.
  final pulumi.Input<bool> isEligibleForMigration;
  /// Information about eligibility failure for the server object.
  final pulumi.Input<List<String>> validationMessages;

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
      isEligibleForMigration: (map['isEligibleForMigration'] as bool).input(),
      validationMessages: ((map['validationMessages'] as List).cast<String>()).input(),
    );
  }
}

