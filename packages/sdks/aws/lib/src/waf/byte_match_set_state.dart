// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_byte_match_tuple.dart';

/// Input properties used for looking up and filtering ByteMatchSet resources.
class ByteMatchSetState {
  /// ARN of the byte match set.
  final pulumi.Input<String?>? arn;
  /// Specifies the bytes (typically a string that corresponds
  /// with ASCII characters) that you want to search for in web requests,
  /// the location in requests that you want to search, and other settings.
  final pulumi.Input<List<ByteMatchSetByteMatchTuple>?>? byteMatchTuples;
  /// The name or description of the Byte Match Set.
  final pulumi.Input<String?>? name;

  /// Creates a new [ByteMatchSetState].
  /// [arn] ARN of the byte match set.
  /// [byteMatchTuples] Specifies the bytes (typically a string that corresponds
  /// [name] The name or description of the Byte Match Set.
  const ByteMatchSetState({
    this.arn,
    this.byteMatchTuples,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'byteMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<ByteMatchSetByteMatchTuple>, List<Map<String, dynamic>>>(byteMatchTuples, (value) => pulumi.Input.encodeList<ByteMatchSetByteMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory ByteMatchSetState.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      byteMatchTuples: (() { final guardedValue = map['byteMatchTuples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
