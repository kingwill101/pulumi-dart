// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IpSet.
class IpSetArgs3 {
  /// Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for `/0`.
  final Input<List<String>>? addresses;

  /// A friendly description of the IP set.
  final Input<String>? description;

  /// Specify IPV4 or IPV6. Valid values are `IPV4` or `IPV6`.
  final Input<String> ipAddressVersion;

  /// A friendly name of the IP set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the Region US East (N. Virginia).
  final Input<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  IpSetArgs3({
    this.addresses,
    this.description,
    required this.ipAddressVersion,
    this.name,
    this.namePrefix,
    this.region,
    required this.scope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressesValue = addresses;
    if (addressesValue != null) {
      map['addresses'] = addressesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['ipAddressVersion'] = ipAddressVersion;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scope'] = scope;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory IpSetArgs3.fromMap(Map<String, dynamic> map) {
    return IpSetArgs3(
      addresses: Input.asOptionalInput<List<String>>(map['addresses']),
      description: Input.asOptionalInput<String>(map['description']),
      ipAddressVersion: Input.asInput<String>(map['ipAddressVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      scope: Input.asInput<String>(map['scope']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
