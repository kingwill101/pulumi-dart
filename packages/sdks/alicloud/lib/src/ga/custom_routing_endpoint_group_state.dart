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
  CustomRoutingEndpointGroupState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? customRoutingEndpointGroupName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endpointGroupRegion,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      customRoutingEndpointGroupName = pulumi.Input.asOptionalInput<String>(customRoutingEndpointGroupName),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointGroupRegion = pulumi.Input.asOptionalInput<String>(endpointGroupRegion),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      customRoutingEndpointGroupName: map['customRoutingEndpointGroupName'] == null ? null : pulumi.Output.create<String>(map['customRoutingEndpointGroupName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpointGroupRegion: map['endpointGroupRegion'] == null ? null : pulumi.Output.create<String>(map['endpointGroupRegion'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

