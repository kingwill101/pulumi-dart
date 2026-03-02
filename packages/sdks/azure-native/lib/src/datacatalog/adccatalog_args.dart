// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principals.dart';

/// {@template pulumi_datacatalog_adccatalog_args_doc}
/// The set of arguments for ADCCatalog.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_adccatalog_args_doc}
class ADCCatalogArgs {
  /// Azure data catalog admin list.
  final pulumi.Input<List<Principals>>? admins;
  /// The name of the data catalog in the specified subscription and resource group.
  final pulumi.Input<String>? catalogName;
  /// Automatic unit adjustment enabled or not.
  final pulumi.Input<bool>? enableAutomaticUnitAdjustment;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure data catalog SKU.
  final pulumi.Input<String>? sku;
  /// Azure data catalog provision status.
  final pulumi.Input<bool>? successfullyProvisioned;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Azure data catalog units.
  final pulumi.Input<int>? units;
  /// Azure data catalog user list.
  final pulumi.Input<List<Principals>>? users;

  /// Creates a new [ADCCatalogArgs].
  /// [admins] Azure data catalog admin list.
  /// [catalogName] The name of the data catalog in the specified subscription and resource group.
  /// [enableAutomaticUnitAdjustment] Automatic unit adjustment enabled or not.
  /// [location] Resource location
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [sku] Azure data catalog SKU.
  /// [successfullyProvisioned] Azure data catalog provision status.
  /// [tags] Resource tags
  /// [units] Azure data catalog units.
  /// [users] Azure data catalog user list.
  ADCCatalogArgs({
    this.admins,
    this.catalogName,
    this.enableAutomaticUnitAdjustment,
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.successfullyProvisioned,
    this.tags,
    this.units,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admins': ?pulumi.Input.mapOptionalInputValue<List<Principals>, List<Map<String, dynamic>>>(admins, (value) => pulumi.Input.encodeList<Principals, Map<String, dynamic>>(value, (value) => value.toMap())),
      'catalogName': ?catalogName,
      'enableAutomaticUnitAdjustment': ?enableAutomaticUnitAdjustment,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'successfullyProvisioned': ?successfullyProvisioned,
      'tags': ?tags,
      'units': ?units,
      'users': ?pulumi.Input.mapOptionalInputValue<List<Principals>, List<Map<String, dynamic>>>(users, (value) => pulumi.Input.encodeList<Principals, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ADCCatalogArgs.fromMap(Map<String, dynamic> map) {
    return ADCCatalogArgs(
      admins: map['admins'] == null ? null : (pulumi.Input.decodeList<Principals>(map['admins']!, (value) => Principals.fromMap((value as Map).cast<String, dynamic>()))).input(),
      catalogName: map['catalogName'] == null ? null : (map['catalogName']! as String).input(),
      enableAutomaticUnitAdjustment: map['enableAutomaticUnitAdjustment'] == null ? null : (map['enableAutomaticUnitAdjustment']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      successfullyProvisioned: map['successfullyProvisioned'] == null ? null : (map['successfullyProvisioned']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      units: map['units'] == null ? null : (map['units']! as int).input(),
      users: map['users'] == null ? null : (pulumi.Input.decodeList<Principals>(map['users']!, (value) => Principals.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

