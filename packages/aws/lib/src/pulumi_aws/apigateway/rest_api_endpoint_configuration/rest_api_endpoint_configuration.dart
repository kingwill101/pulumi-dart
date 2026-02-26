// ignore_for_file: unused_element, unnecessary_cast

class RestApiEndpointConfiguration {
  /// The IP address types that can invoke an API (RestApi). Valid values: <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>. Use <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> to allow only IPv4 addresses to invoke an API, or use <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span> to allow both IPv4 and IPv6 addresses to invoke an API. For the `PRIVATE` endpoint type, only <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span> is supported. The provider performs drift detection for this argument only when the value is provided.
  final String? ipAddressType;

  /// List of endpoint types. This resource currently only supports managing a single value. Valid values: `EDGE`, `REGIONAL` or `PRIVATE`. If unspecified, defaults to `EDGE`. If set to `PRIVATE` recommend to set <span pulumi-lang-nodejs="`putRestApiMode`" pulumi-lang-dotnet="`PutRestApiMode`" pulumi-lang-go="`putRestApiMode`" pulumi-lang-python="`put_rest_api_mode`" pulumi-lang-yaml="`putRestApiMode`" pulumi-lang-java="`putRestApiMode`">`put_rest_api_mode`</span> = <span pulumi-lang-nodejs="`merge`" pulumi-lang-dotnet="`Merge`" pulumi-lang-go="`merge`" pulumi-lang-python="`merge`" pulumi-lang-yaml="`merge`" pulumi-lang-java="`merge`">`merge`</span> to not cause the endpoints and associated Route53 records to be deleted. Refer to the [documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/create-regional-api.html) for more information on the difference between edge-optimized and regional APIs.
  final String types;

  /// Set of VPC Endpoint identifiers. It is only supported for `PRIVATE` endpoint type. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-endpoint-configuration` extension `vpcEndpointIds` property](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-endpoint-configuration.html). If the argument value is provided and is different than the OpenAPI value, **the argument value will override the OpenAPI value**.
  final List<String>? vpcEndpointIds;

  RestApiEndpointConfiguration({
    this.ipAddressType,
    required this.types,
    this.vpcEndpointIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    map['types'] = types;
    final vpcEndpointIdsValue = vpcEndpointIds;
    if (vpcEndpointIdsValue != null) {
      map['vpcEndpointIds'] = vpcEndpointIdsValue;
    }
    return map;
  }

  factory RestApiEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return RestApiEndpointConfiguration(
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      types: map['types'] as String,
      vpcEndpointIds: map['vpcEndpointIds'] == null
          ? null
          : (map['vpcEndpointIds'] as List).cast<String>(),
    );
  }
}
