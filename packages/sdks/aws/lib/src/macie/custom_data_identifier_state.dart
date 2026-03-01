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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? ignoreWords,
    pulumi.Output<List<String>>? keywords,
    pulumi.Output<int>? maximumMatchDistance,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? regex,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      ignoreWords = pulumi.Input.asOptionalInput<List<String>>(ignoreWords),
      keywords = pulumi.Input.asOptionalInput<List<String>>(keywords),
      maximumMatchDistance = pulumi.Input.asOptionalInput<int>(maximumMatchDistance),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      regex = pulumi.Input.asOptionalInput<String>(regex),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ignoreWords: map['ignoreWords'] == null ? null : pulumi.Output.create<List<String>>((map['ignoreWords'] as List).cast<String>()),
      keywords: map['keywords'] == null ? null : pulumi.Output.create<List<String>>((map['keywords'] as List).cast<String>()),
      maximumMatchDistance: map['maximumMatchDistance'] == null ? null : pulumi.Output.create<int>(map['maximumMatchDistance'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      regex: map['regex'] == null ? null : pulumi.Output.create<String>(map['regex'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

