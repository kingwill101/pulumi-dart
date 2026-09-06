// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TransitOptionParams Properties
class TransitOptionParams {
  /// Transit Option Params remoteVirtualNetworkId.
  final pulumi.Input<String?>? remoteVirtualNetworkId;
  /// Transit Option Params scaleUnits.
  final pulumi.Input<double?>? scaleUnits;

  /// Creates a new [TransitOptionParams].
  /// [remoteVirtualNetworkId] Transit Option Params remoteVirtualNetworkId.
  /// [scaleUnits] Transit Option Params scaleUnits.
  const TransitOptionParams({
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
      remoteVirtualNetworkId: (() { final guardedValue = map['remoteVirtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleUnits: (() { final guardedValue = map['scaleUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
