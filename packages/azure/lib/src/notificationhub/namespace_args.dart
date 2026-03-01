// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhub_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_notificationhub_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Is this Notification Hub Namespace enabled? Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? enabled;
  /// The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Type of Namespace - possible values are `Messaging` or `NotificationHub`. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceType;
  /// The allowed Replication Region for the Notification Hub Namespace. Possible values are `Default`, `None`, `AustraliaEast`, `BrazilSouth`, `NorthEurope`, `SouthAfricaNorth`, `SouthEastAsia`, `WestUs2`. Changing this forces a new resource to be created. Defaults to `Default`.
  final pulumi.Input<String>? replicationRegion;
  /// The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`.
  final pulumi.Input<String> skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Is Zone Redundancy Enabled for the Notification Hub Namespace. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? zoneRedundancyEnabled;

  /// Creates a new [NamespaceArgs].
  /// [enabled] Is this Notification Hub Namespace enabled? Defaults to `true`. Changing this forces a new resource to be created.
  /// [location] The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created.
  /// [name] The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created.
  /// [namespaceType] The Type of Namespace - possible values are `Messaging` or `NotificationHub`. Changing this forces a new resource to be created.
  /// [replicationRegion] The allowed Replication Region for the Notification Hub Namespace. Possible values are `Default`, `None`, `AustraliaEast`, `BrazilSouth`, `NorthEurope`, `SouthAfricaNorth`, `SouthEastAsia`, `WestUs2`. Changing this forces a new resource to be created. Defaults to `Default`.
  /// [resourceGroupName] The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created.
  /// [skuName] The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundancyEnabled] Is Zone Redundancy Enabled for the Notification Hub Namespace. Defaults to `false`. Changing this forces a new resource to be created.
  NamespaceArgs({
    bool? enabled,
    String? location,
    String? name,
    required String namespaceType,
    String? replicationRegion,
    required String resourceGroupName,
    required String skuName,
    Map<String, String>? tags,
    bool? zoneRedundancyEnabled,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceType = pulumi.Input.asInput<String>(namespaceType),
      replicationRegion = pulumi.Input.asOptionalInput<String>(replicationRegion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundancyEnabled = pulumi.Input.asOptionalInput<bool>(zoneRedundancyEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'namespaceType': namespaceType,
      'replicationRegion': ?replicationRegion,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespaceType: map['namespaceType'] as String,
      replicationRegion: map['replicationRegion'] == null ? null : map['replicationRegion'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : map['zoneRedundancyEnabled'] as bool,
    );
  }
}

