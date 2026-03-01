// ignore_for_file: unused_element, unnecessary_cast

import 'plan_details.dart';
import 'user_info.dart';

/// Properties specific to the monitor resource.
class MonitorProperties {
  /// Flag to determine if User API Key has to be generated and shared.
  final bool? generateApiKey;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final String? monitoringStatus;
  /// Plan details of the monitor resource.
  final PlanDetails? planDetails;
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
  /// User information.
  final UserInfo? userInfo;
  /// Version of elastic of the monitor resource
  final String? version;

  /// Creates a new [MonitorProperties].
  /// [generateApiKey] Flag to determine if User API Key has to be generated and shared.
  /// [monitoringStatus] Flag specifying if the resource monitoring is enabled or disabled.
  /// [planDetails] Plan details of the monitor resource.
  /// [provisioningState] Provisioning state of the monitor resource.
  /// [saaSAzureSubscriptionStatus] Status of Azure Subscription where Marketplace SaaS is located.
  /// [sourceCampaignId] A unique identifier associated with the campaign.
  /// [sourceCampaignName] Name of the marketing campaign.
  /// [subscriptionState] State of the Azure Subscription containing the monitor resource
  /// [userInfo] User information.
  /// [version] Version of elastic of the monitor resource
  MonitorProperties({
    this.generateApiKey,
    this.monitoringStatus,
    this.planDetails,
    this.provisioningState,
    this.saaSAzureSubscriptionStatus,
    this.sourceCampaignId,
    this.sourceCampaignName,
    this.subscriptionState,
    this.userInfo,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generateApiKey': ?generateApiKey,
      'monitoringStatus': ?monitoringStatus,
      'planDetails': ?planDetails == null ? null : planDetails!.toMap(),
      'provisioningState': ?provisioningState,
      'saaSAzureSubscriptionStatus': ?saaSAzureSubscriptionStatus,
      'sourceCampaignId': ?sourceCampaignId,
      'sourceCampaignName': ?sourceCampaignName,
      'subscriptionState': ?subscriptionState,
      'userInfo': ?userInfo == null ? null : userInfo!.toMap(),
      'version': ?version,
    };
  }

  factory MonitorProperties.fromMap(Map<String, dynamic> map) {
    return MonitorProperties(
      generateApiKey: map['generateApiKey'] == null ? null : map['generateApiKey'] as bool,
      monitoringStatus: map['monitoringStatus'] == null ? null : map['monitoringStatus'] as String,
      planDetails: map['planDetails'] == null ? null : PlanDetails.fromMap((map['planDetails'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      saaSAzureSubscriptionStatus: map['saaSAzureSubscriptionStatus'] == null ? null : map['saaSAzureSubscriptionStatus'] as String,
      sourceCampaignId: map['sourceCampaignId'] == null ? null : map['sourceCampaignId'] as String,
      sourceCampaignName: map['sourceCampaignName'] == null ? null : map['sourceCampaignName'] as String,
      subscriptionState: map['subscriptionState'] == null ? null : map['subscriptionState'] as String,
      userInfo: map['userInfo'] == null ? null : UserInfo.fromMap((map['userInfo'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

