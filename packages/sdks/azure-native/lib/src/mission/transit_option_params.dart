// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TransitOptionParams Properties
class TransitOptionParams {
  /// Transit Option Params remoteVirtualNetworkId.
  final pulumi.Input<String>? remoteVirtualNetworkId;
  /// Transit Option Params scaleUnits.
  final pulumi.Input<double>? scaleUnits;

  /// Creates a new [TransitOptionParams].
  /// [remoteVirtualNetworkId] Transit Option Params remoteVirtualNetworkId.
  /// [scaleUnits] Transit Option Params scaleUnits.
  TransitOptionParams({
    this.remoteVirtualNetworkId,
    this.scaleUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remoteVirtualNetworkId': ?remoteVirtualNetworkId,
      'scaleUnits': ?scaleUnits,
    };
  }

  factory TransitOptionParams.fromMap(Map<String, dynamic> map) {
    return TransitOptionParams(
      remoteVirtualNetworkId: map['remoteVirtualNetworkId'] == null ? null : (map['remoteVirtualNetworkId']! as String).input(),
      scaleUnits: map['scaleUnits'] == null ? null : (map['scaleUnits']! as double).input(),
    );
  }
}

