// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExperimentTemplates.
class GetExperimentTemplatesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the experiment template ids found.
  final List<String> ids;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetExperimentTemplatesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the experiment template ids found.
  /// [region] Required.
  /// [tags] Optional.
  GetExperimentTemplatesResult({
    required this.id,
    required this.ids,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetExperimentTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetExperimentTemplatesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
