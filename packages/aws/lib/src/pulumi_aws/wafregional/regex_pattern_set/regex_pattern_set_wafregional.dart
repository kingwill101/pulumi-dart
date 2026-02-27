import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_pattern_set_wafregional_args.dart';

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
class RegexPatternSetWafregional extends pulumi.CustomResource {
  /// The name or description of the Regex Pattern Set.
  late final pulumi.Output<String> name;

  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  late final pulumi.Output<List<String>?> regexPatternStrings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  RegexPatternSetWafregional(
    String name, {
    RegexPatternSetWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/regexPatternSet:RegexPatternSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.regexPatternStrings =
        registerOutput<List<String>?>('regexPatternStrings');
    this.region = registerOutput<String>('region');
  }
}
