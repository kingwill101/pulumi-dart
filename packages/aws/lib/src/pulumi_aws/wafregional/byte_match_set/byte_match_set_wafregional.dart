import 'package:pulumi/pulumi.dart' as pulumi;
import '../byte_match_set_byte_match_tuple/byte_match_set_byte_match_tuple_wafregional.dart';
import 'byte_match_set_wafregional_args.dart';

/// Provides a WAF Regional Byte Match Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Byte Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/byteMatchSet:ByteMatchSet byte_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class ByteMatchSetWafregional extends pulumi.CustomResource {
  /// Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  late final pulumi.Output<List<ByteMatchSetByteMatchTupleWafregional>?>
      byteMatchTuples;

  /// The name or description of the ByteMatchSet.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ByteMatchSetWafregional(
    String name, {
    ByteMatchSetWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/byteMatchSet:ByteMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.byteMatchTuples =
        registerOutput<List<ByteMatchSetByteMatchTupleWafregional>?>(
            'byteMatchTuples');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
