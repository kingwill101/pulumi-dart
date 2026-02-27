import 'package:pulumi/pulumi.dart' as pulumi;
import '../xss_match_set_xss_match_tuple/xss_match_set_xss_match_tuple_wafregional.dart';
import 'xss_match_set_wafregional_args.dart';

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
class XssMatchSetWafregional extends pulumi.CustomResource {
  /// The name of the set
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  late final pulumi.Output<List<XssMatchSetXssMatchTupleWafregional>?>
      xssMatchTuples;

  XssMatchSetWafregional(
    String name, {
    XssMatchSetWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/xssMatchSet:XssMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.xssMatchTuples =
        registerOutput<List<XssMatchSetXssMatchTupleWafregional>?>(
            'xssMatchTuples');
  }
}
