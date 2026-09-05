// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContactFlow.
class GetContactFlowResult {
  /// ARN of the Contact Flow.
  final String? arn;
  final String? contactFlowId;
  /// Logic of the Contact Flow.
  final String? content;
  /// Description of the Contact Flow.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? name;
  final String? region;
  /// Tags to assign to the Contact Flow.
  final Map<String, String>? tags;
  /// Type of Contact Flow.
  final String? type;

  /// Creates a new [GetContactFlowResult].
  /// [arn] ARN of the Contact Flow.
  /// [contactFlowId] Optional.
  /// [content] Logic of the Contact Flow.
  /// [description] Description of the Contact Flow.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Tags to assign to the Contact Flow.
  /// [type] Type of Contact Flow.
  const GetContactFlowResult({
    this.arn,
    this.contactFlowId,
    this.content,
    this.description,
    this.id,
    this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contactFlowId': ?contactFlowId,
      'content': ?content,
      'description': ?description,
      'id': ?id,
      'instanceId': ?instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetContactFlowResult.fromMap(Map<String, dynamic> map) {
    return GetContactFlowResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contactFlowId: (() { final guardedValue = map['contactFlowId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
