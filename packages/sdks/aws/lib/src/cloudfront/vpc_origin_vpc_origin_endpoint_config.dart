// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_origin_vpc_origin_endpoint_config_origin_ssl_protocols.dart';

class VpcOriginVpcOriginEndpointConfig {
  /// The VPC origin ARN.
  final pulumi.Input<String> arn;

  /// The HTTP port for the CloudFront VPC origin endpoint configuration.
  final pulumi.Input<int> httpPort;

  /// The HTTPS port for the CloudFront VPC origin endpoint configuration.
  final pulumi.Input<int> httpsPort;

  /// The name of the CloudFront VPC origin endpoint configuration.
  final pulumi.Input<String> name;

  /// The origin protocol policy for the CloudFront VPC origin endpoint configuration.
  final pulumi.Input<String> originProtocolPolicy;

  /// A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin.
  final pulumi.Input<VpcOriginVpcOriginEndpointConfigOriginSslProtocols>
  originSslProtocols;

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
      'originSslProtocols':
          pulumi.Input.mapInputValue<
            VpcOriginVpcOriginEndpointConfigOriginSslProtocols,
            Map<String, dynamic>
          >(originSslProtocols, (value) => value.toMap()),
    };
  }

  factory VpcOriginVpcOriginEndpointConfig.fromMap(Map<String, dynamic> map) {
    return VpcOriginVpcOriginEndpointConfig(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      httpPort: pulumi.Input.fromValue(map['httpPort'] as int),
      httpsPort: pulumi.Input.fromValue(map['httpsPort'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      originProtocolPolicy: pulumi.Input.fromValue(
        map['originProtocolPolicy'] as String,
      ),
      originSslProtocols: pulumi.Input.fromValue(
        VpcOriginVpcOriginEndpointConfigOriginSslProtocols.fromMap(
          (map['originSslProtocols']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
