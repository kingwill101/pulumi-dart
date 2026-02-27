import 'package:pulumi/pulumi.dart';
import '../xss_match_set_xss_match_tuple/xss_match_set_xss_match_tuple2.dart';
import 'xss_match_set_args2.dart';

/// Provides a WAF Regional XSS Match Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS WAF Regional XSS Match using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/xssMatchSet:XssMatchSet example 12345abcde
/// ```
class XssMatchSet2 extends CustomResource {
  /// The name of the set
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  late final Output<List<XssMatchSetXssMatchTuple2>?> xssMatchTuples;

  XssMatchSet2(
    String name, {
    XssMatchSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/xssMatchSet:XssMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.xssMatchTuples =
        registerOutput<List<XssMatchSetXssMatchTuple2>?>('xssMatchTuples');
  }
}
