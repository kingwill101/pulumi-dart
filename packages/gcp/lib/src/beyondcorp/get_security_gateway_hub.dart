// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_hub_internet_gateway.dart';

class GetSecurityGatewayHub {
  /// Internet Gateway configuration.
  final List<GetSecurityGatewayHubInternetGateway> internetGateways;
  final String region;

  /// Creates a new [GetSecurityGatewayHub].
  /// [internetGateways] Internet Gateway configuration.
  /// [region] Required.
  GetSecurityGatewayHub({required this.internetGateways, required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGateways':
          pulumi.Input.encodeList<
            GetSecurityGatewayHubInternetGateway,
            Map<String, dynamic>
          >(internetGateways, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetSecurityGatewayHub.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayHub(
      internetGateways:
          pulumi.Input.decodeList<GetSecurityGatewayHubInternetGateway>(
            map['internetGateways'],
            (value) => GetSecurityGatewayHubInternetGateway.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      region: map['region'] as String,
    );
  }
}
