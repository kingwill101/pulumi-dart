// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'radius_auth_server_response.dart';

/// Result data returned by listVirtualNetworkGatewayRadiusSecrets.
class ListVirtualNetworkGatewayRadiusSecretsResult {
  /// URL to get the next set of operation list results if there are any.
  final String? nextLink;
  /// List of Radius servers with respective radius secrets.
  final List<RadiusAuthServerResponse>? value;

  /// Creates a new [ListVirtualNetworkGatewayRadiusSecretsResult].
  /// [nextLink] URL to get the next set of operation list results if there are any.
  /// [value] List of Radius servers with respective radius secrets.
  ListVirtualNetworkGatewayRadiusSecretsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<RadiusAuthServerResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListVirtualNetworkGatewayRadiusSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListVirtualNetworkGatewayRadiusSecretsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<RadiusAuthServerResponse>(map['value'], (value) => RadiusAuthServerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

