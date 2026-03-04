// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Types of validations to run after the migration
class MigrationValidationOptionsResponse {
  /// Allows to perform a checksum based data integrity validation between source and target for the selected database / tables .
  final pulumi.Input<bool>? enableDataIntegrityValidation;

  /// Allows to perform a quick and intelligent query analysis by retrieving queries from the source database and executes them in the target. The result will have execution statistics for executions in source and target databases for the extracted queries.
  final pulumi.Input<bool>? enableQueryAnalysisValidation;

  /// Allows to compare the schema information between source and target.
  final pulumi.Input<bool>? enableSchemaValidation;

  /// Creates a new [MigrationValidationOptionsResponse].
  /// [enableDataIntegrityValidation] Allows to perform a checksum based data integrity validation between source and target for the selected database / tables .
  /// [enableQueryAnalysisValidation] Allows to perform a quick and intelligent query analysis by retrieving queries from the source database and executes them in the target. The result will have execution statistics for executions in source and target databases for the extracted queries.
  /// [enableSchemaValidation] Allows to compare the schema information between source and target.
  MigrationValidationOptionsResponse({
    this.enableDataIntegrityValidation,
    this.enableQueryAnalysisValidation,
    this.enableSchemaValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDataIntegrityValidation': ?enableDataIntegrityValidation,
      'enableQueryAnalysisValidation': ?enableQueryAnalysisValidation,
      'enableSchemaValidation': ?enableSchemaValidation,
    };
  }

  factory MigrationValidationOptionsResponse.fromMap(Map<String, dynamic> map) {
    return MigrationValidationOptionsResponse(
      enableDataIntegrityValidation: (() {
        final guardedValue = map['enableDataIntegrityValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableQueryAnalysisValidation: (() {
        final guardedValue = map['enableQueryAnalysisValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableSchemaValidation: (() {
        final guardedValue = map['enableSchemaValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
