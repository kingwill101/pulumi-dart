// ignore_for_file: unused_element, unnecessary_cast

class ByteMatchSetByteMatchTupleFieldToMatch2 {
  /// When the value of Type is HEADER, enter the name of the header that you want AWS WAF to search, for example, User-Agent or Referer. If the value of Type is any other value, omit Data.
  final String? data;

  /// The part of the web request that you want AWS WAF to search for a specified string.
  final String type;

  ByteMatchSetByteMatchTupleFieldToMatch2({
    this.data,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    map['type'] = type;
    return map;
  }

  factory ByteMatchSetByteMatchTupleFieldToMatch2.fromMap(
      Map<String, dynamic> map) {
    return ByteMatchSetByteMatchTupleFieldToMatch2(
      data: map['data'] == null ? null : map['data'] as String,
      type: map['type'] as String,
    );
  }
}
