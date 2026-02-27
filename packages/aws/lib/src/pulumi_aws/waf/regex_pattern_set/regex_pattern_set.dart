import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_pattern_set_args.dart';

/// Provides a WAF Regex Pattern Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS WAF Regex Pattern Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/regexPatternSet:RegexPatternSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RegexPatternSet extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN)
  late final pulumi.Output<String> arn;

  /// The name or description of the Regex Pattern Set.
  late final pulumi.Output<String> name;

  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  late final pulumi.Output<List<String>?> regexPatternStrings;

  RegexPatternSet(
    String name, {
    RegexPatternSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/regexPatternSet:RegexPatternSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.regexPatternStrings =
        registerOutput<List<String>?>('regexPatternStrings');
  }
}
