// ignore_for_file: unused_element, unnecessary_cast


/// Specific issue for a particular config diagnostics validator
class ConfigDiagnosticsValidatorResultIssueResponse {
  /// List of domain resource property name or values used to compose a rich description.
  final List<String>? descriptionParams;
  /// Validation issue identifier.
  final String? id;

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

  factory ConfigDiagnosticsValidatorResultIssueResponse.fromMap(Map<String, dynamic> map) {
    return ConfigDiagnosticsValidatorResultIssueResponse(
      descriptionParams: map['descriptionParams'] == null ? null : (map['descriptionParams'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

