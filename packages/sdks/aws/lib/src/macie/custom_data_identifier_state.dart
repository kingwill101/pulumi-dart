// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomDataIdentifier resources.
class CustomDataIdentifierState {
  /// The Amazon Resource Name (ARN) of the custom data identifier.
  final pulumi.Input<String>? arn;
  /// The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created.
  final pulumi.Input<String>? createdAt;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CustomDataIdentifierState].
  /// [arn] The Amazon Resource Name (ARN) of the custom data identifier.
  /// [createdAt] The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created.
  /// [description] A custom description of the custom data identifier. The description can contain as many as 512 characters.
  /// [ignoreWords] An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.
  /// [keywords] An array that lists specific character sequences (keywords), one of which must be within proximity (`maximum_match_distance`) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive.
  /// [maximumMatchDistance] The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.
  /// [name] A custom name for the custom data identifier. The name can contain as many as 128 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [regex] The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CustomDataIdentifierState({
    this.arn,
    this.createdAt,
    this.description,
    this.ignoreWords,
    this.keywords,
    this.maximumMatchDistance,
    this.name,
    this.namePrefix,
    this.regex,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'description': ?description,
      'ignoreWords': ?ignoreWords,
      'keywords': ?keywords,
      'maximumMatchDistance': ?maximumMatchDistance,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'regex': ?regex,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CustomDataIdentifierState.fromMap(Map<String, dynamic> map) {
    return CustomDataIdentifierState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ignoreWords: map['ignoreWords'] == null ? null : ((map['ignoreWords'] as List).cast<String>()).input(),
      keywords: map['keywords'] == null ? null : ((map['keywords'] as List).cast<String>()).input(),
      maximumMatchDistance: map['maximumMatchDistance'] == null ? null : (map['maximumMatchDistance'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      regex: map['regex'] == null ? null : (map['regex'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

