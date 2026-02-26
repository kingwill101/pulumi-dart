// ignore_for_file: unused_element, unnecessary_cast

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefix3 {
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

  PublicDelegatedPrefixPublicDelegatedSubPrefix3({
    this.delegateeProject,
    this.description,
    this.ipCidrRange,
    this.isAddress,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delegateeProjectValue = delegateeProject;
    if (delegateeProjectValue != null) {
      map['delegateeProject'] = delegateeProjectValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final isAddressValue = isAddress;
    if (isAddressValue != null) {
      map['isAddress'] = isAddressValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefix3.fromMap(
      Map<String, dynamic> map) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefix3(
      delegateeProject: map['delegateeProject'] == null
          ? null
          : map['delegateeProject'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      ipCidrRange:
          map['ipCidrRange'] == null ? null : map['ipCidrRange'] as String,
      isAddress: map['isAddress'] == null ? null : map['isAddress'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
