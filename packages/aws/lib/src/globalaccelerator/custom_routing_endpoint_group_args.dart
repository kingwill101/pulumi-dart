// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_endpoint_group_destination_configuration.dart';
import 'custom_routing_endpoint_group_endpoint_configuration.dart';

/// {@template pulumi_globalaccelerator_custom_routing_endpoint_group_custom_routing_endpoint_group_args_doc}
/// The set of arguments for CustomRoutingEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_custom_routing_endpoint_group_custom_routing_endpoint_group_args_doc}
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

  /// Creates a new [CustomRoutingEndpointGroupArgs].
  /// [destinationConfigurations] The port ranges and protocols for all endpoints in a custom routing endpoint group to accept client traffic on. Fields documented below.
  /// [endpointConfigurations] The list of endpoint objects. Fields documented below.
  /// [endpointGroupRegion] The name of the AWS Region where the custom routing endpoint group is located.
  /// [listenerArn] The Amazon Resource Name (ARN) of the custom routing listener.
  CustomRoutingEndpointGroupArgs({
    required List<CustomRoutingEndpointGroupDestinationConfiguration>
        destinationConfigurations,
    List<CustomRoutingEndpointGroupEndpointConfiguration>?
        endpointConfigurations,
    String? endpointGroupRegion,
    required String listenerArn,
  })  : destinationConfigurations = pulumi.Input.asInput<
                List<CustomRoutingEndpointGroupDestinationConfiguration>>(
            destinationConfigurations),
        endpointConfigurations = pulumi.Input.asOptionalInput<
                List<CustomRoutingEndpointGroupEndpointConfiguration>>(
            endpointConfigurations),
        endpointGroupRegion =
            pulumi.Input.asOptionalInput<String>(endpointGroupRegion),
        listenerArn = pulumi.Input.asInput<String>(listenerArn);

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
      destinationConfigurations: pulumi.Input.decodeList<
              CustomRoutingEndpointGroupDestinationConfiguration>(
          map['destinationConfigurations'],
          (value) => CustomRoutingEndpointGroupDestinationConfiguration.fromMap(
              (value as Map).cast<String, dynamic>())),
      endpointConfigurations: map['endpointConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
                  CustomRoutingEndpointGroupEndpointConfiguration>(
              map['endpointConfigurations'],
              (value) =>
                  CustomRoutingEndpointGroupEndpointConfiguration.fromMap(
                      (value as Map).cast<String, dynamic>())),
      endpointGroupRegion: map['endpointGroupRegion'] == null
          ? null
          : map['endpointGroupRegion'] as String,
      listenerArn: map['listenerArn'] as String,
    );
  }
}
