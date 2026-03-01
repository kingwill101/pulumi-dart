// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_origin_vpc_origin_endpoint_config_origin_ssl_protocols.dart';

class VpcOriginVpcOriginEndpointConfig {
  /// The VPC origin ARN.
  final String arn;
  /// The HTTP port for the CloudFront VPC origin endpoint configuration.
  final int httpPort;
  /// The HTTPS port for the CloudFront VPC origin endpoint configuration.
  final int httpsPort;
  /// The name of the CloudFront VPC origin endpoint configuration.
  final String name;
  /// The origin protocol policy for the CloudFront VPC origin endpoint configuration.
  final String originProtocolPolicy;
  /// A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin.
  final VpcOriginVpcOriginEndpointConfigOriginSslProtocols originSslProtocols;

  /// Creates a new [VpcOriginVpcOriginEndpointConfig].
  /// [arn] The VPC origin ARN.
  /// [httpPort] The HTTP port for the CloudFront VPC origin endpoint configuration.
  /// [httpsPort] The HTTPS port for the CloudFront VPC origin endpoint configuration.
  /// [name] The name of the CloudFront VPC origin endpoint configuration.
  /// [originProtocolPolicy] The origin protocol policy for the CloudFront VPC origin endpoint configuration.
  /// [originSslProtocols] A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin.
  VpcOriginVpcOriginEndpointConfig({
    required this.arn,
    required this.httpPort,
    required this.httpsPort,
    required this.name,
    required this.originProtocolPolicy,
    required this.originSslProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'httpPort': httpPort,
      'httpsPort': httpsPort,
      'name': name,
      'originProtocolPolicy': originProtocolPolicy,
      'originSslProtocols': originSslProtocols.toMap(),
    };
  }

  factory VpcOriginVpcOriginEndpointConfig.fromMap(Map<String, dynamic> map) {
    return VpcOriginVpcOriginEndpointConfig(
      arn: map['arn'] as String,
      httpPort: map['httpPort'] as int,
      httpsPort: map['httpsPort'] as int,
      name: map['name'] as String,
      originProtocolPolicy: map['originProtocolPolicy'] as String,
      originSslProtocols: VpcOriginVpcOriginEndpointConfigOriginSslProtocols.fromMap((map['originSslProtocols'] as Map).cast<String, dynamic>()),
    );
  }
}

