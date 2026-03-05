// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPrompt.
class GetPromptResult {
  /// ARN of the Prompt.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String name;

  /// Identifier for the prompt.
  final String promptId;
  final String region;

  /// Creates a new [GetPromptResult].
  /// [arn] ARN of the Prompt.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [name] Required.
  /// [promptId] Identifier for the prompt.
  /// [region] Required.
  GetPromptResult({
    required this.arn,
    required this.id,
    required this.instanceId,
    required this.name,
    required this.promptId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'instanceId': instanceId,
      'name': name,
      'promptId': promptId,
      'region': region,
    };
  }

  factory GetPromptResult.fromMap(Map<String, dynamic> map) {
    return GetPromptResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      promptId: map['promptId'] as String,
      region: map['region'] as String,
    );
  }
}
