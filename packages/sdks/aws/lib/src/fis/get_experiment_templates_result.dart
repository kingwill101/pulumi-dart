// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExperimentTemplates.
class GetExperimentTemplatesResult {
  /// List of all the experiment template ids found.
  final List<String>? ids;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetExperimentTemplatesResult].
  /// [ids] List of all the experiment template ids found.
  /// [region] Optional.
  /// [tags] Optional.
  const GetExperimentTemplatesResult({
    this.ids,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetExperimentTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetExperimentTemplatesResult(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
