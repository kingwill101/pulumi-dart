// ignore_for_file: unused_element, unnecessary_cast


class GetInterfacePublicIpv6Range {
  /// The IPv6 range.
  final String range;
  /// The route target for this IPv6 range.
  final String routeTarget;

  /// Creates a new [GetInterfacePublicIpv6Range].
  /// [range] The IPv6 range.
  /// [routeTarget] The route target for this IPv6 range.
  GetInterfacePublicIpv6Range({
    required this.range,
    required this.routeTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
      'routeTarget': routeTarget,
    };
  }

  factory GetInterfacePublicIpv6Range.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublicIpv6Range(
      range: map['range'] as String,
      routeTarget: map['routeTarget'] as String,
    );
  }
}

