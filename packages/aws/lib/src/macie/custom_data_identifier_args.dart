// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_macie_custom_data_identifier_custom_data_identifier_args_doc}
/// The set of arguments for CustomDataIdentifier.
/// {@endtemplate}
/// {@macro pulumi_macie_custom_data_identifier_custom_data_identifier_args_doc}
class CustomDataIdentifierArgs {
  /// A custom description of the custom data identifier. The description can contain as many as 512 characters.
  final pulumi.Input<String>? description;

  /// An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.
  final pulumi.Input<List<String>>? ignoreWords;

  /// An array that lists specific character sequences (keywords), one of which must be within proximity (`maximum_match_distance`) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive.
  final pulumi.Input<List<String>>? keywords;

  /// The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.
  final pulumi.Input<int>? maximumMatchDistance;

  /// A custom name for the custom data identifier. The name can contain as many as 128 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters.
  final pulumi.Input<String>? regex;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomDataIdentifierArgs].
  /// [description] A custom description of the custom data identifier. The description can contain as many as 512 characters.
  /// [ignoreWords] An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.
  /// [keywords] An array that lists specific character sequences (keywords), one of which must be within proximity (`maximum_match_distance`) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive.
  /// [maximumMatchDistance] The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.
  /// [name] A custom name for the custom data identifier. The name can contain as many as 128 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [regex] The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CustomDataIdentifierArgs({
    String? description,
    List<String>? ignoreWords,
    List<String>? keywords,
    int? maximumMatchDistance,
    String? name,
    String? namePrefix,
    String? regex,
    String? region,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        ignoreWords = pulumi.Input.asOptionalInput<List<String>>(ignoreWords),
        keywords = pulumi.Input.asOptionalInput<List<String>>(keywords),
        maximumMatchDistance =
            pulumi.Input.asOptionalInput<int>(maximumMatchDistance),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        regex = pulumi.Input.asOptionalInput<String>(regex),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ignoreWordsValue = ignoreWords;
    if (ignoreWordsValue != null) {
      map['ignoreWords'] = ignoreWordsValue;
    }
    final keywordsValue = keywords;
    if (keywordsValue != null) {
      map['keywords'] = keywordsValue;
    }
    final maximumMatchDistanceValue = maximumMatchDistance;
    if (maximumMatchDistanceValue != null) {
      map['maximumMatchDistance'] = maximumMatchDistanceValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CustomDataIdentifierArgs.fromMap(Map<String, dynamic> map) {
    return CustomDataIdentifierArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      ignoreWords: map['ignoreWords'] == null
          ? null
          : (map['ignoreWords'] as List).cast<String>(),
      keywords: map['keywords'] == null
          ? null
          : (map['keywords'] as List).cast<String>(),
      maximumMatchDistance: map['maximumMatchDistance'] == null
          ? null
          : map['maximumMatchDistance'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
