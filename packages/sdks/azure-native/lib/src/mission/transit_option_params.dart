// ignore_for_file: unused_element, unnecessary_cast


/// TransitOptionParams Properties
class TransitOptionParams {
  /// Transit Option Params remoteVirtualNetworkId.
  final String? remoteVirtualNetworkId;
  /// Transit Option Params scaleUnits.
  final double? scaleUnits;

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
      remoteVirtualNetworkId: map['remoteVirtualNetworkId'] == null ? null : map['remoteVirtualNetworkId'] as String,
      scaleUnits: map['scaleUnits'] == null ? null : map['scaleUnits'] as double,
    );
  }
}

