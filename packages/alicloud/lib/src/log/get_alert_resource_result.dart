// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAlertResource.
class GetAlertResourceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? lang;
  final String? project;
  final String type;

  /// Creates a new [GetAlertResourceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lang] Optional.
  /// [project] Optional.
  /// [type] Required.
  GetAlertResourceResult({
    required this.id,
    this.lang,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'lang': ?lang,
      'project': ?project,
      'type': type,
    };
  }

  factory GetAlertResourceResult.fromMap(Map<String, dynamic> map) {
    return GetAlertResourceResult(
      id: map['id'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] as String,
    );
  }
}

