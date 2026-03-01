// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_contact_flow_get_contact_flow_args_doc}
/// Arguments for getContactFlow.
/// {@endtemplate}
/// {@macro pulumi_connect_get_contact_flow_get_contact_flow_args_doc}
class GetContactFlowArgs {
  /// Returns information on a specific Contact Flow by contact flow id
  final pulumi.Input<String>? contactFlowId;
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;
  /// Returns information on a specific Contact Flow by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `contact_flow_id` is required.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to assign to the Contact Flow.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of Contact Flow.
  final pulumi.Input<String>? type;

  /// Creates a new [GetContactFlowArgs].
  /// [contactFlowId] Returns information on a specific Contact Flow by contact flow id
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Contact Flow by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to assign to the Contact Flow.
  /// [type] Type of Contact Flow.
  GetContactFlowArgs({
    pulumi.Output<String>? contactFlowId,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
  }) :
      contactFlowId = pulumi.Input.asOptionalInput<String>(contactFlowId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactFlowId': ?contactFlowId,
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetContactFlowArgs.fromMap(Map<String, dynamic> map) {
    return GetContactFlowArgs(
      contactFlowId: map['contactFlowId'] == null ? null : pulumi.Output.create<String>(map['contactFlowId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

