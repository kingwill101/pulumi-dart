// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_byte_match_tuple.dart';

/// {@template pulumi_waf_byte_match_set_byte_match_set_args_doc}
/// The set of arguments for ByteMatchSet.
/// {@endtemplate}
/// {@macro pulumi_waf_byte_match_set_byte_match_set_args_doc}
class ByteMatchSetArgs {
  /// Specifies the bytes (typically a string that corresponds
  /// with ASCII characters) that you want to search for in web requests,
  /// the location in requests that you want to search, and other settings.
  final pulumi.Input<List<ByteMatchSetByteMatchTuple>>? byteMatchTuples;
  /// The name or description of the Byte Match Set.
  final pulumi.Input<String>? name;

  /// Creates a new [ByteMatchSetArgs].
  /// [byteMatchTuples] Specifies the bytes (typically a string that corresponds
  /// [name] The name or description of the Byte Match Set.
  ByteMatchSetArgs({
    this.byteMatchTuples,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byteMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<ByteMatchSetByteMatchTuple>, List<Map<String, dynamic>>>(byteMatchTuples, (value) => pulumi.Input.encodeList<ByteMatchSetByteMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory ByteMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetArgs(
      byteMatchTuples: (() { final guardedValue = map['byteMatchTuples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

