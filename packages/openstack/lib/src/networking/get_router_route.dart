// ignore_for_file: unused_element, unnecessary_cast


class GetRouterRoute {
  final String destinationCidr;
  final String nextHop;

  /// Creates a new [GetRouterRoute].
  /// [destinationCidr] Required.
  /// [nextHop] Required.
  GetRouterRoute({
    required this.destinationCidr,
    required this.nextHop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'nextHop': nextHop,
    };
  }

  factory GetRouterRoute.fromMap(Map<String, dynamic> map) {
    return GetRouterRoute(
      destinationCidr: map['destinationCidr'] as String,
      nextHop: map['nextHop'] as String,
    );
  }
}

