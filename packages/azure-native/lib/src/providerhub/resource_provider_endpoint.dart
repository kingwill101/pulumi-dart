// ignore_for_file: unused_element, unnecessary_cast

import 'resource_provider_endpoint_features_rule.dart';

class ResourceProviderEndpoint {
  /// The api versions.
  final List<String>? apiVersions;
  /// Whether the endpoint is enabled.
  final bool? enabled;
  /// The endpoint type.
  final String? endpointType;
  /// The endpoint uri.
  final String? endpointUri;
  /// The feature rules.
  final ResourceProviderEndpointFeaturesRule? featuresRule;
  /// The locations.
  final List<String>? locations;
  /// The required features.
  final List<String>? requiredFeatures;
  /// The sku link.
  final String? skuLink;
  /// The timeout.
  final String? timeout;

  /// Creates a new [ResourceProviderEndpoint].
  /// [apiVersions] The api versions.
  /// [enabled] Whether the endpoint is enabled.
  /// [endpointType] The endpoint type.
  /// [endpointUri] The endpoint uri.
  /// [featuresRule] The feature rules.
  /// [locations] The locations.
  /// [requiredFeatures] The required features.
  /// [skuLink] The sku link.
  /// [timeout] The timeout.
  ResourceProviderEndpoint({
    this.apiVersions,
    this.enabled,
    this.endpointType,
    this.endpointUri,
    this.featuresRule,
    this.locations,
    this.requiredFeatures,
    this.skuLink,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersions': ?apiVersions,
      'enabled': ?enabled,
      'endpointType': ?endpointType,
      'endpointUri': ?endpointUri,
      'featuresRule': ?featuresRule == null ? null : featuresRule!.toMap(),
      'locations': ?locations,
      'requiredFeatures': ?requiredFeatures,
      'skuLink': ?skuLink,
      'timeout': ?timeout,
    };
  }

  factory ResourceProviderEndpoint.fromMap(Map<String, dynamic> map) {
    return ResourceProviderEndpoint(
      apiVersions: map['apiVersions'] == null ? null : (map['apiVersions'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      featuresRule: map['featuresRule'] == null ? null : ResourceProviderEndpointFeaturesRule.fromMap((map['featuresRule'] as Map).cast<String, dynamic>()),
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
      skuLink: map['skuLink'] == null ? null : map['skuLink'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

