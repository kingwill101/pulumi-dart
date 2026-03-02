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
  TransitOptionParamsResponse({
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
      remoteVirtualNetworkId: map['remoteVirtualNetworkId'] == null ? null : (map['remoteVirtualNetworkId']! as String).input(),
      scaleUnits: map['scaleUnits'] == null ? null : (map['scaleUnits']! as double).input(),
    );
  }
}

