// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestApiEndpointConfiguration {
  /// The IP address types that can invoke an API (RestApi). Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke an API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke an API. For the `PRIVATE` endpoint type, only `dualstack` is supported. The provider performs drift detection for this argument only when the value is provided.
  final pulumi.Input<String>? ipAddressType;
  /// List of endpoint types. This resource currently only supports managing a single value. Valid values: `EDGE`, `REGIONAL` or `PRIVATE`. If unspecified, defaults to `EDGE`. If set to `PRIVATE` recommend to set `put_rest_api_mode` = `merge` to not cause the endpoints and associated Route53 records to be deleted. Refer to the [documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/create-regional-api.html) for more information on the difference between edge-optimized and regional APIs.
  final pulumi.Input<String> types;
  /// Set of VPC Endpoint identifiers. It is only supported for `PRIVATE` endpoint type. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-endpoint-configuration` extension `vpcEndpointIds` property](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-endpoint-configuration.html). If the argument value is provided and is different than the OpenAPI value, **the argument value will override the OpenAPI value**.
  final pulumi.Input<List<String>>? vpcEndpointIds;

  /// Creates a new [RestApiEndpointConfiguration].
  /// [ipAddressType] The IP address types that can invoke an API (RestApi). Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke an API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke an API. For the `PRIVATE` endpoint type, only `dualstack` is supported. The provider performs drift detection for this argument only when the value is provided.
  /// [types] List of endpoint types. This resource currently only supports managing a single value. Valid values: `EDGE`, `REGIONAL` or `PRIVATE`. If unspecified, defaults to `EDGE`. If set to `PRIVATE` recommend to set `put_rest_api_mode` = `merge` to not cause the endpoints and associated Route53 records to be deleted. Refer to the [documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/create-regional-api.html) for more information on the difference between edge-optimized and regional APIs.
  /// [vpcEndpointIds] Set of VPC Endpoint identifiers. It is only supported for `PRIVATE` endpoint type. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-endpoint-configuration` extension `vpcEndpointIds` property](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-endpoint-configuration.html). If the argument value is provided and is different than the OpenAPI value, **the argument value will override the OpenAPI value**.
  RestApiEndpointConfiguration({
    this.ipAddressType,
    required this.types,
    this.vpcEndpointIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'types': types,
      'vpcEndpointIds': ?vpcEndpointIds,
    };
  }

  factory RestApiEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return RestApiEndpointConfiguration(
      ipAddressType: map['ipAddressType'] == null ? null : ((map['ipAddressType'] as String).input()).input(),
      types: (map['types'] as String).input(),
      vpcEndpointIds: map['vpcEndpointIds'] == null ? null : (((map['vpcEndpointIds'] as List).cast<String>()).input()).input(),
    );
  }
}

