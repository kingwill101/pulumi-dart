// ignore_for_file: unused_element, unnecessary_cast

/// Represents an intent parameter.
class GoogleCloudDialogflowCxV3IntentParameter {
  /// The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  final String entityType;

  /// The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
  final String id;

  /// Indicates whether the parameter represents a list of values.
  final bool? isList;

  /// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final bool? redact;

  /// Creates a new [GoogleCloudDialogflowCxV3IntentParameter].
  /// [entityType] The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  /// [id] The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
  /// [isList] Indicates whether the parameter represents a list of values.
  /// [redact] Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  GoogleCloudDialogflowCxV3IntentParameter({
    required this.entityType,
    required this.id,
    this.isList,
    this.redact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': entityType,
      'id': id,
      'isList': ?isList,
      'redact': ?redact,
    };
  }

  factory GoogleCloudDialogflowCxV3IntentParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3IntentParameter(
      entityType: map['entityType'] as String,
      id: map['id'] as String,
      isList: map['isList'] == null ? null : map['isList'] as bool,
      redact: map['redact'] == null ? null : map['redact'] as bool,
    );
  }
}
