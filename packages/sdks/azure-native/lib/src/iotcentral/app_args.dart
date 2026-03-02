// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_sku_info.dart';
import 'network_rule_sets.dart';
import 'system_assigned_service_identity.dart';

/// {@template pulumi_iotcentral_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_iotcentral_app_args_doc}
class AppArgs {
  /// The display name of the application.
  final pulumi.Input<String>? displayName;
  /// The managed identities for the IoT Central application.
  final pulumi.Input<SystemAssignedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Network Rule Set Properties of this IoT Central application.
  final pulumi.Input<NetworkRuleSets>? networkRuleSets;
  /// Whether requests from the public network are allowed.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group that contains the IoT Central application.
  final pulumi.Input<String> resourceGroupName;
  /// The ARM resource name of the IoT Central application.
  final pulumi.Input<String>? resourceName;
  /// A valid instance SKU.
  final pulumi.Input<AppSkuInfo> sku;
  /// The subdomain of the application.
  final pulumi.Input<String>? subdomain;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the application template, which is a blueprint that defines the characteristics and behaviors of an application. Optional; if not specified, defaults to a blank blueprint and allows the application to be defined from scratch.
  final pulumi.Input<String>? template;

  /// Creates a new [AppArgs].
  /// [displayName] The display name of the application.
  /// [identity] The managed identities for the IoT Central application.
  /// [location] The geo-location where the resource lives
  /// [networkRuleSets] Network Rule Set Properties of this IoT Central application.
  /// [publicNetworkAccess] Whether requests from the public network are allowed.
  /// [resourceGroupName] The name of the resource group that contains the IoT Central application.
  /// [resourceName] The ARM resource name of the IoT Central application.
  /// [sku] A valid instance SKU.
  /// [subdomain] The subdomain of the application.
  /// [tags] Resource tags.
  /// [template] The ID of the application template, which is a blueprint that defines the characteristics and behaviors of an application. Optional; if not specified, defaults to a blank blueprint and allows the application to be defined from scratch.
  AppArgs({
    this.displayName,
    this.identity,
    this.location,
    this.networkRuleSets,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.resourceName,
    required this.sku,
    this.subdomain,
    this.tags,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemAssignedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkRuleSets': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSets, Map<String, dynamic>>(networkRuleSets, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'sku': pulumi.Input.mapInputValue<AppSkuInfo, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'subdomain': ?subdomain,
      'tags': ?tags,
      'template': ?template,
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      identity: map['identity'] == null ? null : (SystemAssignedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      networkRuleSets: map['networkRuleSets'] == null ? null : (NetworkRuleSets.fromMap((map['networkRuleSets'] as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      sku: (AppSkuInfo.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      subdomain: map['subdomain'] == null ? null : (map['subdomain'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      template: map['template'] == null ? null : (map['template'] as String).input(),
    );
  }
}

