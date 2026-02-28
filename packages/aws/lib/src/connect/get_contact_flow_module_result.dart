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

  /// Creates a new [GetContactFlowModuleResult].
  /// [arn] ARN of the Contact Flow Module.
  /// [contactFlowModuleId] Required.
  /// [content] Logic of the Contact Flow Module.
  /// [description] Description of the Contact Flow Module.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [name] Required.
  /// [region] Required.
  /// [state] Type of Contact Flow Module Module. Values are either `ACTIVE` or `ARCHIVED`.
  /// [status] Status of the Contact Flow Module Module. Values are either `PUBLISHED` or `SAVED`.
  /// [tags] Map of tags to assign to the Contact Flow Module.
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
    return <String, dynamic>{
      'arn': arn,
      'contactFlowModuleId': contactFlowModuleId,
      'content': content,
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'name': name,
      'region': region,
      'state': state,
      'status': status,
      'tags': tags,
    };
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

