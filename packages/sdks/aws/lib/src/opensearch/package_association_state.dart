// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PackageAssociation resources.
class PackageAssociationState {
  /// Name of the domain to associate the package with.
  final pulumi.Input<String?>? domainName;
  /// Internal ID of the package to associate with a domain.
  final pulumi.Input<String?>? packageId;
  final pulumi.Input<String?>? referencePath;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [PackageAssociationState].
  /// [domainName] Name of the domain to associate the package with.
  /// [packageId] Internal ID of the package to associate with a domain.
  /// [referencePath] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const PackageAssociationState({
    this.domainName,
    this.packageId,
    this.referencePath,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'packageId': ?packageId,
      'referencePath': ?referencePath,
      'region': ?region,
    };
  }

  factory PackageAssociationState.fromMap(Map<String, dynamic> map) {
    return PackageAssociationState(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageId: (() { final guardedValue = map['packageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referencePath: (() { final guardedValue = map['referencePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
