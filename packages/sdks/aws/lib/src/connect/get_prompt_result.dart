// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrompt.
class GetPromptResult {
  /// ARN of the Prompt.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? name;
  /// Identifier for the prompt.
  final String? promptId;
  final String? region;

  /// Creates a new [GetPromptResult].
  /// [arn] ARN of the Prompt.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [name] Optional.
  /// [promptId] Identifier for the prompt.
  /// [region] Optional.
  const GetPromptResult({
    this.arn,
    this.id,
    this.instanceId,
    this.name,
    this.promptId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'instanceId': ?instanceId,
      'name': ?name,
      'promptId': ?promptId,
      'region': ?region,
    };
  }

  factory GetPromptResult.fromMap(Map<String, dynamic> map) {
    return GetPromptResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      promptId: (() { final guardedValue = map['promptId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
