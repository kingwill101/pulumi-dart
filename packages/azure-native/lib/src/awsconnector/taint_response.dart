// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Taint
class TaintResponse {
  /// Property effect
  final String? effect;
  /// Property key
  final String? key;
  /// Property value
  final String? value;

  /// Creates a new [TaintResponse].
  /// [effect] Property effect
  /// [key] Property key
  /// [value] Property value
  TaintResponse({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'value': ?value,
    };
  }

  factory TaintResponse.fromMap(Map<String, dynamic> map) {
    return TaintResponse(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

