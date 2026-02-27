import 'package:pulumi/pulumi.dart';
import '../byte_match_set_byte_match_tuple/byte_match_set_byte_match_tuple.dart';
import 'byte_match_set_args.dart';

/// Provides a WAF Byte Match Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Byte Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:waf/byteMatchSet:ByteMatchSet byte_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class ByteMatchSet extends CustomResource {
  /// Amazon Resource Name (ARN) of the byte match set.
  late final Output<String> arn;

  /// Specifies the bytes (typically a string that corresponds
  /// with ASCII characters) that you want to search for in web requests,
  /// the location in requests that you want to search, and other settings.
  late final Output<List<ByteMatchSetByteMatchTuple>?> byteMatchTuples;

  /// The name or description of the Byte Match Set.
  late final Output<String> name;

  ByteMatchSet(
    String name, {
    ByteMatchSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/byteMatchSet:ByteMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.byteMatchTuples =
        registerOutput<List<ByteMatchSetByteMatchTuple>?>('byteMatchTuples');
    this.name = registerOutput<String>('name');
  }
}
