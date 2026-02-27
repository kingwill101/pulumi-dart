// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../regex_pattern_set_regular_expression/regex_pattern_set_regular_expression.dart';

/// The set of arguments for RegexPatternSet.
class RegexPatternSetArgs3 {
  /// A friendly description of the regular expression pattern set.
  final Input<String>? description;

  /// A friendly name of the regular expression pattern set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// One or more blocks of regular expression patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. See Regular Expression below for details.
  final Input<List<RegexPatternSetRegularExpression>>? regularExpressions;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final Input<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RegexPatternSetArgs3({
    this.description,
    this.name,
    this.namePrefix,
    this.region,
    this.regularExpressions,
    required this.scope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
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
    final regularExpressionsValue = regularExpressions;
    if (regularExpressionsValue != null) {
      map['regularExpressions'] = Input.mapOptionalInputValue<
              List<RegexPatternSetRegularExpression>,
              List<Map<String, dynamic>>>(
          regularExpressionsValue,
          (value) => Input.encodeList<RegexPatternSetRegularExpression,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['scope'] = scope;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RegexPatternSetArgs3.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      regularExpressions:
          Input.asOptionalInput<List<RegexPatternSetRegularExpression>>(
              map['regularExpressions']),
      scope: Input.asInput<String>(map['scope']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
