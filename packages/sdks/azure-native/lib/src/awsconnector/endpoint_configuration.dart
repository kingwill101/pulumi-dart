// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EndpointConfiguration
class EndpointConfiguration {
  /// A list of endpoint types of an API (RestApi) or its custom domain name (DomainName). For an edge-optimized API and its custom domain name, the endpoint type is ``'EDGE'``. For a regional API and its custom domain name, the endpoint type is ``REGIONAL``. For a private API, the endpoint type is ``PRIVATE``.
  final pulumi.Input<List<String>?>? types;
  /// A list of VpcEndpointIds of an API (RestApi) against which to create Route53 ALIASes. It is only supported for ``PRIVATE`` endpoint type.
  final pulumi.Input<List<String>?>? vpcEndpointIds;

  /// Creates a new [EndpointConfiguration].
  /// [types] A list of endpoint types of an API (RestApi) or its custom domain name (DomainName). For an edge-optimized API and its custom domain name, the endpoint type is ``'EDGE'``. For a regional API and its custom domain name, the endpoint type is ``REGIONAL``. For a private API, the endpoint type is ``PRIVATE``.
  /// [vpcEndpointIds] A list of VpcEndpointIds of an API (RestApi) against which to create Route53 ALIASes. It is only supported for ``PRIVATE`` endpoint type.
  const EndpointConfiguration({
    this.types,
    this.vpcEndpointIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'types': ?types,
      'vpcEndpointIds': ?vpcEndpointIds,
    };
  }

  factory EndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return EndpointConfiguration(
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcEndpointIds: (() { final guardedValue = map['vpcEndpointIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
