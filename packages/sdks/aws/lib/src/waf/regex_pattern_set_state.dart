// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegexPatternSet resources.
class RegexPatternSetState {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// The name or description of the Regex Pattern Set.
  final pulumi.Input<String>? name;
  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  final pulumi.Input<List<String>>? regexPatternStrings;

  /// Creates a new [RegexPatternSetState].
  /// [arn] Amazon Resource Name (ARN)
  /// [name] The name or description of the Regex Pattern Set.
  /// [regexPatternStrings] A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  RegexPatternSetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? regexPatternStrings,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      regexPatternStrings = pulumi.Input.asOptionalInput<List<String>>(regexPatternStrings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'regexPatternStrings': ?regexPatternStrings,
    };
  }

  factory RegexPatternSetState.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regexPatternStrings: map['regexPatternStrings'] == null ? null : pulumi.Output.create<List<String>>((map['regexPatternStrings'] as List).cast<String>()),
    );
  }
}

