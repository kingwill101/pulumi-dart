import 'package:pulumi/pulumi.dart';
import '../regex_match_set_regex_match_tuple/regex_match_set_regex_match_tuple.dart';
import 'regex_match_set_args.dart';

/// Provides a WAF Regex Match Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regex Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/regexMatchSet:RegexMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RegexMatchSet extends CustomResource {
  /// Amazon Resource Name (ARN)
  late final Output<String> arn;

  /// The name or description of the Regex Match Set.
  late final Output<String> name;

  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  late final Output<List<RegexMatchSetRegexMatchTuple>?> regexMatchTuples;

  RegexMatchSet(
    String name, {
    RegexMatchSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/regexMatchSet:RegexMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.regexMatchTuples =
        registerOutput<List<RegexMatchSetRegexMatchTuple>?>('regexMatchTuples');
  }
}
