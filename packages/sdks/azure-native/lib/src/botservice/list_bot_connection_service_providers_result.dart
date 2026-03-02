// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_provider_response.dart';

/// Result data returned by listBotConnectionServiceProviders.
class ListBotConnectionServiceProvidersResult {
  /// The link used to get the next page of bot service providers.
  final String? nextLink;
  /// Gets the list of bot service providers and their properties.
  final List<ServiceProviderResponse> value;

  /// Creates a new [ListBotConnectionServiceProvidersResult].
  /// [nextLink] The link used to get the next page of bot service providers.
  /// [value] Gets the list of bot service providers and their properties.
  ListBotConnectionServiceProvidersResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<ServiceProviderResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListBotConnectionServiceProvidersResult.fromMap(Map<String, dynamic> map) {
    return ListBotConnectionServiceProvidersResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: pulumi.Input.decodeList<ServiceProviderResponse>(map['value'], (value) => ServiceProviderResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

