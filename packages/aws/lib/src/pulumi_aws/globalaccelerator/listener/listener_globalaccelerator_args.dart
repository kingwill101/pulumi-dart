// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_port_range/listener_port_range.dart';

/// The set of arguments for Listener.
class ListenerGlobalacceleratorArgs {
  /// The Amazon Resource Name (ARN) of your accelerator.
  final pulumi.Input<String> acceleratorArn;

  /// Direct all requests from a user to the same endpoint. Valid values are `NONE`, `SOURCE_IP`. Default: `NONE`. If `NONE`, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If `SOURCE_IP`, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
  final pulumi.Input<String>? clientAffinity;

  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  final pulumi.Input<List<ListenerPortRange>> portRanges;

  /// The protocol for the connections from clients to the accelerator. Valid values are `TCP`, `UDP`.
  final pulumi.Input<String> protocol;

  ListenerGlobalacceleratorArgs({
    required this.acceleratorArn,
    this.clientAffinity,
    required this.portRanges,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorArn'] = acceleratorArn;
    final clientAffinityValue = clientAffinity;
    if (clientAffinityValue != null) {
      map['clientAffinity'] = clientAffinityValue;
    }
    map['portRanges'] = pulumi.Input.mapInputValue<List<ListenerPortRange>,
            List<Map<String, dynamic>>>(
        portRanges,
        (value) =>
            pulumi.Input.encodeList<ListenerPortRange, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['protocol'] = protocol;
    return map;
  }

  factory ListenerGlobalacceleratorArgs.fromMap(Map<String, dynamic> map) {
    return ListenerGlobalacceleratorArgs(
      acceleratorArn: pulumi.Input.asInput<String>(map['acceleratorArn']),
      clientAffinity:
          pulumi.Input.asOptionalInput<String>(map['clientAffinity']),
      portRanges:
          pulumi.Input.asInput<List<ListenerPortRange>>(map['portRanges']),
      protocol: pulumi.Input.asInput<String>(map['protocol']),
    );
  }
}
