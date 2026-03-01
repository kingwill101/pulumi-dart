// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverFirewallDomainList resources.
class ResolverFirewallDomainListState {
  /// The ARN (Amazon Resource Name) of the domain list.
  final pulumi.Input<String>? arn;
  /// A array of domains for the firewall domain list.
  final pulumi.Input<List<String>>? domains;
  /// A name that lets you identify the domain list, to manage and use it.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. f configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ResolverFirewallDomainListState].
  /// [arn] The ARN (Amazon Resource Name) of the domain list.
  /// [domains] A array of domains for the firewall domain list.
  /// [name] A name that lets you identify the domain list, to manage and use it.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. f configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ResolverFirewallDomainListState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? domains,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domains = pulumi.Input.asOptionalInput<List<String>>(domains),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domains': ?domains,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ResolverFirewallDomainListState.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallDomainListState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domains: map['domains'] == null ? null : pulumi.Output.create<List<String>>((map['domains'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

