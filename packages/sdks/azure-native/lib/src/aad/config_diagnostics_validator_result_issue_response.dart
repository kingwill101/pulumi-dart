// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specific issue for a particular config diagnostics validator
class ConfigDiagnosticsValidatorResultIssueResponse {
  /// List of domain resource property name or values used to compose a rich description.
  final pulumi.Input<List<String>>? descriptionParams;

  /// Validation issue identifier.
  final pulumi.Input<String>? id;

  /// Creates a new [ConfigDiagnosticsValidatorResultIssueResponse].
  /// [descriptionParams] List of domain resource property name or values used to compose a rich description.
  /// [id] Validation issue identifier.
  ConfigDiagnosticsValidatorResultIssueResponse({
    this.descriptionParams,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionParams': ?descriptionParams,
      'id': ?id,
    };
  }

  factory ConfigDiagnosticsValidatorResultIssueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigDiagnosticsValidatorResultIssueResponse(
      descriptionParams: (() {
        final guardedValue = map['descriptionParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
