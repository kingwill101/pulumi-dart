// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PackageAssociation resources.
class PackageAssociationState {
  /// Name of the domain to associate the package with.
  final pulumi.Input<String>? domainName;
  /// Internal ID of the package to associate with a domain.
  final pulumi.Input<String>? packageId;
  final pulumi.Input<String>? referencePath;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PackageAssociationState].
  /// [domainName] Name of the domain to associate the package with.
  /// [packageId] Internal ID of the package to associate with a domain.
  /// [referencePath] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PackageAssociationState({
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? packageId,
    pulumi.Output<String>? referencePath,
    pulumi.Output<String>? region,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      packageId = pulumi.Input.asOptionalInput<String>(packageId),
      referencePath = pulumi.Input.asOptionalInput<String>(referencePath),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      packageId: map['packageId'] == null ? null : pulumi.Output.create<String>(map['packageId'] as String),
      referencePath: map['referencePath'] == null ? null : pulumi.Output.create<String>(map['referencePath'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

