// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PublicDelegatedPrefix.
class PublicDelegatedPrefixArgs {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final Input<int>? allocatablePrefixLength;

  /// An optional description of this resource.
  final Input<String>? description;

  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final Input<String> ipCidrRange;

  /// If true, the prefix will be live migrated.
  final Input<bool>? isLiveMigration;

  /// Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// * DELEGATION
  /// * EXTERNAL_IPV6_FORWARDING_RULE_CREATION
  /// * EXTERNAL_IPV6_SUBNETWORK_CREATION
  /// * INTERNAL_IPV6_SUBNETWORK_CREATION
  /// Possible values are: `DELEGATION`, `EXTERNAL_IPV6_FORWARDING_RULE_CREATION`, `EXTERNAL_IPV6_SUBNETWORK_CREATION`, `INTERNAL_IPV6_SUBNETWORK_CREATION`.
  final Input<String>? mode;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final Input<String> parentPrefix;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A region where the prefix will reside.
  final Input<String> region;

  PublicDelegatedPrefixArgs({
    this.allocatablePrefixLength,
    this.description,
    required this.ipCidrRange,
    this.isLiveMigration,
    this.mode,
    this.name,
    required this.parentPrefix,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocatablePrefixLengthValue = allocatablePrefixLength;
    if (allocatablePrefixLengthValue != null) {
      map['allocatablePrefixLength'] = allocatablePrefixLengthValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['ipCidrRange'] = ipCidrRange;
    final isLiveMigrationValue = isLiveMigration;
    if (isLiveMigrationValue != null) {
      map['isLiveMigration'] = isLiveMigrationValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parentPrefix'] = parentPrefix;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory PublicDelegatedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return PublicDelegatedPrefixArgs(
      allocatablePrefixLength:
          Input.asOptionalInput<int>(map['allocatablePrefixLength']),
      description: Input.asOptionalInput<String>(map['description']),
      ipCidrRange: Input.asInput<String>(map['ipCidrRange']),
      isLiveMigration: Input.asOptionalInput<bool>(map['isLiveMigration']),
      mode: Input.asOptionalInput<String>(map['mode']),
      name: Input.asOptionalInput<String>(map['name']),
      parentPrefix: Input.asInput<String>(map['parentPrefix']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
