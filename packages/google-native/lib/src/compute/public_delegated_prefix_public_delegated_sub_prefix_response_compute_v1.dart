// ignore_for_file: unused_element, unnecessary_cast

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1 {
  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final String delegateeProject;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// The IP address range, in CIDR format, represented by this sub public delegated prefix.
  final String ipCidrRange;

  /// Whether the sub prefix is delegated to create Address resources in the delegatee project.
  final bool isAddress;

  /// The name of the sub public delegated prefix.
  final String name;

  /// The region of the sub public delegated prefix if it is regional. If absent, the sub prefix is global.
  final String region;

  /// The status of the sub public delegated prefix.
  final String status;

  /// Creates a new [PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1].
  /// [delegateeProject] Name of the project scoping this PublicDelegatedSubPrefix.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this sub public delegated prefix.
  /// [isAddress] Whether the sub prefix is delegated to create Address resources in the delegatee project.
  /// [name] The name of the sub public delegated prefix.
  /// [region] The region of the sub public delegated prefix if it is regional. If absent, the sub prefix is global.
  /// [status] The status of the sub public delegated prefix.
  PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1({
    required this.delegateeProject,
    required this.description,
    required this.ipCidrRange,
    required this.isAddress,
    required this.name,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegateeProject': delegateeProject,
      'description': description,
      'ipCidrRange': ipCidrRange,
      'isAddress': isAddress,
      'name': name,
      'region': region,
      'status': status,
    };
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1(
      delegateeProject: map['delegateeProject'] as String,
      description: map['description'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      isAddress: map['isAddress'] as bool,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}
