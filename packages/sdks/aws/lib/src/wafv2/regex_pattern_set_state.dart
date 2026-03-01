// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_pattern_set_regular_expression.dart';

/// Input properties used for looking up and filtering RegexPatternSet resources.
class RegexPatternSetState {
  /// The Amazon Resource Name (ARN) that identifies the cluster.
  final pulumi.Input<String>? arn;
  /// A friendly description of the regular expression pattern set.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? lockToken;
  /// A friendly name of the regular expression pattern set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or more blocks of regular expression patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. See Regular Expression below for details.
  final pulumi.Input<List<RegexPatternSetRegularExpression>>? regularExpressions;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final pulumi.Input<String>? scope;
  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RegexPatternSetState].
  /// [arn] The Amazon Resource Name (ARN) that identifies the cluster.
  /// [description] A friendly description of the regular expression pattern set.
  /// [lockToken] Optional.
  /// [name] A friendly name of the regular expression pattern set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regularExpressions] One or more blocks of regular expression patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. See Regular Expression below for details.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  /// [tags] An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RegexPatternSetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lockToken,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<List<RegexPatternSetRegularExpression>>? regularExpressions,
    pulumi.Output<String>? scope,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      lockToken = pulumi.Input.asOptionalInput<String>(lockToken),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      regularExpressions = pulumi.Input.asOptionalInput<List<RegexPatternSetRegularExpression>>(regularExpressions),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'lockToken': ?lockToken,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'regularExpressions': ?pulumi.Input.mapOptionalInputValue<List<RegexPatternSetRegularExpression>, List<Map<String, dynamic>>>(regularExpressions, (value) => pulumi.Input.encodeList<RegexPatternSetRegularExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': ?scope,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RegexPatternSetState.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lockToken: map['lockToken'] == null ? null : pulumi.Output.create<String>(map['lockToken'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      regularExpressions: map['regularExpressions'] == null ? null : pulumi.Output.create<List<RegexPatternSetRegularExpression>>(pulumi.Input.decodeList<RegexPatternSetRegularExpression>(map['regularExpressions'], (value) => RegexPatternSetRegularExpression.fromMap((value as Map).cast<String, dynamic>()))),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

