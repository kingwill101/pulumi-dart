// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_properties_response.dart';
import 'plan_details_response.dart';

/// Properties specific to the monitor resource.
class MonitorPropertiesResponse {
  /// Elastic cloud properties.
  final pulumi.Input<ElasticPropertiesResponse?>? elasticProperties;
  /// Flag to determine if User API Key has to be generated and shared.
  final pulumi.Input<bool?>? generateApiKey;
  final pulumi.Input<String> liftrResourceCategory;
  /// The priority of the resource.
  final pulumi.Input<int> liftrResourcePreference;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final pulumi.Input<String?>? monitoringStatus;
  /// Plan details of the monitor resource.
  final pulumi.Input<PlanDetailsResponse?>? planDetails;
  /// Provisioning state of the monitor resource.
  final pulumi.Input<String?>? provisioningState;
  /// Status of Azure Subscription where Marketplace SaaS is located.
  final pulumi.Input<String?>? saaSAzureSubscriptionStatus;
  /// A unique identifier associated with the campaign.
  final pulumi.Input<String?>? sourceCampaignId;
  /// Name of the marketing campaign.
  final pulumi.Input<String?>? sourceCampaignName;
  /// State of the Azure Subscription containing the monitor resource
  final pulumi.Input<String?>? subscriptionState;
  /// Version of elastic of the monitor resource
  final pulumi.Input<String?>? version;

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
  const MonitorPropertiesResponse({
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
      'elasticProperties': ?pulumi.Input.mapOptionalInputValue<ElasticPropertiesResponse, Map<String, dynamic>>(elasticProperties, (value) => value.toMap()),
      'generateApiKey': ?generateApiKey,
      'liftrResourceCategory': liftrResourceCategory,
      'liftrResourcePreference': liftrResourcePreference,
      'monitoringStatus': ?monitoringStatus,
      'planDetails': ?pulumi.Input.mapOptionalInputValue<PlanDetailsResponse, Map<String, dynamic>>(planDetails, (value) => value.toMap()),
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
      elasticProperties: (() { final guardedValue = map['elasticProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generateApiKey: (() { final guardedValue = map['generateApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      liftrResourceCategory: pulumi.Input.fromValue(map['liftrResourceCategory'] as String),
      liftrResourcePreference: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['liftrResourcePreference'])),
      monitoringStatus: (() { final guardedValue = map['monitoringStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planDetails: (() { final guardedValue = map['planDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saaSAzureSubscriptionStatus: (() { final guardedValue = map['saaSAzureSubscriptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCampaignId: (() { final guardedValue = map['sourceCampaignId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCampaignName: (() { final guardedValue = map['sourceCampaignName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionState: (() { final guardedValue = map['subscriptionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
