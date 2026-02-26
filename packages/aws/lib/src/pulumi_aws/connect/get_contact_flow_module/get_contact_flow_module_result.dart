// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getContactFlowModule.
class GetContactFlowModuleResult {
  /// ARN of the Contact Flow Module.
  final String arn;
  final String contactFlowModuleId;

  /// Logic of the Contact Flow Module.
  final String content;

  /// Description of the Contact Flow Module.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String name;
  final String region;

  /// Type of Contact Flow Module Module. Values are either `ACTIVE` or `ARCHIVED`.
  final String state;

  /// Status of the Contact Flow Module Module. Values are either `PUBLISHED` or `SAVED`.
  final String status;

  /// Map of tags to assign to the Contact Flow Module.
  final Map<String, String> tags;

  GetContactFlowModuleResult({
    required this.arn,
    required this.contactFlowModuleId,
    required this.content,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.name,
    required this.region,
    required this.state,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['contactFlowModuleId'] = contactFlowModuleId;
    map['content'] = content;
    map['description'] = description;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['name'] = name;
    map['region'] = region;
    map['state'] = state;
    map['status'] = status;
    map['tags'] = tags;
    return map;
  }

  factory GetContactFlowModuleResult.fromMap(Map<String, dynamic> map) {
    return GetContactFlowModuleResult(
      arn: map['arn'] as String,
      contactFlowModuleId: map['contactFlowModuleId'] as String,
      content: map['content'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
