// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_listener_port_range.dart';

/// {@template pulumi_globalaccelerator_custom_routing_listener_custom_routing_listener_args_doc}
/// The set of arguments for CustomRoutingListener.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_custom_routing_listener_custom_routing_listener_args_doc}
class CustomRoutingListenerArgs {
  /// The Amazon Resource Name (ARN) of a custom routing accelerator.
  final pulumi.Input<String> acceleratorArn;
  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  final pulumi.Input<List<CustomRoutingListenerPortRange>> portRanges;

  /// Creates a new [CustomRoutingListenerArgs].
  /// [acceleratorArn] The Amazon Resource Name (ARN) of a custom routing accelerator.
  /// [portRanges] The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  CustomRoutingListenerArgs({
    required this.acceleratorArn,
    required this.portRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorArn': acceleratorArn,
      'portRanges': pulumi.Input.mapInputValue<List<CustomRoutingListenerPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<CustomRoutingListenerPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomRoutingListenerArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingListenerArgs(
      acceleratorArn: (map['acceleratorArn'] as String).input(),
      portRanges: (pulumi.Input.decodeList<CustomRoutingListenerPortRange>(map['portRanges']!, (value) => CustomRoutingListenerPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

