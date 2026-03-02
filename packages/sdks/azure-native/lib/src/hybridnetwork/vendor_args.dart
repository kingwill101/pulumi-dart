// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_vendor_args_doc}
/// The set of arguments for Vendor.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_vendor_args_doc}
class VendorArgs {
  /// The name of the vendor.
  final pulumi.Input<String>? vendorName;

  /// Creates a new [VendorArgs].
  /// [vendorName] The name of the vendor.
  VendorArgs({
    this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vendorName': ?vendorName,
    };
  }

  factory VendorArgs.fromMap(Map<String, dynamic> map) {
    return VendorArgs(
      vendorName: map['vendorName'] == null ? null : (map['vendorName']! as String).input(),
    );
  }
}

