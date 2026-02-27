import 'package:pulumi/pulumi.dart' as pulumi;
import '../regex_match_set_regex_match_tuple/regex_match_set_regex_match_tuple_wafregional.dart';
import 'regex_match_set_wafregional_args.dart';

/// Provides a WAF Regional Regex Match Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Regex Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/regexMatchSet:RegexMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RegexMatchSetWafregional extends pulumi.CustomResource {
  /// The name or description of the Regex Match Set.
  late final pulumi.Output<String> name;

  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  late final pulumi.Output<List<RegexMatchSetRegexMatchTupleWafregional>?>
      regexMatchTuples;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  RegexMatchSetWafregional(
    String name, {
    RegexMatchSetWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/regexMatchSet:RegexMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.regexMatchTuples =
        registerOutput<List<RegexMatchSetRegexMatchTupleWafregional>?>(
            'regexMatchTuples');
    this.region = registerOutput<String>('region');
  }
}
