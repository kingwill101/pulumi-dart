// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_endpoint_group_destination_configuration.dart';
import 'custom_routing_endpoint_group_endpoint_configuration.dart';

/// Input properties used for looking up and filtering CustomRoutingEndpointGroup resources.
class CustomRoutingEndpointGroupState {
  /// The Amazon Resource Name (ARN) of the custom routing endpoint group.
  final pulumi.Input<String>? arn;
  /// The port ranges and protocols for all endpoints in a custom routing endpoint group to accept client traffic on. Fields documented below.
  final pulumi.Input<List<CustomRoutingEndpointGroupDestinationConfiguration>>? destinationConfigurations;
  /// The list of endpoint objects. Fields documented below.
  final pulumi.Input<List<CustomRoutingEndpointGroupEndpointConfiguration>>? endpointConfigurations;
  /// The name of the AWS Region where the custom routing endpoint group is located.
  final pulumi.Input<String>? endpointGroupRegion;
  /// The Amazon Resource Name (ARN) of the custom routing listener.
  final pulumi.Input<String>? listenerArn;

  /// Creates a new [CustomRoutingEndpointGroupState].
  /// [arn] The Amazon Resource Name (ARN) of the custom routing endpoint group.
  /// [destinationConfigurations] The port ranges and protocols for all endpoints in a custom routing endpoint group to accept client traffic on. Fields documented below.
  /// [endpointConfigurations] The list of endpoint objects. Fields documented below.
  /// [endpointGroupRegion] The name of the AWS Region where the custom routing endpoint group is located.
  /// [listenerArn] The Amazon Resource Name (ARN) of the custom routing listener.
  CustomRoutingEndpointGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<CustomRoutingEndpointGroupDestinationConfiguration>>? destinationConfigurations,
    pulumi.Output<List<CustomRoutingEndpointGroupEndpointConfiguration>>? endpointConfigurations,
    pulumi.Output<String>? endpointGroupRegion,
    pulumi.Output<String>? listenerArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      destinationConfigurations = pulumi.Input.asOptionalInput<List<CustomRoutingEndpointGroupDestinationConfiguration>>(destinationConfigurations),
      endpointConfigurations = pulumi.Input.asOptionalInput<List<CustomRoutingEndpointGroupEndpointConfiguration>>(endpointConfigurations),
      endpointGroupRegion = pulumi.Input.asOptionalInput<String>(endpointGroupRegion),
      listenerArn = pulumi.Input.asOptionalInput<String>(listenerArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'destinationConfigurations': ?pulumi.Input.mapOptionalInputValue<List<CustomRoutingEndpointGroupDestinationConfiguration>, List<Map<String, dynamic>>>(destinationConfigurations, (value) => pulumi.Input.encodeList<CustomRoutingEndpointGroupDestinationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointConfigurations': ?pulumi.Input.mapOptionalInputValue<List<CustomRoutingEndpointGroupEndpointConfiguration>, List<Map<String, dynamic>>>(endpointConfigurations, (value) => pulumi.Input.encodeList<CustomRoutingEndpointGroupEndpointConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointGroupRegion': ?endpointGroupRegion,
      'listenerArn': ?listenerArn,
    };
  }

  factory CustomRoutingEndpointGroupState.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      destinationConfigurations: map['destinationConfigurations'] == null ? null : pulumi.Output.create<List<CustomRoutingEndpointGroupDestinationConfiguration>>(pulumi.Input.decodeList<CustomRoutingEndpointGroupDestinationConfiguration>(map['destinationConfigurations'], (value) => CustomRoutingEndpointGroupDestinationConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      endpointConfigurations: map['endpointConfigurations'] == null ? null : pulumi.Output.create<List<CustomRoutingEndpointGroupEndpointConfiguration>>(pulumi.Input.decodeList<CustomRoutingEndpointGroupEndpointConfiguration>(map['endpointConfigurations'], (value) => CustomRoutingEndpointGroupEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      endpointGroupRegion: map['endpointGroupRegion'] == null ? null : pulumi.Output.create<String>(map['endpointGroupRegion'] as String),
      listenerArn: map['listenerArn'] == null ? null : pulumi.Output.create<String>(map['listenerArn'] as String),
    );
  }
}

