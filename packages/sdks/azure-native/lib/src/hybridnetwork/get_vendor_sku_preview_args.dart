// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_vendor_sku_preview_args_doc}
/// Arguments for getVendorSkuPreview.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_vendor_sku_preview_args_doc}
class GetVendorSkuPreviewArgs {
  /// Preview subscription ID.
  final pulumi.Input<String> previewSubscription;
  /// The name of the vendor sku.
  final pulumi.Input<String> skuName;
  /// The name of the vendor.
  final pulumi.Input<String> vendorName;

  /// Creates a new [GetVendorSkuPreviewArgs].
  /// [previewSubscription] Preview subscription ID.
  /// [skuName] The name of the vendor sku.
  /// [vendorName] The name of the vendor.
  GetVendorSkuPreviewArgs({
    required this.previewSubscription,
    required this.skuName,
    required this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'previewSubscription': previewSubscription,
      'skuName': skuName,
      'vendorName': vendorName,
    };
  }

  factory GetVendorSkuPreviewArgs.fromMap(Map<String, dynamic> map) {
    return GetVendorSkuPreviewArgs(
      previewSubscription: (map['previewSubscription'] as String).input(),
      skuName: (map['skuName'] as String).input(),
      vendorName: (map['vendorName'] as String).input(),
    );
  }
}

