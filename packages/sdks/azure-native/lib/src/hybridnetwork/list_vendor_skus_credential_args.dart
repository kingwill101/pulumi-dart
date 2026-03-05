// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_list_vendor_skus_credential_args_doc}
/// Arguments for listVendorSkusCredential.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_list_vendor_skus_credential_args_doc}
class ListVendorSkusCredentialArgs {
  /// The name of the sku.
  final pulumi.Input<String> skuName;
  /// The name of the vendor.
  final pulumi.Input<String> vendorName;

  /// Creates a new [ListVendorSkusCredentialArgs].
  /// [skuName] The name of the sku.
  /// [vendorName] The name of the vendor.
  ListVendorSkusCredentialArgs({
    required this.skuName,
    required this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skuName': skuName,
      'vendorName': vendorName,
    };
  }

  factory ListVendorSkusCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ListVendorSkusCredentialArgs(
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      vendorName: pulumi.Input.fromValue(map['vendorName'] as String),
    );
  }
}

