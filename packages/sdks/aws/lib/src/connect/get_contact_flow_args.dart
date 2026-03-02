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
    this.contactFlowId,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.type,
  });

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
      contactFlowId: map['contactFlowId'] == null ? null : ((map['contactFlowId'] as String).input()).input(),
      instanceId: (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

