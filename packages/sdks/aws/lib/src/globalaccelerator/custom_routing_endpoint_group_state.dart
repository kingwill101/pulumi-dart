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
    this.arn,
    this.destinationConfigurations,
    this.endpointConfigurations,
    this.endpointGroupRegion,
    this.listenerArn,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConfigurations: (() { final guardedValue = map['destinationConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomRoutingEndpointGroupDestinationConfiguration>(guardedValue, (value) => CustomRoutingEndpointGroupDestinationConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endpointConfigurations: (() { final guardedValue = map['endpointConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomRoutingEndpointGroupEndpointConfiguration>(guardedValue, (value) => CustomRoutingEndpointGroupEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endpointGroupRegion: (() { final guardedValue = map['endpointGroupRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerArn: (() { final guardedValue = map['listenerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

