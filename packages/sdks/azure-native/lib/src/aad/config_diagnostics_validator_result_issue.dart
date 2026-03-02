// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specific issue for a particular config diagnostics validator
class ConfigDiagnosticsValidatorResultIssue {
  /// List of domain resource property name or values used to compose a rich description.
  final pulumi.Input<List<String>>? descriptionParams;
  /// Validation issue identifier.
  final pulumi.Input<String>? id;

  /// Creates a new [ConfigDiagnosticsValidatorResultIssue].
  /// [descriptionParams] List of domain resource property name or values used to compose a rich description.
  /// [id] Validation issue identifier.
  ConfigDiagnosticsValidatorResultIssue({
    this.descriptionParams,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionParams': ?descriptionParams,
      'id': ?id,
    };
  }

  factory ConfigDiagnosticsValidatorResultIssue.fromMap(Map<String, dynamic> map) {
    return ConfigDiagnosticsValidatorResultIssue(
      descriptionParams: map['descriptionParams'] == null ? null : ((map['descriptionParams'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

