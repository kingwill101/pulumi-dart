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
    this.description,
    this.endpointType,
    this.entry,
    this.instanceId,
    this.moduleName,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointType: (() {
        final guardedValue = map['endpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entry: (() {
        final guardedValue = map['entry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      moduleName: (() {
        final guardedValue = map['moduleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
