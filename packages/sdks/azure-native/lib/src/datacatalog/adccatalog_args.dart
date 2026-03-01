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
    pulumi.Output<List<Principals>>? admins,
    pulumi.Output<String>? catalogName,
    pulumi.Output<bool>? enableAutomaticUnitAdjustment,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<bool>? successfullyProvisioned,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? units,
    pulumi.Output<List<Principals>>? users,
  }) :
      admins = pulumi.Input.asOptionalInput<List<Principals>>(admins),
      catalogName = pulumi.Input.asOptionalInput<String>(catalogName),
      enableAutomaticUnitAdjustment = pulumi.Input.asOptionalInput<bool>(enableAutomaticUnitAdjustment),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      successfullyProvisioned = pulumi.Input.asOptionalInput<bool>(successfullyProvisioned),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      units = pulumi.Input.asOptionalInput<int>(units),
      users = pulumi.Input.asOptionalInput<List<Principals>>(users);

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
      admins: map['admins'] == null ? null : pulumi.Output.create<List<Principals>>(pulumi.Input.decodeList<Principals>(map['admins'], (value) => Principals.fromMap((value as Map).cast<String, dynamic>()))),
      catalogName: map['catalogName'] == null ? null : pulumi.Output.create<String>(map['catalogName'] as String),
      enableAutomaticUnitAdjustment: map['enableAutomaticUnitAdjustment'] == null ? null : pulumi.Output.create<bool>(map['enableAutomaticUnitAdjustment'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      successfullyProvisioned: map['successfullyProvisioned'] == null ? null : pulumi.Output.create<bool>(map['successfullyProvisioned'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      units: map['units'] == null ? null : pulumi.Output.create<int>(map['units'] as int),
      users: map['users'] == null ? null : pulumi.Output.create<List<Principals>>(pulumi.Input.decodeList<Principals>(map['users'], (value) => Principals.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

