// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PackageAssociation.
class PackageAssociationArgs {
  /// Name of the domain to associate the package with.
  final Input<String> domainName;

  /// Internal ID of the package to associate with a domain.
  final Input<String> packageId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  PackageAssociationArgs({
    required this.domainName,
    required this.packageId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['packageId'] = packageId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PackageAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PackageAssociationArgs(
      domainName: Input.asInput<String>(map['domainName']),
      packageId: Input.asInput<String>(map['packageId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
