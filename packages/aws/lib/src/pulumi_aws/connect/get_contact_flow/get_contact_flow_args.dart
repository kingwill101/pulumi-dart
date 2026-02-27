// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getContactFlow.
class GetContactFlowArgs {
  /// Returns information on a specific Contact Flow by contact flow id
  final Input<String>? contactFlowId;

  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific Contact Flow by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `contact_flow_id` is required.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to assign to the Contact Flow.
  final Input<Map<String, String>>? tags;

  /// Type of Contact Flow.
  final Input<String>? type;

  GetContactFlowArgs({
    this.contactFlowId,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contactFlowIdValue = contactFlowId;
    if (contactFlowIdValue != null) {
      map['contactFlowId'] = contactFlowIdValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetContactFlowArgs.fromMap(Map<String, dynamic> map) {
    return GetContactFlowArgs(
      contactFlowId: Input.asOptionalInput<String>(map['contactFlowId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
