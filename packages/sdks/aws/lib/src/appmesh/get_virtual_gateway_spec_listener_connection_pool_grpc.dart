// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerConnectionPoolGrpc {
  final pulumi.Input<int> maxRequests;

  /// Creates a new [GetVirtualGatewaySpecListenerConnectionPoolGrpc].
  /// [maxRequests] Required.
  const GetVirtualGatewaySpecListenerConnectionPoolGrpc({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory GetVirtualGatewaySpecListenerConnectionPoolGrpc.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerConnectionPoolGrpc(
      maxRequests: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxRequests'])),
    );
  }
}
