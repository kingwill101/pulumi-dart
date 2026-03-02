// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_package_association_package_association_args_doc}
/// The set of arguments for PackageAssociation.
/// {@endtemplate}
/// {@macro pulumi_opensearch_package_association_package_association_args_doc}
class PackageAssociationArgs {
  /// Name of the domain to associate the package with.
  final pulumi.Input<String> domainName;
  /// Internal ID of the package to associate with a domain.
  final pulumi.Input<String> packageId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PackageAssociationArgs].
  /// [domainName] Name of the domain to associate the package with.
  /// [packageId] Internal ID of the package to associate with a domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PackageAssociationArgs({
    required this.domainName,
    required this.packageId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'packageId': packageId,
      'region': ?region,
    };
  }

  factory PackageAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PackageAssociationArgs(
      domainName: (map['domainName'] as String).input(),
      packageId: (map['packageId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

