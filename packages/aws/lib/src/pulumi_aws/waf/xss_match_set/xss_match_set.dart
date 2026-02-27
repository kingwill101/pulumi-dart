import 'package:pulumi/pulumi.dart';
import '../xss_match_set_xss_match_tuple/xss_match_set_xss_match_tuple.dart';
import 'xss_match_set_args.dart';

/// Provides a WAF XSS Match Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF XSS Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/xssMatchSet:XssMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class XssMatchSet extends CustomResource {
  /// Amazon Resource Name (ARN)
  late final Output<String> arn;

  /// The name or description of the SizeConstraintSet.
  late final Output<String> name;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  late final Output<List<XssMatchSetXssMatchTuple>?> xssMatchTuples;

  XssMatchSet(
    String name, {
    XssMatchSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/xssMatchSet:XssMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.xssMatchTuples =
        registerOutput<List<XssMatchSetXssMatchTuple>?>('xssMatchTuples');
  }
}
