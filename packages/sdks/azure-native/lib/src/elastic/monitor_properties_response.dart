// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_properties_response.dart';
import 'plan_details_response.dart';

/// Properties specific to the monitor resource.
class MonitorPropertiesResponse {
  /// Elastic cloud properties.
  final ElasticPropertiesResponse? elasticProperties;
  /// Flag to determine if User API Key has to be generated and shared.
  final bool? generateApiKey;
  final String liftrResourceCategory;
  /// The priority of the resource.
  final int liftrResourcePreference;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final String? monitoringStatus;
  /// Plan details of the monitor resource.
  final PlanDetailsResponse? planDetails;
  /// Provisioning state of the monitor resource.
  final String? provisioningState;
  /// Status of Azure Subscription where Marketplace SaaS is located.
  final String? saaSAzureSubscriptionStatus;
  /// A unique identifier associated with the campaign.
  final String? sourceCampaignId;
  /// Name of the marketing campaign.
  final String? sourceCampaignName;
  /// State of the Azure Subscription containing the monitor resource
  final String? subscriptionState;
  /// Version of elastic of the monitor resource
  final String? version;

  /// Creates a new [MonitorPropertiesResponse].
  /// [elasticProperties] Elastic cloud properties.
  /// [generateApiKey] Flag to determine if User API Key has to be generated and shared.
  /// [liftrResourceCategory] Required.
  /// [liftrResourcePreference] The priority of the resource.
  /// [monitoringStatus] Flag specifying if the resource monitoring is enabled or disabled.
  /// [planDetails] Plan details of the monitor resource.
  /// [provisioningState] Provisioning state of the monitor resource.
  /// [saaSAzureSubscriptionStatus] Status of Azure Subscription where Marketplace SaaS is located.
  /// [sourceCampaignId] A unique identifier associated with the campaign.
  /// [sourceCampaignName] Name of the marketing campaign.
  /// [subscriptionState] State of the Azure Subscription containing the monitor resource
  /// [version] Version of elastic of the monitor resource
  MonitorPropertiesResponse({
    this.elasticProperties,
    this.generateApiKey,
    required this.liftrResourceCategory,
    required this.liftrResourcePreference,
    this.monitoringStatus,
    this.planDetails,
    this.provisioningState,
    this.saaSAzureSubscriptionStatus,
    this.sourceCampaignId,
    this.sourceCampaignName,
    this.subscriptionState,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticProperties': ?elasticProperties == null ? null : elasticProperties!.toMap(),
      'generateApiKey': ?generateApiKey,
      'liftrResourceCategory': liftrResourceCategory,
      'liftrResourcePreference': liftrResourcePreference,
      'monitoringStatus': ?monitoringStatus,
      'planDetails': ?planDetails == null ? null : planDetails!.toMap(),
      'provisioningState': ?provisioningState,
      'saaSAzureSubscriptionStatus': ?saaSAzureSubscriptionStatus,
      'sourceCampaignId': ?sourceCampaignId,
      'sourceCampaignName': ?sourceCampaignName,
      'subscriptionState': ?subscriptionState,
      'version': ?version,
    };
  }

  factory MonitorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitorPropertiesResponse(
      elasticProperties: map['elasticProperties'] == null ? null : ElasticPropertiesResponse.fromMap((map['elasticProperties'] as Map).cast<String, dynamic>()),
      generateApiKey: map['generateApiKey'] == null ? null : map['generateApiKey'] as bool,
      liftrResourceCategory: map['liftrResourceCategory'] as String,
      liftrResourcePreference: map['liftrResourcePreference'] as int,
      monitoringStatus: map['monitoringStatus'] == null ? null : map['monitoringStatus'] as String,
      planDetails: map['planDetails'] == null ? null : PlanDetailsResponse.fromMap((map['planDetails'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      saaSAzureSubscriptionStatus: map['saaSAzureSubscriptionStatus'] == null ? null : map['saaSAzureSubscriptionStatus'] as String,
      sourceCampaignId: map['sourceCampaignId'] == null ? null : map['sourceCampaignId'] as String,
      sourceCampaignName: map['sourceCampaignName'] == null ? null : map['sourceCampaignName'] as String,
      subscriptionState: map['subscriptionState'] == null ? null : map['subscriptionState'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

