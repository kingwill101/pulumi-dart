// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_details.dart';
import 'user_info.dart';

/// Properties specific to the monitor resource.
class MonitorProperties {
  /// Flag to determine if User API Key has to be generated and shared.
  final pulumi.Input<bool>? generateApiKey;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final pulumi.Input<String>? monitoringStatus;
  /// Plan details of the monitor resource.
  final pulumi.Input<PlanDetails>? planDetails;
  /// Provisioning state of the monitor resource.
  final pulumi.Input<String>? provisioningState;
  /// Status of Azure Subscription where Marketplace SaaS is located.
  final pulumi.Input<String>? saaSAzureSubscriptionStatus;
  /// A unique identifier associated with the campaign.
  final pulumi.Input<String>? sourceCampaignId;
  /// Name of the marketing campaign.
  final pulumi.Input<String>? sourceCampaignName;
  /// State of the Azure Subscription containing the monitor resource
  final pulumi.Input<String>? subscriptionState;
  /// User information.
  final pulumi.Input<UserInfo>? userInfo;
  /// Version of elastic of the monitor resource
  final pulumi.Input<String>? version;

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
      'planDetails': ?pulumi.Input.mapOptionalInputValue<PlanDetails, Map<String, dynamic>>(planDetails, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'saaSAzureSubscriptionStatus': ?saaSAzureSubscriptionStatus,
      'sourceCampaignId': ?sourceCampaignId,
      'sourceCampaignName': ?sourceCampaignName,
      'subscriptionState': ?subscriptionState,
      'userInfo': ?pulumi.Input.mapOptionalInputValue<UserInfo, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory MonitorProperties.fromMap(Map<String, dynamic> map) {
    return MonitorProperties(
      generateApiKey: (() { final guardedValue = map['generateApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      monitoringStatus: (() { final guardedValue = map['monitoringStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planDetails: (() { final guardedValue = map['planDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saaSAzureSubscriptionStatus: (() { final guardedValue = map['saaSAzureSubscriptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCampaignId: (() { final guardedValue = map['sourceCampaignId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCampaignName: (() { final guardedValue = map['sourceCampaignName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionState: (() { final guardedValue = map['subscriptionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

