// ignore_for_file: unused_element, unnecessary_cast

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefixResponse {
  /// The allocatable prefix length supported by this PublicDelegatedSubPrefix.
  final int allocatablePrefixLength;

  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final String delegateeProject;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// The IP address range, in CIDR format, represented by this sub public delegated prefix.
  final String ipCidrRange;

  /// Whether the sub prefix is delegated to create Address resources in the delegatee project.
  final bool isAddress;

  /// The PublicDelegatedSubPrefix mode for IPv6 only.
  final String mode;

  /// The name of the sub public delegated prefix.
  final String name;

  /// The region of the sub public delegated prefix if it is regional. If absent, the sub prefix is global.
  final String region;

  /// The status of the sub public delegated prefix.
  final String status;

  PublicDelegatedPrefixPublicDelegatedSubPrefixResponse({
    required this.allocatablePrefixLength,
    required this.delegateeProject,
    required this.description,
    required this.ipCidrRange,
    required this.isAddress,
    required this.mode,
    required this.name,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatablePrefixLength'] = allocatablePrefixLength;
    map['delegateeProject'] = delegateeProject;
    map['description'] = description;
    map['ipCidrRange'] = ipCidrRange;
    map['isAddress'] = isAddress;
    map['mode'] = mode;
    map['name'] = name;
    map['region'] = region;
    map['status'] = status;
    return map;
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefixResponse.fromMap(
      Map<String, dynamic> map) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefixResponse(
      allocatablePrefixLength: map['allocatablePrefixLength'] as int,
      delegateeProject: map['delegateeProject'] as String,
      description: map['description'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      isAddress: map['isAddress'] as bool,
      mode: map['mode'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}
