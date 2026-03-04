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
    this.description,
    this.name,
    this.namePrefix,
    this.region,
    this.regularExpressions,
    required this.scope,
    this.tags,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regularExpressions: (() {
        final guardedValue = map['regularExpressions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegexPatternSetRegularExpression>(
            guardedValue,
            (value) => RegexPatternSetRegularExpression.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
