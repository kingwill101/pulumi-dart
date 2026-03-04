// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_elasticsan_elastic_san_args_doc}
/// The set of arguments for ElasticSan.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_elastic_san_args_doc}
class ElasticSanArgs {
  /// Logical zone for Elastic San resource; example: ["1"].
  final pulumi.Input<List<String>>? availabilityZones;

  /// Base size of the Elastic San appliance in TiB.
  final pulumi.Input<double> baseSizeTiB;

  /// The name of the ElasticSan.
  final pulumi.Input<String>? elasticSanName;

  /// Extended size of the Elastic San appliance in TiB.
  final pulumi.Input<double> extendedCapacitySizeTiB;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Allow or disallow public network access to ElasticSan. Value is optional but if passed in, must be 'Enabled' or 'Disabled'.
  final pulumi.Input<String>? publicNetworkAccess;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// resource sku
  final pulumi.Input<Sku> sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ElasticSanArgs].
  /// [availabilityZones] Logical zone for Elastic San resource; example: ["1"].
  /// [baseSizeTiB] Base size of the Elastic San appliance in TiB.
  /// [elasticSanName] The name of the ElasticSan.
  /// [extendedCapacitySizeTiB] Extended size of the Elastic San appliance in TiB.
  /// [location] The geo-location where the resource lives
  /// [publicNetworkAccess] Allow or disallow public network access to ElasticSan. Value is optional but if passed in, must be 'Enabled' or 'Disabled'.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] resource sku
  /// [tags] Resource tags.
  ElasticSanArgs({
    this.availabilityZones,
    required this.baseSizeTiB,
    this.elasticSanName,
    required this.extendedCapacitySizeTiB,
    this.location,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'baseSizeTiB': baseSizeTiB,
      'elasticSanName': ?elasticSanName,
      'extendedCapacitySizeTiB': extendedCapacitySizeTiB,
      'location': ?location,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory ElasticSanArgs.fromMap(Map<String, dynamic> map) {
    return ElasticSanArgs(
      availabilityZones: (() {
        final guardedValue = map['availabilityZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      baseSizeTiB: pulumi.Input.fromValue(map['baseSizeTiB'] as double),
      elasticSanName: (() {
        final guardedValue = map['elasticSanName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extendedCapacitySizeTiB: pulumi.Input.fromValue(
        map['extendedCapacitySizeTiB'] as double,
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: pulumi.Input.fromValue(
        Sku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
