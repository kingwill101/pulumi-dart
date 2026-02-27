// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_routing_endpoint_group_destination_configuration/custom_routing_endpoint_group_destination_configuration.dart';
import '../custom_routing_endpoint_group_endpoint_configuration/custom_routing_endpoint_group_endpoint_configuration.dart';

/// The set of arguments for CustomRoutingEndpointGroup.
class CustomRoutingEndpointGroupArgs {
  /// The port ranges and protocols for all endpoints in a custom routing endpoint group to accept client traffic on. Fields documented below.
  final pulumi.Input<List<CustomRoutingEndpointGroupDestinationConfiguration>>
      destinationConfigurations;

  /// The list of endpoint objects. Fields documented below.
  final pulumi.Input<List<CustomRoutingEndpointGroupEndpointConfiguration>>?
      endpointConfigurations;

  /// The name of the AWS Region where the custom routing endpoint group is located.
  final pulumi.Input<String>? endpointGroupRegion;

  /// The Amazon Resource Name (ARN) of the custom routing listener.
  final pulumi.Input<String> listenerArn;

  CustomRoutingEndpointGroupArgs({
    required this.destinationConfigurations,
    this.endpointConfigurations,
    this.endpointGroupRegion,
    required this.listenerArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationConfigurations'] = pulumi.Input.mapInputValue<
            List<CustomRoutingEndpointGroupDestinationConfiguration>,
            List<Map<String, dynamic>>>(
        destinationConfigurations,
        (value) => pulumi.Input.encodeList<
            CustomRoutingEndpointGroupDestinationConfiguration,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final endpointConfigurationsValue = endpointConfigurations;
    if (endpointConfigurationsValue != null) {
      map['endpointConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<CustomRoutingEndpointGroupEndpointConfiguration>,
              List<Map<String, dynamic>>>(
          endpointConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              CustomRoutingEndpointGroupEndpointConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final endpointGroupRegionValue = endpointGroupRegion;
    if (endpointGroupRegionValue != null) {
      map['endpointGroupRegion'] = endpointGroupRegionValue;
    }
    map['listenerArn'] = listenerArn;
    return map;
  }

  factory CustomRoutingEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupArgs(
      destinationConfigurations: pulumi.Input.asInput<
              List<CustomRoutingEndpointGroupDestinationConfiguration>>(
          map['destinationConfigurations']),
      endpointConfigurations: pulumi.Input.asOptionalInput<
              List<CustomRoutingEndpointGroupEndpointConfiguration>>(
          map['endpointConfigurations']),
      endpointGroupRegion:
          pulumi.Input.asOptionalInput<String>(map['endpointGroupRegion']),
      listenerArn: pulumi.Input.asInput<String>(map['listenerArn']),
    );
  }
}
