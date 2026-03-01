// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_port_range.dart';

/// {@template pulumi_globalaccelerator_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_listener_listener_args_doc}
class ListenerArgs {
  /// The Amazon Resource Name (ARN) of your accelerator.
  final pulumi.Input<String> acceleratorArn;

  /// Direct all requests from a user to the same endpoint. Valid values are `NONE`, `SOURCE_IP`. Default: `NONE`. If `NONE`, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If `SOURCE_IP`, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
  final pulumi.Input<String>? clientAffinity;

  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  final pulumi.Input<List<ListenerPortRange>> portRanges;

  /// The protocol for the connections from clients to the accelerator. Valid values are `TCP`, `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [ListenerArgs].
  /// [acceleratorArn] The Amazon Resource Name (ARN) of your accelerator.
  /// [clientAffinity] Direct all requests from a user to the same endpoint. Valid values are `NONE`, `SOURCE_IP`. Default: `NONE`. If `NONE`, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If `SOURCE_IP`, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
  /// [portRanges] The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  /// [protocol] The protocol for the connections from clients to the accelerator. Valid values are `TCP`, `UDP`.
  ListenerArgs({
    required String acceleratorArn,
    String? clientAffinity,
    required List<ListenerPortRange> portRanges,
    required String protocol,
  }) : acceleratorArn = pulumi.Input.asInput<String>(acceleratorArn),
       clientAffinity = pulumi.Input.asOptionalInput<String>(clientAffinity),
       portRanges = pulumi.Input.asInput<List<ListenerPortRange>>(portRanges),
       protocol = pulumi.Input.asInput<String>(protocol);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorArn': acceleratorArn,
      'clientAffinity': ?clientAffinity,
      'portRanges':
          pulumi.Input.mapInputValue<
            List<ListenerPortRange>,
            List<Map<String, dynamic>>
          >(
            portRanges,
            (value) =>
                pulumi.Input.encodeList<
                  ListenerPortRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'protocol': protocol,
    };
  }

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      acceleratorArn: map['acceleratorArn'] as String,
      clientAffinity: map['clientAffinity'] == null
          ? null
          : map['clientAffinity'] as String,
      portRanges: pulumi.Input.decodeList<ListenerPortRange>(
        map['portRanges'],
        (value) =>
            ListenerPortRange.fromMap((value as Map).cast<String, dynamic>()),
      ),
      protocol: map['protocol'] as String,
    );
  }
}
