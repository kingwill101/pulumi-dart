// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerConnectionPoolHttp {
  final pulumi.Input<int> maxConnections;
  final pulumi.Input<int> maxPendingRequests;

  /// Creates a new [GetVirtualGatewaySpecListenerConnectionPoolHttp].
  /// [maxConnections] Required.
  /// [maxPendingRequests] Required.
  const GetVirtualGatewaySpecListenerConnectionPoolHttp({
    required this.maxConnections,
    required this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': maxPendingRequests,
    };
  }

  factory GetVirtualGatewaySpecListenerConnectionPoolHttp.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerConnectionPoolHttp(
      maxConnections: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxConnections'])),
      maxPendingRequests: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxPendingRequests'])),
    );
  }
}
