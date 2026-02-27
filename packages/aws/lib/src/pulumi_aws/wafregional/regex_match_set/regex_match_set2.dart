import 'package:pulumi/pulumi.dart';
import '../regex_match_set_regex_match_tuple/regex_match_set_regex_match_tuple2.dart';
import 'regex_match_set_args2.dart';

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
class RegexMatchSet2 extends CustomResource {
  /// The name or description of the Regex Match Set.
  late final Output<String> name;

  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  late final Output<List<RegexMatchSetRegexMatchTuple2>?> regexMatchTuples;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  RegexMatchSet2(
    String name, {
    RegexMatchSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/regexMatchSet:RegexMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.regexMatchTuples =
        registerOutput<List<RegexMatchSetRegexMatchTuple2>?>(
            'regexMatchTuples');
    this.region = registerOutput<String>('region');
  }
}
