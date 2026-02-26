// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PublicAdvertisedPrefix.
class PublicAdvertisedPrefixArgs {
  /// An optional description of this resource.
  final Input<String>? description;

  /// The IPv4 address to be used for reverse DNS verification.
  final Input<String>? dnsVerificationIp;

  /// The address range, in CIDR format, represented by this public advertised prefix.
  final Input<String> ipCidrRange;

  /// The internet access type for IPv6 Public Advertised Prefixes. It can be
  /// set to one of following:
  /// * EXTERNAL: Default access type. The prefix will be announced to the
  /// internet. All children PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final Input<String>? ipv6AccessType;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Specifies how child public delegated prefix will be scoped. pdpScope
  /// must be one of: GLOBAL, REGIONAL
  /// * REGIONAL: The public delegated prefix is regional only. The
  /// provisioning will take a few minutes.
  /// * GLOBAL: The public delegated prefix is global only. The provisioning
  /// will take ~4 weeks.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  final Input<String>? pdpScope;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  PublicAdvertisedPrefixArgs({
    this.description,
    this.dnsVerificationIp,
    required this.ipCidrRange,
    this.ipv6AccessType,
    this.name,
    this.pdpScope,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dnsVerificationIpValue = dnsVerificationIp;
    if (dnsVerificationIpValue != null) {
      map['dnsVerificationIp'] = dnsVerificationIpValue;
    }
    map['ipCidrRange'] = ipCidrRange;
    final ipv6AccessTypeValue = ipv6AccessType;
    if (ipv6AccessTypeValue != null) {
      map['ipv6AccessType'] = ipv6AccessTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pdpScopeValue = pdpScope;
    if (pdpScopeValue != null) {
      map['pdpScope'] = pdpScopeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PublicAdvertisedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return PublicAdvertisedPrefixArgs(
      description: Input.asOptionalInput<String>(map['description']),
      dnsVerificationIp:
          Input.asOptionalInput<String>(map['dnsVerificationIp']),
      ipCidrRange: Input.asInput<String>(map['ipCidrRange']),
      ipv6AccessType: Input.asOptionalInput<String>(map['ipv6AccessType']),
      name: Input.asOptionalInput<String>(map['name']),
      pdpScope: Input.asOptionalInput<String>(map['pdpScope']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
