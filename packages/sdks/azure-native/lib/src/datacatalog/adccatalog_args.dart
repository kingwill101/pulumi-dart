// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principals.dart';

/// {@template pulumi_datacatalog_adccatalog_args_doc}
/// The set of arguments for ADCCatalog.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_adccatalog_args_doc}
class ADCCatalogArgs {
  /// Azure data catalog admin list.
  final pulumi.Input<List<Principals>?>? admins;
  /// The name of the data catalog in the specified subscription and resource group.
  final pulumi.Input<String?>? catalogName;
  /// Automatic unit adjustment enabled or not.
  final pulumi.Input<bool?>? enableAutomaticUnitAdjustment;
  /// Resource location
  final pulumi.Input<String?>? location;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure data catalog SKU.
  final pulumi.Input<dynamic>? sku;
  /// Azure data catalog provision status.
  final pulumi.Input<bool?>? successfullyProvisioned;
  /// Resource tags
  final pulumi.Input<Map<String, String>?>? tags;
  /// Azure data catalog units.
  final pulumi.Input<int?>? units;
  /// Azure data catalog user list.
  final pulumi.Input<List<Principals>?>? users;

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
  const ADCCatalogArgs({
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
      admins: (() { final guardedValue = map['admins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Principals>(guardedValue, (value) => Principals.fromMap((value as Map).cast<String, dynamic>()))); })(),
      catalogName: (() { final guardedValue = map['catalogName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutomaticUnitAdjustment: (() { final guardedValue = map['enableAutomaticUnitAdjustment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      successfullyProvisioned: (() { final guardedValue = map['successfullyProvisioned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      units: (() { final guardedValue = map['units']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Principals>(guardedValue, (value) => Principals.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
