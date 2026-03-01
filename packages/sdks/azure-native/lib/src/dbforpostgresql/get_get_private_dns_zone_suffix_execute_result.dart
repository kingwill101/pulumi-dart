// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGetPrivateDnsZoneSuffixExecute.
class GetGetPrivateDnsZoneSuffixExecuteResult {
  final String? value;

  /// Creates a new [GetGetPrivateDnsZoneSuffixExecuteResult].
  /// [value] Optional.
  GetGetPrivateDnsZoneSuffixExecuteResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetGetPrivateDnsZoneSuffixExecuteResult.fromMap(Map<String, dynamic> map) {
    return GetGetPrivateDnsZoneSuffixExecuteResult(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

