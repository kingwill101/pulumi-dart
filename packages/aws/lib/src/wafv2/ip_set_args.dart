// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafv2_ip_set_ip_set_args_doc}
/// The set of arguments for IpSet.
/// {@endtemplate}
/// {@macro pulumi_wafv2_ip_set_ip_set_args_doc}
class IpSetArgs {
  /// Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for `/0`.
  final pulumi.Input<List<String>>? addresses;

  /// A friendly description of the IP set.
  final pulumi.Input<String>? description;

  /// Specify IPV4 or IPV6. Valid values are `IPV4` or `IPV6`.
  final pulumi.Input<String> ipAddressVersion;

  /// A friendly name of the IP set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the Region US East (N. Virginia).
  final pulumi.Input<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpSetArgs].
  /// [addresses] Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for `/0`.
  /// [description] A friendly description of the IP set.
  /// [ipAddressVersion] Specify IPV4 or IPV6. Valid values are `IPV4` or `IPV6`.
  /// [name] A friendly name of the IP set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the Region US East (N. Virginia).
  /// [tags] An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  IpSetArgs({
    List<String>? addresses,
    String? description,
    required String ipAddressVersion,
    String? name,
    String? namePrefix,
    String? region,
    required String scope,
    Map<String, String>? tags,
  }) : addresses = pulumi.Input.asOptionalInput<List<String>>(addresses),
       description = pulumi.Input.asOptionalInput<String>(description),
       ipAddressVersion = pulumi.Input.asInput<String>(ipAddressVersion),
       name = pulumi.Input.asOptionalInput<String>(name),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       region = pulumi.Input.asOptionalInput<String>(region),
       scope = pulumi.Input.asInput<String>(scope),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'description': ?description,
      'ipAddressVersion': ipAddressVersion,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'scope': scope,
      'tags': ?tags,
    };
  }

  factory IpSetArgs.fromMap(Map<String, dynamic> map) {
    return IpSetArgs(
      addresses: map['addresses'] == null
          ? null
          : (map['addresses'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      ipAddressVersion: map['ipAddressVersion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scope: map['scope'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
