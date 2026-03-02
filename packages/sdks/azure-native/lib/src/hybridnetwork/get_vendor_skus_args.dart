// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_vendor_skus_args_doc}
/// Arguments for getVendorSkus.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_vendor_skus_args_doc}
class GetVendorSkusArgs {
  /// The name of the sku.
  final pulumi.Input<String> skuName;
  /// The name of the vendor.
  final pulumi.Input<String> vendorName;

  /// Creates a new [GetVendorSkusArgs].
  /// [skuName] The name of the sku.
  /// [vendorName] The name of the vendor.
  GetVendorSkusArgs({
    required this.skuName,
    required this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skuName': skuName,
      'vendorName': vendorName,
    };
  }

  factory GetVendorSkusArgs.fromMap(Map<String, dynamic> map) {
    return GetVendorSkusArgs(
      skuName: (map['skuName'] as String).input(),
      vendorName: (map['vendorName'] as String).input(),
    );
  }
}

