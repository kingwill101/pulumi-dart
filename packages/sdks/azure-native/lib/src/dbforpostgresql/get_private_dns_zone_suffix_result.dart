// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrivateDnsZoneSuffix.
class GetPrivateDnsZoneSuffixResult {
  final String? value;

  /// Creates a new [GetPrivateDnsZoneSuffixResult].
  /// [value] Optional.
  const GetPrivateDnsZoneSuffixResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetPrivateDnsZoneSuffixResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateDnsZoneSuffixResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

