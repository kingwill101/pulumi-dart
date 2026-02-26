// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CustomDataIdentifier.
class CustomDataIdentifierArgs {
  /// A custom description of the custom data identifier. The description can contain as many as 512 characters.
  final Input<String>? description;

  /// An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.
  final Input<List<String>>? ignoreWords;

  /// An array that lists specific character sequences (keywords), one of which must be within proximity (<span pulumi-lang-nodejs="`maximumMatchDistance`" pulumi-lang-dotnet="`MaximumMatchDistance`" pulumi-lang-go="`maximumMatchDistance`" pulumi-lang-python="`maximum_match_distance`" pulumi-lang-yaml="`maximumMatchDistance`" pulumi-lang-java="`maximumMatchDistance`">`maximum_match_distance`</span>) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive.
  final Input<List<String>>? keywords;

  /// The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.
  final Input<int>? maximumMatchDistance;

  /// A custom name for the custom data identifier. The name can contain as many as 128 characters. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters.
  final Input<String>? regex;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  CustomDataIdentifierArgs({
    this.description,
    this.ignoreWords,
    this.keywords,
    this.maximumMatchDistance,
    this.name,
    this.namePrefix,
    this.regex,
    this.region,
    this.tags,
  });

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
      description: Input.asOptionalInput<String>(map['description']),
      ignoreWords: Input.asOptionalInput<List<String>>(map['ignoreWords']),
      keywords: Input.asOptionalInput<List<String>>(map['keywords']),
      maximumMatchDistance:
          Input.asOptionalInput<int>(map['maximumMatchDistance']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      regex: Input.asOptionalInput<String>(map['regex']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
