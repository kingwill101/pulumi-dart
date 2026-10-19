// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_listener_port_range.dart';

/// Input properties used for looking up and filtering CustomRoutingListener resources.
class CustomRoutingListenerState {
  /// ARN of a custom routing accelerator.
  final pulumi.Input<String?>? acceleratorArn;
  /// ARN of the custom routing listener.
  final pulumi.Input<String?>? arn;
  /// Port ranges for the connections from clients to the accelerator. See `portRange` below.
  final pulumi.Input<List<CustomRoutingListenerPortRange>?>? portRanges;

  /// Creates a new [CustomRoutingListenerState].
  /// [acceleratorArn] ARN of a custom routing accelerator.
  /// [arn] ARN of the custom routing listener.
  /// [portRanges] Port ranges for the connections from clients to the accelerator. See `portRange` below.
  const CustomRoutingListenerState({
    this.acceleratorArn,
    this.arn,
    this.portRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorArn': ?acceleratorArn,
      'arn': ?arn,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<CustomRoutingListenerPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<CustomRoutingListenerPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomRoutingListenerState.fromMap(Map<String, dynamic> map) {
    return CustomRoutingListenerState(
      acceleratorArn: (() { final guardedValue = map['acceleratorArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomRoutingListenerPortRange>(guardedValue, (value) => CustomRoutingListenerPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
