// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContactFlowModule.
class GetContactFlowModuleResult {
  /// ARN of the Contact Flow Module.
  final String? arn;
  final String? contactFlowModuleId;
  /// Logic of the Contact Flow Module.
  final String? content;
  /// Description of the Contact Flow Module.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? name;
  final String? region;
  /// Type of Contact Flow Module Module. Values are either `ACTIVE` or `ARCHIVED`.
  final String? state;
  /// Status of the Contact Flow Module Module. Values are either `PUBLISHED` or `SAVED`.
  final String? status;
  /// Map of tags to assign to the Contact Flow Module.
  final Map<String, String>? tags;

  /// Creates a new [GetContactFlowModuleResult].
  /// [arn] ARN of the Contact Flow Module.
  /// [contactFlowModuleId] Optional.
  /// [content] Logic of the Contact Flow Module.
  /// [description] Description of the Contact Flow Module.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [state] Type of Contact Flow Module Module. Values are either `ACTIVE` or `ARCHIVED`.
  /// [status] Status of the Contact Flow Module Module. Values are either `PUBLISHED` or `SAVED`.
  /// [tags] Map of tags to assign to the Contact Flow Module.
  const GetContactFlowModuleResult({
    this.arn,
    this.contactFlowModuleId,
    this.content,
    this.description,
    this.id,
    this.instanceId,
    this.name,
    this.region,
    this.state,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contactFlowModuleId': ?contactFlowModuleId,
      'content': ?content,
      'description': ?description,
      'id': ?id,
      'instanceId': ?instanceId,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetContactFlowModuleResult.fromMap(Map<String, dynamic> map) {
    return GetContactFlowModuleResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contactFlowModuleId: (() { final guardedValue = map['contactFlowModuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
