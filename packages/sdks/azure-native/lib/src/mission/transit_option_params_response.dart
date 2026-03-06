// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TransitOptionParams Properties
class TransitOptionParamsResponse {
  /// Transit Option Params remoteVirtualNetworkId.
  final pulumi.Input<String>? remoteVirtualNetworkId;
  /// Transit Option Params scaleUnits.
  final pulumi.Input<double>? scaleUnits;

  /// Creates a new [TransitOptionParamsResponse].
  /// [remoteVirtualNetworkId] Transit Option Params remoteVirtualNetworkId.
  /// [scaleUnits] Transit Option Params scaleUnits.
  const TransitOptionParamsResponse({
    this.remoteVirtualNetworkId,
    this.scaleUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remoteVirtualNetworkId': ?remoteVirtualNetworkId,
      'scaleUnits': ?scaleUnits,
    };
  }

  factory TransitOptionParamsResponse.fromMap(Map<String, dynamic> map) {
    return TransitOptionParamsResponse(
      remoteVirtualNetworkId: (() { final guardedValue = map['remoteVirtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleUnits: (() { final guardedValue = map['scaleUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

