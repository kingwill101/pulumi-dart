// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPipeline.
class GetPipelineResult {
  /// Description of Pipeline.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of Pipeline.
  final String? name;
  final String? pipelineId;
  final String? region;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetPipelineResult].
  /// [description] Description of Pipeline.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of Pipeline.
  /// [pipelineId] Optional.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the resource.
  const GetPipelineResult({
    this.description,
    this.id,
    this.name,
    this.pipelineId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'pipelineId': ?pipelineId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
