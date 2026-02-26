// ignore_for_file: unused_element, unnecessary_cast

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefixResponse2 {
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

  PublicDelegatedPrefixPublicDelegatedSubPrefixResponse2({
    required this.delegateeProject,
    required this.description,
    required this.ipCidrRange,
    required this.isAddress,
    required this.name,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['delegateeProject'] = delegateeProject;
    map['description'] = description;
    map['ipCidrRange'] = ipCidrRange;
    map['isAddress'] = isAddress;
    map['name'] = name;
    map['region'] = region;
    map['status'] = status;
    return map;
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefixResponse2.fromMap(
      Map<String, dynamic> map) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefixResponse2(
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
