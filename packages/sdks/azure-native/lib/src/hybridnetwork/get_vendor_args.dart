// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_vendor_args_doc}
/// Arguments for getVendor.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_vendor_args_doc}
class GetVendorArgs {
  /// The name of the vendor.
  final pulumi.Input<String> vendorName;

  /// Creates a new [GetVendorArgs].
  /// [vendorName] The name of the vendor.
  const GetVendorArgs({
    required this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vendorName': vendorName,
    };
  }

  factory GetVendorArgs.fromMap(Map<String, dynamic> map) {
    return GetVendorArgs(
      vendorName: pulumi.Input.fromValue(map['vendorName'] as String),
    );
  }
}
