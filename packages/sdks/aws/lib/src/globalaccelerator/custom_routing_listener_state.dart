// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_listener_port_range.dart';

/// Input properties used for looking up and filtering CustomRoutingListener resources.
class CustomRoutingListenerState {
  /// The Amazon Resource Name (ARN) of a custom routing accelerator.
  final pulumi.Input<String>? acceleratorArn;
  final pulumi.Input<String>? arn;
  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  final pulumi.Input<List<CustomRoutingListenerPortRange>>? portRanges;

  /// Creates a new [CustomRoutingListenerState].
  /// [acceleratorArn] The Amazon Resource Name (ARN) of a custom routing accelerator.
  /// [arn] Optional.
  /// [portRanges] The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  CustomRoutingListenerState({
    pulumi.Output<String>? acceleratorArn,
    pulumi.Output<String>? arn,
    pulumi.Output<List<CustomRoutingListenerPortRange>>? portRanges,
  }) :
      acceleratorArn = pulumi.Input.asOptionalInput<String>(acceleratorArn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      portRanges = pulumi.Input.asOptionalInput<List<CustomRoutingListenerPortRange>>(portRanges);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorArn': ?acceleratorArn,
      'arn': ?arn,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<CustomRoutingListenerPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<CustomRoutingListenerPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomRoutingListenerState.fromMap(Map<String, dynamic> map) {
    return CustomRoutingListenerState(
      acceleratorArn: map['acceleratorArn'] == null ? null : pulumi.Output.create<String>(map['acceleratorArn'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      portRanges: map['portRanges'] == null ? null : pulumi.Output.create<List<CustomRoutingListenerPortRange>>(pulumi.Input.decodeList<CustomRoutingListenerPortRange>(map['portRanges'], (value) => CustomRoutingListenerPortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

