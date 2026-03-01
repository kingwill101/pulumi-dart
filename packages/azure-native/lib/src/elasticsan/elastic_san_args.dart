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
    List<String>? availabilityZones,
    required double baseSizeTiB,
    String? elasticSanName,
    required double extendedCapacitySizeTiB,
    String? location,
    String? publicNetworkAccess,
    required String resourceGroupName,
    required Sku sku,
    Map<String, String>? tags,
  }) :
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      baseSizeTiB = pulumi.Input.asInput<double>(baseSizeTiB),
      elasticSanName = pulumi.Input.asOptionalInput<String>(elasticSanName),
      extendedCapacitySizeTiB = pulumi.Input.asInput<double>(extendedCapacitySizeTiB),
      location = pulumi.Input.asOptionalInput<String>(location),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'baseSizeTiB': baseSizeTiB,
      'elasticSanName': ?elasticSanName,
      'extendedCapacitySizeTiB': extendedCapacitySizeTiB,
      'location': ?location,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ElasticSanArgs.fromMap(Map<String, dynamic> map) {
    return ElasticSanArgs(
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones'] as List).cast<String>(),
      baseSizeTiB: map['baseSizeTiB'] as double,
      elasticSanName: map['elasticSanName'] == null ? null : map['elasticSanName'] as String,
      extendedCapacitySizeTiB: map['extendedCapacitySizeTiB'] as double,
      location: map['location'] == null ? null : map['location'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

