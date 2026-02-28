// ignore_for_file: unused_element, unnecessary_cast

import 'public_delegated_prefix_public_delegated_sub_prefix_mode.dart';

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefix {
  /// The allocatable prefix length supported by this PublicDelegatedSubPrefix.
  final int? allocatablePrefixLength;

  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final String? delegateeProject;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;

  /// The IP address range, in CIDR format, represented by this sub public delegated prefix.
  final String? ipCidrRange;

  /// Whether the sub prefix is delegated to create Address resources in the delegatee project.
  final bool? isAddress;

  /// The PublicDelegatedSubPrefix mode for IPv6 only.
  final PublicDelegatedPrefixPublicDelegatedSubPrefixMode? mode;

  /// The name of the sub public delegated prefix.
  final String? name;

  /// Creates a new [PublicDelegatedPrefixPublicDelegatedSubPrefix].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this PublicDelegatedSubPrefix.
  /// [delegateeProject] Name of the project scoping this PublicDelegatedSubPrefix.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this sub public delegated prefix.
  /// [isAddress] Whether the sub prefix is delegated to create Address resources in the delegatee project.
  /// [mode] The PublicDelegatedSubPrefix mode for IPv6 only.
  /// [name] The name of the sub public delegated prefix.
  PublicDelegatedPrefixPublicDelegatedSubPrefix({
    this.allocatablePrefixLength,
    this.delegateeProject,
    this.description,
    this.ipCidrRange,
    this.isAddress,
    this.mode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocatablePrefixLengthValue = allocatablePrefixLength;
    if (allocatablePrefixLengthValue != null) {
      map['allocatablePrefixLength'] = allocatablePrefixLengthValue;
    }
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
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefix.fromMap(
      Map<String, dynamic> map) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefix(
      allocatablePrefixLength: map['allocatablePrefixLength'] == null
          ? null
          : map['allocatablePrefixLength'] as int,
      delegateeProject: map['delegateeProject'] == null
          ? null
          : map['delegateeProject'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      ipCidrRange:
          map['ipCidrRange'] == null ? null : map['ipCidrRange'] as String,
      isAddress: map['isAddress'] == null ? null : map['isAddress'] as bool,
      mode: map['mode'] == null
          ? null
          : PublicDelegatedPrefixPublicDelegatedSubPrefixMode.fromValue(
              map['mode'] as String),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
