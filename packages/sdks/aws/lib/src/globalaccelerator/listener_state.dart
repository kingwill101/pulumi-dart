// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_port_range.dart';

/// Input properties used for looking up and filtering Listener resources.
class ListenerState {
  /// The Amazon Resource Name (ARN) of your accelerator.
  final pulumi.Input<String>? acceleratorArn;

  /// The Amazon Resource Name (ARN) of the listener.
  final pulumi.Input<String>? arn;

  /// Direct all requests from a user to the same endpoint. Valid values are `NONE`, `SOURCE_IP`. Default: `NONE`. If `NONE`, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If `SOURCE_IP`, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
  final pulumi.Input<String>? clientAffinity;

  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  final pulumi.Input<List<ListenerPortRange>>? portRanges;

  /// The protocol for the connections from clients to the accelerator. Valid values are `TCP`, `UDP`.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ListenerState].
  /// [acceleratorArn] The Amazon Resource Name (ARN) of your accelerator.
  /// [arn] The Amazon Resource Name (ARN) of the listener.
  /// [clientAffinity] Direct all requests from a user to the same endpoint. Valid values are `NONE`, `SOURCE_IP`. Default: `NONE`. If `NONE`, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If `SOURCE_IP`, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
  /// [portRanges] The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  /// [protocol] The protocol for the connections from clients to the accelerator. Valid values are `TCP`, `UDP`.
  ListenerState({
    this.acceleratorArn,
    this.arn,
    this.clientAffinity,
    this.portRanges,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorArn': ?acceleratorArn,
      'arn': ?arn,
      'clientAffinity': ?clientAffinity,
      'portRanges':
          ?pulumi.Input.mapOptionalInputValue<
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
      'protocol': ?protocol,
    };
  }

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      acceleratorArn: (() {
        final guardedValue = map['acceleratorArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientAffinity: (() {
        final guardedValue = map['clientAffinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portRanges: (() {
        final guardedValue = map['portRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ListenerPortRange>(
            guardedValue,
            (value) => ListenerPortRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
