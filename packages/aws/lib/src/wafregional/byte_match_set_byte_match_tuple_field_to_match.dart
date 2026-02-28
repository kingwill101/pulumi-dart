// ignore_for_file: unused_element, unnecessary_cast


class ByteMatchSetByteMatchTupleFieldToMatch {
  /// When the value of Type is HEADER, enter the name of the header that you want AWS WAF to search, for example, User-Agent or Referer. If the value of Type is any other value, omit Data.
  final String? data;
  /// The part of the web request that you want AWS WAF to search for a specified string.
  final String type;

  /// Creates a new [ByteMatchSetByteMatchTupleFieldToMatch].
  /// [data] When the value of Type is HEADER, enter the name of the header that you want AWS WAF to search, for example, User-Agent or Referer. If the value of Type is any other value, omit Data.
  /// [type] The part of the web request that you want AWS WAF to search for a specified string.
  ByteMatchSetByteMatchTupleFieldToMatch({
    this.data,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'type': type,
    };
  }

  factory ByteMatchSetByteMatchTupleFieldToMatch.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetByteMatchTupleFieldToMatch(
      data: map['data'] == null ? null : map['data'] as String,
      type: map['type'] as String,
    );
  }
}

