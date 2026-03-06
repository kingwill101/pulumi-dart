// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_custom_routing_endpoint_group_custom_routing_endpoint_group_args_doc}
/// The set of arguments for CustomRoutingEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_ga_custom_routing_endpoint_group_custom_routing_endpoint_group_args_doc}
class CustomRoutingEndpointGroupArgs {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The name of the endpoint group.
  final pulumi.Input<String>? customRoutingEndpointGroupName;
  /// The description of the endpoint group.
  final pulumi.Input<String>? description;
  /// The ID of the region in which to create the endpoint group.
  final pulumi.Input<String> endpointGroupRegion;
  /// The ID of the custom routing listener.
  final pulumi.Input<String> listenerId;

  /// Creates a new [CustomRoutingEndpointGroupArgs].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointGroupName] The name of the endpoint group.
  /// [description] The description of the endpoint group.
  /// [endpointGroupRegion] The ID of the region in which to create the endpoint group.
  /// [listenerId] The ID of the custom routing listener.
  const CustomRoutingEndpointGroupArgs({
    required this.acceleratorId,
    this.customRoutingEndpointGroupName,
    this.description,
    required this.endpointGroupRegion,
    required this.listenerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'customRoutingEndpointGroupName': ?customRoutingEndpointGroupName,
      'description': ?description,
      'endpointGroupRegion': endpointGroupRegion,
      'listenerId': listenerId,
    };
  }

  factory CustomRoutingEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupArgs(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      customRoutingEndpointGroupName: (() { final guardedValue = map['customRoutingEndpointGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointGroupRegion: pulumi.Input.fromValue(map['endpointGroupRegion'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
    );
  }
}

