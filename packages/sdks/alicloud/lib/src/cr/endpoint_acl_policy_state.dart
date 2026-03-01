// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointAclPolicy resources.
class EndpointAclPolicyState {
  /// The description of the entry.
  final pulumi.Input<String>? description;
  /// The type of endpoint. Valid values: `internet`.
  final pulumi.Input<String>? endpointType;
  /// The IP segment that allowed to access.
  final pulumi.Input<String>? entry;
  /// The ID of the CR Instance.
  final pulumi.Input<String>? instanceId;
  /// The module that needs to set the access policy. Valid values: `Registry`.
  final pulumi.Input<String>? moduleName;

  /// Creates a new [EndpointAclPolicyState].
  /// [description] The description of the entry.
  /// [endpointType] The type of endpoint. Valid values: `internet`.
  /// [entry] The IP segment that allowed to access.
  /// [instanceId] The ID of the CR Instance.
  /// [moduleName] The module that needs to set the access policy. Valid values: `Registry`.
  EndpointAclPolicyState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? endpointType,
    pulumi.Output<String>? entry,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? moduleName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      entry = pulumi.Input.asOptionalInput<String>(entry),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      moduleName = pulumi.Input.asOptionalInput<String>(moduleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointType': ?endpointType,
      'entry': ?entry,
      'instanceId': ?instanceId,
      'moduleName': ?moduleName,
    };
  }

  factory EndpointAclPolicyState.fromMap(Map<String, dynamic> map) {
    return EndpointAclPolicyState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      entry: map['entry'] == null ? null : pulumi.Output.create<String>(map['entry'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      moduleName: map['moduleName'] == null ? null : pulumi.Output.create<String>(map['moduleName'] as String),
    );
  }
}

