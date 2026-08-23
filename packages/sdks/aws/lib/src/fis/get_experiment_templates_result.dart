// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExperimentTemplates.
class GetExperimentTemplatesResult {
  /// List of all the experiment template ids found.
  final List<String> ids;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetExperimentTemplatesResult].
  /// [ids] List of all the experiment template ids found.
  /// [region] Required.
  /// [tags] Optional.
  const GetExperimentTemplatesResult({
    required this.ids,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ids,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetExperimentTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetExperimentTemplatesResult(
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
