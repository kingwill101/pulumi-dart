// ignore_for_file: unused_element, unnecessary_cast

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta {
  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final String? delegateeProject;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;

  /// The IP address range, in CIDR format, represented by this sub public delegated prefix.
  final String? ipCidrRange;

  /// Whether the sub prefix is delegated to create Address resources in the delegatee project.
  final bool? isAddress;

  /// The name of the sub public delegated prefix.
  final String? name;

  /// Creates a new [PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta].
  /// [delegateeProject] Name of the project scoping this PublicDelegatedSubPrefix.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this sub public delegated prefix.
  /// [isAddress] Whether the sub prefix is delegated to create Address resources in the delegatee project.
  /// [name] The name of the sub public delegated prefix.
  PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta({
    this.delegateeProject,
    this.description,
    this.ipCidrRange,
    this.isAddress,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegateeProject': ?delegateeProject,
      'description': ?description,
      'ipCidrRange': ?ipCidrRange,
      'isAddress': ?isAddress,
      'name': ?name,
    };
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta(
      delegateeProject: map['delegateeProject'] == null
          ? null
          : map['delegateeProject'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      ipCidrRange: map['ipCidrRange'] == null
          ? null
          : map['ipCidrRange'] as String,
      isAddress: map['isAddress'] == null ? null : map['isAddress'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
