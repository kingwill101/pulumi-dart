// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerConnectionPoolHttp2 {
  final pulumi.Input<int> maxRequests;

  /// Creates a new [GetVirtualGatewaySpecListenerConnectionPoolHttp2].
  /// [maxRequests] Required.
  GetVirtualGatewaySpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory GetVirtualGatewaySpecListenerConnectionPoolHttp2.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerConnectionPoolHttp2(
      maxRequests: (map['maxRequests'] as int).input(),
    );
  }
}

