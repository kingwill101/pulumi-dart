// ignore_for_file: unused_element, unnecessary_cast

class PluginInstanceActionCurationConfigCustomCuration {
  /// The unique name of the curation resource. This will be the name of the
  /// curation resource in the format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  final String curation;

  PluginInstanceActionCurationConfigCustomCuration({
    required this.curation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['curation'] = curation;
    return map;
  }

  factory PluginInstanceActionCurationConfigCustomCuration.fromMap(
      Map<String, dynamic> map) {
    return PluginInstanceActionCurationConfigCustomCuration(
      curation: map['curation'] as String,
    );
  }
}
