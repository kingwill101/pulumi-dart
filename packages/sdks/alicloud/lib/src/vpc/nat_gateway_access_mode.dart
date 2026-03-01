// ignore_for_file: unused_element, unnecessary_cast


class NatGatewayAccessMode {
  /// The mode of Access. Valid values:
  final String? modeValue;
  /// The type of Tunnel. Valid values: `geneve`. **NOTE:** `tunnel_type` takes effect only if `mode_value` is set to `tunnel`.
  final String? tunnelType;

  /// Creates a new [NatGatewayAccessMode].
  /// [modeValue] The mode of Access. Valid values:
  /// [tunnelType] The type of Tunnel. Valid values: `geneve`. **NOTE:** `tunnel_type` takes effect only if `mode_value` is set to `tunnel`.
  NatGatewayAccessMode({
    this.modeValue,
    this.tunnelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modeValue': ?modeValue,
      'tunnelType': ?tunnelType,
    };
  }

  factory NatGatewayAccessMode.fromMap(Map<String, dynamic> map) {
    return NatGatewayAccessMode(
      modeValue: map['modeValue'] == null ? null : map['modeValue'] as String,
      tunnelType: map['tunnelType'] == null ? null : map['tunnelType'] as String,
    );
  }
}

