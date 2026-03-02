// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'marketplace_saa_sinfo_response.dart';

/// The properties of Azure Subscription ID to which the Organization of the logged in user belongs and gets billed into.
class ElasticOrganizationToAzureSubscriptionMappingResponsePropertiesResponse {
  /// The Azure Subscription ID to which the Organization belongs and gets billed into. This is empty for a new user OR a user without an Elastic Organization.
  final pulumi.Input<String>? billedAzureSubscriptionId;
  /// The Elastic Organization Id.
  final pulumi.Input<String>? elasticOrganizationId;
  /// The Elastic Organization Name.
  final pulumi.Input<String>? elasticOrganizationName;
  /// Marketplace SaaS Info of the resource.
  final pulumi.Input<MarketplaceSaaSInfoResponse> marketplaceSaasInfo;

  /// Creates a new [ElasticOrganizationToAzureSubscriptionMappingResponsePropertiesResponse].
  /// [billedAzureSubscriptionId] The Azure Subscription ID to which the Organization belongs and gets billed into. This is empty for a new user OR a user without an Elastic Organization.
  /// [elasticOrganizationId] The Elastic Organization Id.
  /// [elasticOrganizationName] The Elastic Organization Name.
  /// [marketplaceSaasInfo] Marketplace SaaS Info of the resource.
  ElasticOrganizationToAzureSubscriptionMappingResponsePropertiesResponse({
    this.billedAzureSubscriptionId,
    this.elasticOrganizationId,
    this.elasticOrganizationName,
    required this.marketplaceSaasInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billedAzureSubscriptionId': ?billedAzureSubscriptionId,
      'elasticOrganizationId': ?elasticOrganizationId,
      'elasticOrganizationName': ?elasticOrganizationName,
      'marketplaceSaasInfo': pulumi.Input.mapInputValue<MarketplaceSaaSInfoResponse, Map<String, dynamic>>(marketplaceSaasInfo, (value) => value.toMap()),
    };
  }

  factory ElasticOrganizationToAzureSubscriptionMappingResponsePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticOrganizationToAzureSubscriptionMappingResponsePropertiesResponse(
      billedAzureSubscriptionId: map['billedAzureSubscriptionId'] == null ? null : (map['billedAzureSubscriptionId'] as String).input(),
      elasticOrganizationId: map['elasticOrganizationId'] == null ? null : (map['elasticOrganizationId'] as String).input(),
      elasticOrganizationName: map['elasticOrganizationName'] == null ? null : (map['elasticOrganizationName'] as String).input(),
      marketplaceSaasInfo: (MarketplaceSaaSInfoResponse.fromMap((map['marketplaceSaasInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

