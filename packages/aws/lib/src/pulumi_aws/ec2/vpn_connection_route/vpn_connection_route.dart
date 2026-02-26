// ignore_for_file: unused_element, unnecessary_cast

class VpnConnectionRoute {
  /// The CIDR block associated with the local subnet of the customer data center.
  final String? destinationCidrBlock;

  /// Indicates how the routes were provided.
  final String? source;

  /// The current state of the static route.
  final String? state;

  VpnConnectionRoute({
    this.destinationCidrBlock,
    this.source,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationCidrBlockValue = destinationCidrBlock;
    if (destinationCidrBlockValue != null) {
      map['destinationCidrBlock'] = destinationCidrBlockValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory VpnConnectionRoute.fromMap(Map<String, dynamic> map) {
    return VpnConnectionRoute(
      destinationCidrBlock: map['destinationCidrBlock'] == null
          ? null
          : map['destinationCidrBlock'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
