// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNameEndpointConfiguration {
  /// The IP address types that can invoke a DomainName. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke a DomainName, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke a DomainName. For the `PRIVATE` endpoint type, only `dualstack` is supported. Terraform performs drift detection for this argument only when the value is provided.
  final pulumi.Input<String>? ipAddressType;

  /// A list of endpoint types of an API or its custom domain name. For an edge-optimized API and its custom domain name, the endpoint type is `EDGE`. For a regional API and its custom domain name, the endpoint type is `REGIONAL`. For a private API, the endpoint type is `PRIVATE`.
  final pulumi.Input<String> types;

  /// Creates a new [DomainNameEndpointConfiguration].
  /// [ipAddressType] The IP address types that can invoke a DomainName. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke a DomainName, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke a DomainName. For the `PRIVATE` endpoint type, only `dualstack` is supported. Terraform performs drift detection for this argument only when the value is provided.
  /// [types] A list of endpoint types of an API or its custom domain name. For an edge-optimized API and its custom domain name, the endpoint type is `EDGE`. For a regional API and its custom domain name, the endpoint type is `REGIONAL`. For a private API, the endpoint type is `PRIVATE`.
  DomainNameEndpointConfiguration({this.ipAddressType, required this.types});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddressType': ?ipAddressType, 'types': types};
  }

  factory DomainNameEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return DomainNameEndpointConfiguration(
      ipAddressType: (() {
        final guardedValue = map['ipAddressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      types: pulumi.Input.fromValue(map['types'] as String),
    );
  }
}
