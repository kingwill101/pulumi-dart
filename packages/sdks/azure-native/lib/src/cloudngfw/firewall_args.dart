// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_managed_identity_properties.dart';
import 'dnssettings.dart';
import 'frontend_setting.dart';
import 'marketplace_details.dart';
import 'network_profile.dart';
import 'panorama_config.dart';
import 'plan_data.dart';
import 'rulestack_details.dart';
import 'strata_cloud_manager_config.dart';

/// {@template pulumi_cloudngfw_firewall_args_doc}
/// The set of arguments for Firewall.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_firewall_args_doc}
class FirewallArgs {
  /// Associated Rulestack
  final pulumi.Input<RulestackDetails>? associatedRulestack;
  /// DNS settings for Firewall
  final pulumi.Input<DNSSettings> dnsSettings;
  /// Firewall resource name
  final pulumi.Input<String>? firewallName;
  /// Frontend settings for Firewall
  final pulumi.Input<List<FrontendSetting>>? frontEndSettings;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<AzureResourceManagerManagedIdentityProperties>? identity;
  /// Panorama Managed: Default is False. Default will be CloudSec managed
  final pulumi.Input<String>? isPanoramaManaged;
  /// Strata Cloud Managed: Default is False. Default will be CloudSec managed
  final pulumi.Input<String>? isStrataCloudManaged;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Marketplace details
  final pulumi.Input<MarketplaceDetails> marketplaceDetails;
  /// Network settings
  final pulumi.Input<NetworkProfile> networkProfile;
  /// panEtag info
  final pulumi.Input<String>? panEtag;
  /// Panorama Configuration
  final pulumi.Input<PanoramaConfig>? panoramaConfig;
  /// Billing plan information.
  final pulumi.Input<PlanData> planData;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Strata Cloud Manager Configuration, only applicable if Strata Cloud Manager is selected.
  final pulumi.Input<StrataCloudManagerConfig>? strataCloudManagerConfig;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FirewallArgs].
  /// [associatedRulestack] Associated Rulestack
  /// [dnsSettings] DNS settings for Firewall
  /// [firewallName] Firewall resource name
  /// [frontEndSettings] Frontend settings for Firewall
  /// [identity] The managed service identities assigned to this resource.
  /// [isPanoramaManaged] Panorama Managed: Default is False. Default will be CloudSec managed
  /// [isStrataCloudManaged] Strata Cloud Managed: Default is False. Default will be CloudSec managed
  /// [location] The geo-location where the resource lives
  /// [marketplaceDetails] Marketplace details
  /// [networkProfile] Network settings
  /// [panEtag] panEtag info
  /// [panoramaConfig] Panorama Configuration
  /// [planData] Billing plan information.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [strataCloudManagerConfig] Strata Cloud Manager Configuration, only applicable if Strata Cloud Manager is selected.
  /// [tags] Resource tags.
  FirewallArgs({
    this.associatedRulestack,
    required this.dnsSettings,
    this.firewallName,
    this.frontEndSettings,
    this.identity,
    this.isPanoramaManaged,
    this.isStrataCloudManaged,
    this.location,
    required this.marketplaceDetails,
    required this.networkProfile,
    this.panEtag,
    this.panoramaConfig,
    required this.planData,
    required this.resourceGroupName,
    this.strataCloudManagerConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRulestack': ?pulumi.Input.mapOptionalInputValue<RulestackDetails, Map<String, dynamic>>(associatedRulestack, (value) => value.toMap()),
      'dnsSettings': pulumi.Input.mapInputValue<DNSSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'firewallName': ?firewallName,
      'frontEndSettings': ?pulumi.Input.mapOptionalInputValue<List<FrontendSetting>, List<Map<String, dynamic>>>(frontEndSettings, (value) => pulumi.Input.encodeList<FrontendSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerManagedIdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isPanoramaManaged': ?isPanoramaManaged,
      'isStrataCloudManaged': ?isStrataCloudManaged,
      'location': ?location,
      'marketplaceDetails': pulumi.Input.mapInputValue<MarketplaceDetails, Map<String, dynamic>>(marketplaceDetails, (value) => value.toMap()),
      'networkProfile': pulumi.Input.mapInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'panEtag': ?panEtag,
      'panoramaConfig': ?pulumi.Input.mapOptionalInputValue<PanoramaConfig, Map<String, dynamic>>(panoramaConfig, (value) => value.toMap()),
      'planData': pulumi.Input.mapInputValue<PlanData, Map<String, dynamic>>(planData, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'strataCloudManagerConfig': ?pulumi.Input.mapOptionalInputValue<StrataCloudManagerConfig, Map<String, dynamic>>(strataCloudManagerConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      associatedRulestack: map['associatedRulestack'] == null ? null : (RulestackDetails.fromMap((map['associatedRulestack'] as Map).cast<String, dynamic>())).input(),
      dnsSettings: (DNSSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      firewallName: map['firewallName'] == null ? null : (map['firewallName'] as String).input(),
      frontEndSettings: map['frontEndSettings'] == null ? null : (pulumi.Input.decodeList<FrontendSetting>(map['frontEndSettings'], (value) => FrontendSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (AzureResourceManagerManagedIdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      isPanoramaManaged: map['isPanoramaManaged'] == null ? null : (map['isPanoramaManaged'] as String).input(),
      isStrataCloudManaged: map['isStrataCloudManaged'] == null ? null : (map['isStrataCloudManaged'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      marketplaceDetails: (MarketplaceDetails.fromMap((map['marketplaceDetails'] as Map).cast<String, dynamic>())).input(),
      networkProfile: (NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      panEtag: map['panEtag'] == null ? null : (map['panEtag'] as String).input(),
      panoramaConfig: map['panoramaConfig'] == null ? null : (PanoramaConfig.fromMap((map['panoramaConfig'] as Map).cast<String, dynamic>())).input(),
      planData: (PlanData.fromMap((map['planData'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      strataCloudManagerConfig: map['strataCloudManagerConfig'] == null ? null : (StrataCloudManagerConfig.fromMap((map['strataCloudManagerConfig'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

