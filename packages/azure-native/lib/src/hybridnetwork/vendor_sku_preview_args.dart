// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_vendor_sku_preview_args_doc}
/// The set of arguments for VendorSkuPreview.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_vendor_sku_preview_args_doc}
class VendorSkuPreviewArgs {
  /// Preview subscription ID.
  final pulumi.Input<String>? previewSubscription;
  /// The name of the vendor sku.
  final pulumi.Input<String> skuName;
  /// The name of the vendor.
  final pulumi.Input<String> vendorName;

  /// Creates a new [VendorSkuPreviewArgs].
  /// [previewSubscription] Preview subscription ID.
  /// [skuName] The name of the vendor sku.
  /// [vendorName] The name of the vendor.
  VendorSkuPreviewArgs({
    String? previewSubscription,
    required String skuName,
    required String vendorName,
  }) :
      previewSubscription = pulumi.Input.asOptionalInput<String>(previewSubscription),
      skuName = pulumi.Input.asInput<String>(skuName),
      vendorName = pulumi.Input.asInput<String>(vendorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'previewSubscription': ?previewSubscription,
      'skuName': skuName,
      'vendorName': vendorName,
    };
  }

  factory VendorSkuPreviewArgs.fromMap(Map<String, dynamic> map) {
    return VendorSkuPreviewArgs(
      previewSubscription: map['previewSubscription'] == null ? null : map['previewSubscription'] as String,
      skuName: map['skuName'] as String,
      vendorName: map['vendorName'] as String,
    );
  }
}

