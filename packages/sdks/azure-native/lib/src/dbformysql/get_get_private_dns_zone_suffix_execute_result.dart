// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGetPrivateDnsZoneSuffixExecute.
class GetGetPrivateDnsZoneSuffixExecuteResult {
  /// Represents the private DNS zone suffix.
  final String? privateDnsZoneSuffix;

  /// Creates a new [GetGetPrivateDnsZoneSuffixExecuteResult].
  /// [privateDnsZoneSuffix] Represents the private DNS zone suffix.
  const GetGetPrivateDnsZoneSuffixExecuteResult({
    this.privateDnsZoneSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsZoneSuffix': ?privateDnsZoneSuffix,
    };
  }

  factory GetGetPrivateDnsZoneSuffixExecuteResult.fromMap(Map<String, dynamic> map) {
    return GetGetPrivateDnsZoneSuffixExecuteResult(
      privateDnsZoneSuffix: (() { final guardedValue = map['privateDnsZoneSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

