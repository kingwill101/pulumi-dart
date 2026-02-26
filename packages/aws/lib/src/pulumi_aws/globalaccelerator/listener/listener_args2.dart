// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_port_range/listener_port_range.dart';

/// The set of arguments for Listener.
class ListenerArgs2 {
  /// The Amazon Resource Name (ARN) of your accelerator.
  final Input<String> acceleratorArn;

  /// Direct all requests from a user to the same endpoint. Valid values are `NONE`, `SOURCE_IP`. Default: `NONE`. If `NONE`, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If `SOURCE_IP`, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
  final Input<String>? clientAffinity;

  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  final Input<List<ListenerPortRange>> portRanges;

  /// The protocol for the connections from clients to the accelerator. Valid values are `TCP`, `UDP`.
  final Input<String> protocol;

  ListenerArgs2({
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
    map['portRanges'] = Input.mapInputValue<List<ListenerPortRange>,
            List<Map<String, dynamic>>>(
        portRanges,
        (value) => Input.encodeList<ListenerPortRange, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    map['protocol'] = protocol;
    return map;
  }

  factory ListenerArgs2.fromMap(Map<String, dynamic> map) {
    return ListenerArgs2(
      acceleratorArn: Input.asInput<String>(map['acceleratorArn']),
      clientAffinity: Input.asOptionalInput<String>(map['clientAffinity']),
      portRanges: Input.asInput<List<ListenerPortRange>>(map['portRanges']),
      protocol: Input.asInput<String>(map['protocol']),
    );
  }
}
