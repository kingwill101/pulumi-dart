// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpSet resources.
class IpSetState {
  /// Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for `/0`.
  final pulumi.Input<List<String>>? addresses;
  /// The Amazon Resource Name (ARN) of the IP set.
  final pulumi.Input<String>? arn;
  /// A friendly description of the IP set.
  final pulumi.Input<String>? description;
  /// Specify IPV4 or IPV6. Valid values are `IPV4` or `IPV6`.
  final pulumi.Input<String>? ipAddressVersion;
  final pulumi.Input<String>? lockToken;
  /// A friendly name of the IP set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the Region US East (N. Virginia).
  final pulumi.Input<String>? scope;
  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IpSetState].
  /// [addresses] Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for `/0`.
  /// [arn] The Amazon Resource Name (ARN) of the IP set.
  /// [description] A friendly description of the IP set.
  /// [ipAddressVersion] Specify IPV4 or IPV6. Valid values are `IPV4` or `IPV6`.
  /// [lockToken] Optional.
  /// [name] A friendly name of the IP set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the Region US East (N. Virginia).
  /// [tags] An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  IpSetState({
    pulumi.Output<List<String>>? addresses,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipAddressVersion,
    pulumi.Output<String>? lockToken,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scope,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      addresses = pulumi.Input.asOptionalInput<List<String>>(addresses),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipAddressVersion = pulumi.Input.asOptionalInput<String>(ipAddressVersion),
      lockToken = pulumi.Input.asOptionalInput<String>(lockToken),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'arn': ?arn,
      'description': ?description,
      'ipAddressVersion': ?ipAddressVersion,
      'lockToken': ?lockToken,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'scope': ?scope,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IpSetState.fromMap(Map<String, dynamic> map) {
    return IpSetState(
      addresses: map['addresses'] == null ? null : pulumi.Output.create<List<String>>((map['addresses'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipAddressVersion: map['ipAddressVersion'] == null ? null : pulumi.Output.create<String>(map['ipAddressVersion'] as String),
      lockToken: map['lockToken'] == null ? null : pulumi.Output.create<String>(map['lockToken'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

