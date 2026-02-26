// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_routing_listener_port_range/custom_routing_listener_port_range.dart';

/// The set of arguments for CustomRoutingListener.
class CustomRoutingListenerArgs {
  /// The Amazon Resource Name (ARN) of a custom routing accelerator.
  final Input<String> acceleratorArn;

  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  final Input<List<CustomRoutingListenerPortRange>> portRanges;

  CustomRoutingListenerArgs({
    required this.acceleratorArn,
    required this.portRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorArn'] = acceleratorArn;
    map['portRanges'] = Input.mapInputValue<
            List<CustomRoutingListenerPortRange>, List<Map<String, dynamic>>>(
        portRanges,
        (value) => Input.encodeList<CustomRoutingListenerPortRange,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory CustomRoutingListenerArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingListenerArgs(
      acceleratorArn: Input.asInput<String>(map['acceleratorArn']),
      portRanges: Input.asInput<List<CustomRoutingListenerPortRange>>(
          map['portRanges']),
    );
  }
}
