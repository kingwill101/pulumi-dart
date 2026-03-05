// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_managed_identity_properties_response.dart';
import 'dnssettings_response.dart';
import 'frontend_setting_response.dart';
import 'marketplace_details_response.dart';
import 'network_profile_response.dart';
import 'panorama_config_response.dart';
import 'plan_data_response.dart';
import 'rulestack_details_response.dart';
import 'strata_cloud_manager_config_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// Associated Rulestack
  final RulestackDetailsResponse? associatedRulestack;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// DNS settings for Firewall
  final DNSSettingsResponse dnsSettings;
  /// Frontend settings for Firewall
  final List<FrontendSettingResponse>? frontEndSettings;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The managed service identities assigned to this resource.
  final AzureResourceManagerManagedIdentityPropertiesResponse? identity;
  /// Panorama Managed: Default is False. Default will be CloudSec managed
  final String? isPanoramaManaged;
  /// Strata Cloud Managed: Default is False. Default will be CloudSec managed
  final String? isStrataCloudManaged;
  /// The geo-location where the resource lives
  final String location;
  /// Marketplace details
  final MarketplaceDetailsResponse marketplaceDetails;
  /// The name of the resource
  final String name;
  /// Network settings
  final NetworkProfileResponse networkProfile;
  /// panEtag info
  final String? panEtag;
  /// Panorama Configuration
  final PanoramaConfigResponse? panoramaConfig;
  /// Billing plan information.
  final PlanDataResponse planData;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Strata Cloud Manager Configuration, only applicable if Strata Cloud Manager is selected.
  final StrataCloudManagerConfigResponse? strataCloudManagerConfig;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFirewallResult].
  /// [associatedRulestack] Associated Rulestack
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dnsSettings] DNS settings for Firewall
  /// [frontEndSettings] Frontend settings for Firewall
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The managed service identities assigned to this resource.
  /// [isPanoramaManaged] Panorama Managed: Default is False. Default will be CloudSec managed
  /// [isStrataCloudManaged] Strata Cloud Managed: Default is False. Default will be CloudSec managed
  /// [location] The geo-location where the resource lives
  /// [marketplaceDetails] Marketplace details
  /// [name] The name of the resource
  /// [networkProfile] Network settings
  /// [panEtag] panEtag info
  /// [panoramaConfig] Panorama Configuration
  /// [planData] Billing plan information.
  /// [provisioningState] Provisioning state of the resource.
  /// [strataCloudManagerConfig] Strata Cloud Manager Configuration, only applicable if Strata Cloud Manager is selected.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFirewallResult({
    this.associatedRulestack,
    required this.azureApiVersion,
    required this.dnsSettings,
    this.frontEndSettings,
    required this.id,
    this.identity,
    this.isPanoramaManaged,
    this.isStrataCloudManaged,
    required this.location,
    required this.marketplaceDetails,
    required this.name,
    required this.networkProfile,
    this.panEtag,
    this.panoramaConfig,
    required this.planData,
    required this.provisioningState,
    this.strataCloudManagerConfig,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRulestack': ?associatedRulestack?.toMap(),
      'azureApiVersion': azureApiVersion,
      'dnsSettings': dnsSettings.toMap(),
      'frontEndSettings': ?(() { final guardedValue = frontEndSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<FrontendSettingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'identity': ?identity?.toMap(),
      'isPanoramaManaged': ?isPanoramaManaged,
      'isStrataCloudManaged': ?isStrataCloudManaged,
      'location': location,
      'marketplaceDetails': marketplaceDetails.toMap(),
      'name': name,
      'networkProfile': networkProfile.toMap(),
      'panEtag': ?panEtag,
      'panoramaConfig': ?panoramaConfig?.toMap(),
      'planData': planData.toMap(),
      'provisioningState': provisioningState,
      'strataCloudManagerConfig': ?strataCloudManagerConfig?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      associatedRulestack: (() { final guardedValue = map['associatedRulestack']; if (guardedValue == null) return null; return RulestackDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      dnsSettings: DNSSettingsResponse.fromMap((map['dnsSettings']! as Map).cast<String, dynamic>()),
      frontEndSettings: (() { final guardedValue = map['frontEndSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontendSettingResponse>(guardedValue, (value) => FrontendSettingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return AzureResourceManagerManagedIdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isPanoramaManaged: (() { final guardedValue = map['isPanoramaManaged']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isStrataCloudManaged: (() { final guardedValue = map['isStrataCloudManaged']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      marketplaceDetails: MarketplaceDetailsResponse.fromMap((map['marketplaceDetails']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkProfile: NetworkProfileResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>()),
      panEtag: (() { final guardedValue = map['panEtag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      panoramaConfig: (() { final guardedValue = map['panoramaConfig']; if (guardedValue == null) return null; return PanoramaConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      planData: PlanDataResponse.fromMap((map['planData']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      strataCloudManagerConfig: (() { final guardedValue = map['strataCloudManagerConfig']; if (guardedValue == null) return null; return StrataCloudManagerConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

