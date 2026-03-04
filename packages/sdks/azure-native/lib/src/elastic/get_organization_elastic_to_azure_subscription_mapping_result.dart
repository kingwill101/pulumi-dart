// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_organization_to_azure_subscription_mapping_response_properties_response.dart';

/// Result data returned by getOrganizationElasticToAzureSubscriptionMapping.
class GetOrganizationElasticToAzureSubscriptionMappingResult {
  /// The properties of Azure Subscription ID to which the Organization of the logged in user belongs and gets billed into.
  final ElasticOrganizationToAzureSubscriptionMappingResponsePropertiesResponse
  properties;

  /// Creates a new [GetOrganizationElasticToAzureSubscriptionMappingResult].
  /// [properties] The properties of Azure Subscription ID to which the Organization of the logged in user belongs and gets billed into.
  GetOrganizationElasticToAzureSubscriptionMappingResult({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'properties': properties.toMap()};
  }

  factory GetOrganizationElasticToAzureSubscriptionMappingResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationElasticToAzureSubscriptionMappingResult(
      properties:
          ElasticOrganizationToAzureSubscriptionMappingResponsePropertiesResponse.fromMap(
            (map['properties']! as Map).cast<String, dynamic>(),
          ),
    );
  }
}
