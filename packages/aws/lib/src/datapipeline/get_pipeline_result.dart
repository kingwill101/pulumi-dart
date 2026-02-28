// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPipeline.
class GetPipelineResult {
  /// Description of Pipeline.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of Pipeline.
  final String name;
  final String pipelineId;
  final String region;

  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetPipelineResult].
  /// [description] Description of Pipeline.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of Pipeline.
  /// [pipelineId] Required.
  /// [region] Required.
  /// [tags] Map of tags assigned to the resource.
  GetPipelineResult({
    required this.description,
    required this.id,
    required this.name,
    required this.pipelineId,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['pipelineId'] = pipelineId;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineResult(
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      pipelineId: map['pipelineId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
