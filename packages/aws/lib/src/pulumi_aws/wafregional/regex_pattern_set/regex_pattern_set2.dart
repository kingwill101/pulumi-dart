import 'package:pulumi/pulumi.dart';
import 'regex_pattern_set_args2.dart';

/// Provides a WAF Regional Regex Pattern Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Regex Pattern Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/regexPatternSet:RegexPatternSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RegexPatternSet2 extends CustomResource {
  /// The name or description of the Regex Pattern Set.
  late final Output<String> name;

  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  late final Output<List<String>?> regexPatternStrings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  RegexPatternSet2(
    String name, {
    RegexPatternSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/regexPatternSet:RegexPatternSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.regexPatternStrings =
        registerOutput<List<String>?>('regexPatternStrings');
    this.region = registerOutput<String>('region');
  }
}
