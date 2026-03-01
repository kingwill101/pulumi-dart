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
    required pulumi.Output<String> previewSubscription,
    required pulumi.Output<String> skuName,
    required pulumi.Output<String> vendorName,
  }) :
      previewSubscription = pulumi.Input.asInput<String>(previewSubscription),
      skuName = pulumi.Input.asInput<String>(skuName),
      vendorName = pulumi.Input.asInput<String>(vendorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'previewSubscription': previewSubscription,
      'skuName': skuName,
      'vendorName': vendorName,
    };
  }

  factory GetVendorSkuPreviewArgs.fromMap(Map<String, dynamic> map) {
    return GetVendorSkuPreviewArgs(
      previewSubscription: pulumi.Output.create<String>(map['previewSubscription'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      vendorName: pulumi.Output.create<String>(map['vendorName'] as String),
    );
  }
}

