// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_name.dart';

/// {@template pulumi_storagecache_get_required_aml_fssubnets_size_args_doc}
/// Arguments for getRequiredAmlFSSubnetsSize.
/// {@endtemplate}
/// {@macro pulumi_storagecache_get_required_aml_fssubnets_size_args_doc}
class GetRequiredAmlFSSubnetsSizeArgs {
  /// SKU for the resource.
  final pulumi.Input<SkuName>? sku;
  /// The size of the AML file system, in TiB.
  final pulumi.Input<double>? storageCapacityTiB;

  /// Creates a new [GetRequiredAmlFSSubnetsSizeArgs].
  /// [sku] SKU for the resource.
  /// [storageCapacityTiB] The size of the AML file system, in TiB.
  GetRequiredAmlFSSubnetsSizeArgs({
    SkuName? sku,
    double? storageCapacityTiB,
  }) :
      sku = pulumi.Input.asOptionalInput<SkuName>(sku),
      storageCapacityTiB = pulumi.Input.asOptionalInput<double>(storageCapacityTiB);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuName, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageCapacityTiB': ?storageCapacityTiB,
    };
  }

  factory GetRequiredAmlFSSubnetsSizeArgs.fromMap(Map<String, dynamic> map) {
    return GetRequiredAmlFSSubnetsSizeArgs(
      sku: map['sku'] == null ? null : SkuName.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      storageCapacityTiB: map['storageCapacityTiB'] == null ? null : map['storageCapacityTiB'] as double,
    );
  }
}

