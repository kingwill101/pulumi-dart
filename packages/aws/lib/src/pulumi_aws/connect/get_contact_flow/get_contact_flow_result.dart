// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getContactFlow.
class GetContactFlowResult {
  /// ARN of the Contact Flow.
  final String arn;
  final String contactFlowId;

  /// Logic of the Contact Flow.
  final String content;

  /// Description of the Contact Flow.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String name;
  final String region;

  /// Tags to assign to the Contact Flow.
  final Map<String, String> tags;

  /// Type of Contact Flow.
  final String? type;

  GetContactFlowResult({
    required this.arn,
    required this.contactFlowId,
    required this.content,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.name,
    required this.region,
    required this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['contactFlowId'] = contactFlowId;
    map['content'] = content;
    map['description'] = description;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetContactFlowResult.fromMap(Map<String, dynamic> map) {
    return GetContactFlowResult(
      arn: map['arn'] as String,
      contactFlowId: map['contactFlowId'] as String,
      content: map['content'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
