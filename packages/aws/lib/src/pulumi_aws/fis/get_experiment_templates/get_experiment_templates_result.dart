// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExperimentTemplates.
class GetExperimentTemplatesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the experiment template ids found.
  final List<String> ids;
  final String region;
  final Map<String, String>? tags;

  GetExperimentTemplatesResult({
    required this.id,
    required this.ids,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
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
