// ignore_for_file: unused_element, unnecessary_cast

class PublicDelegatedPrefixPublicDelegatedSubPrefix {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final int? allocatablePrefixLength;

  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final String? delegateeProject;

  /// An optional description of this resource.
  final String? description;

  /// (Output)
  /// Whether this PublicDelegatedSubPrefix supports enhanced IPv4 allocations.
  /// Applicable for IPv4 sub-PDPs only.
  final bool? enableEnhancedIpv4Allocation;

  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final String? ipCidrRange;

  /// (Output)
  /// The internet access type for IPv6 Public Delegated Prefixes. Inherited
  /// from parent prefix and can be one of following:
  /// * EXTERNAL: The prefix will be announced to the internet. All children
  /// PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  final String? ipv6AccessType;

  /// Whether the sub prefix is delegated for address creation.
  final bool? isAddress;

  /// Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// * DELEGATION
  /// * EXTERNAL_IPV6_FORWARDING_RULE_CREATION
  /// * EXTERNAL_IPV6_SUBNETWORK_CREATION
  /// * INTERNAL_IPV6_SUBNETWORK_CREATION
  /// Possible values are: `DELEGATION`, `EXTERNAL_IPV6_FORWARDING_RULE_CREATION`, `EXTERNAL_IPV6_SUBNETWORK_CREATION`, `INTERNAL_IPV6_SUBNETWORK_CREATION`.
  final String? mode;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final String? name;

  /// A region where the prefix will reside.
  final String? region;

  /// The status of the sub public delegated prefix.
  /// Possible values are: `INITIALIZING`, `READY_TO_ANNOUNCE`, `ANNOUNCED`, `DELETING`.
  final String? status;

  /// Creates a new [PublicDelegatedPrefixPublicDelegatedSubPrefix].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  /// [delegateeProject] Name of the project scoping this PublicDelegatedSubPrefix.
  /// [description] An optional description of this resource.
  /// [enableEnhancedIpv4Allocation] (Output)
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this public delegated prefix.
  /// [ipv6AccessType] (Output)
  /// [isAddress] Whether the sub prefix is delegated for address creation.
  /// [mode] Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [region] A region where the prefix will reside.
  /// [status] The status of the sub public delegated prefix.
  PublicDelegatedPrefixPublicDelegatedSubPrefix({
    this.allocatablePrefixLength,
    this.delegateeProject,
    this.description,
    this.enableEnhancedIpv4Allocation,
    this.ipCidrRange,
    this.ipv6AccessType,
    this.isAddress,
    this.mode,
    this.name,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': ?allocatablePrefixLength,
      'delegateeProject': ?delegateeProject,
      'description': ?description,
      'enableEnhancedIpv4Allocation': ?enableEnhancedIpv4Allocation,
      'ipCidrRange': ?ipCidrRange,
      'ipv6AccessType': ?ipv6AccessType,
      'isAddress': ?isAddress,
      'mode': ?mode,
      'name': ?name,
      'region': ?region,
      'status': ?status,
    };
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefix.fromMap(
    Map<String, dynamic> map,
  ) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefix(
      allocatablePrefixLength: map['allocatablePrefixLength'] == null
          ? null
          : map['allocatablePrefixLength'] as int,
      delegateeProject: map['delegateeProject'] == null
          ? null
          : map['delegateeProject'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      enableEnhancedIpv4Allocation: map['enableEnhancedIpv4Allocation'] == null
          ? null
          : map['enableEnhancedIpv4Allocation'] as bool,
      ipCidrRange: map['ipCidrRange'] == null
          ? null
          : map['ipCidrRange'] as String,
      ipv6AccessType: map['ipv6AccessType'] == null
          ? null
          : map['ipv6AccessType'] as String,
      isAddress: map['isAddress'] == null ? null : map['isAddress'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
