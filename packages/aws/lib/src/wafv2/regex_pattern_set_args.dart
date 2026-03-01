// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_pattern_set_regular_expression.dart';

/// {@template pulumi_wafv2_regex_pattern_set_regex_pattern_set_args_doc}
/// The set of arguments for RegexPatternSet.
/// {@endtemplate}
/// {@macro pulumi_wafv2_regex_pattern_set_regex_pattern_set_args_doc}
class RegexPatternSetArgs {
  /// A friendly description of the regular expression pattern set.
  final pulumi.Input<String>? description;

  /// A friendly name of the regular expression pattern set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// One or more blocks of regular expression patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. See Regular Expression below for details.
  final pulumi.Input<List<RegexPatternSetRegularExpression>>?
  regularExpressions;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final pulumi.Input<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RegexPatternSetArgs].
  /// [description] A friendly description of the regular expression pattern set.
  /// [name] A friendly name of the regular expression pattern set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regularExpressions] One or more blocks of regular expression patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. See Regular Expression below for details.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  /// [tags] An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RegexPatternSetArgs({
    String? description,
    String? name,
    String? namePrefix,
    String? region,
    List<RegexPatternSetRegularExpression>? regularExpressions,
    required String scope,
    Map<String, String>? tags,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       region = pulumi.Input.asOptionalInput<String>(region),
       regularExpressions =
           pulumi.Input.asOptionalInput<List<RegexPatternSetRegularExpression>>(
             regularExpressions,
           ),
       scope = pulumi.Input.asInput<String>(scope),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'regularExpressions':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegexPatternSetRegularExpression>,
            List<Map<String, dynamic>>
          >(
            regularExpressions,
            (value) =>
                pulumi.Input.encodeList<
                  RegexPatternSetRegularExpression,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scope': scope,
      'tags': ?tags,
    };
  }

  factory RegexPatternSetArgs.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      regularExpressions: map['regularExpressions'] == null
          ? null
          : pulumi.Input.decodeList<RegexPatternSetRegularExpression>(
              map['regularExpressions'],
              (value) => RegexPatternSetRegularExpression.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      scope: map['scope'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
