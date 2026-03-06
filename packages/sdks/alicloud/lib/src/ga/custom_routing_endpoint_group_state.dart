// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomRoutingEndpointGroup resources.
class CustomRoutingEndpointGroupState {
  /// The ID of the GA instance.
  final pulumi.Input<String>? acceleratorId;
  /// The name of the endpoint group.
  final pulumi.Input<String>? customRoutingEndpointGroupName;
  /// The description of the endpoint group.
  final pulumi.Input<String>? description;
  /// The ID of the region in which to create the endpoint group.
  final pulumi.Input<String>? endpointGroupRegion;
  /// The ID of the custom routing listener.
  final pulumi.Input<String>? listenerId;
  /// The status of the Custom Routing Endpoint Group.
  final pulumi.Input<String>? status;

  /// Creates a new [CustomRoutingEndpointGroupState].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointGroupName] The name of the endpoint group.
  /// [description] The description of the endpoint group.
  /// [endpointGroupRegion] The ID of the region in which to create the endpoint group.
  /// [listenerId] The ID of the custom routing listener.
  /// [status] The status of the Custom Routing Endpoint Group.
  const CustomRoutingEndpointGroupState({
    this.acceleratorId,
    this.customRoutingEndpointGroupName,
    this.description,
    this.endpointGroupRegion,
    this.listenerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'customRoutingEndpointGroupName': ?customRoutingEndpointGroupName,
      'description': ?description,
      'endpointGroupRegion': ?endpointGroupRegion,
      'listenerId': ?listenerId,
      'status': ?status,
    };
  }

  factory CustomRoutingEndpointGroupState.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupState(
      acceleratorId: (() { final guardedValue = map['acceleratorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customRoutingEndpointGroupName: (() { final guardedValue = map['customRoutingEndpointGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointGroupRegion: (() { final guardedValue = map['endpointGroupRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

