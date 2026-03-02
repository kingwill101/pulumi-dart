// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGetPrivateDnsZoneSuffixExecute.
class GetGetPrivateDnsZoneSuffixExecuteResult {
  /// Represents the private DNS zone suffix.
  final String? privateDnsZoneSuffix;

  /// Creates a new [GetGetPrivateDnsZoneSuffixExecuteResult].
  /// [privateDnsZoneSuffix] Represents the private DNS zone suffix.
  GetGetPrivateDnsZoneSuffixExecuteResult({
    this.privateDnsZoneSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsZoneSuffix': ?privateDnsZoneSuffix,
    };
  }

  factory GetGetPrivateDnsZoneSuffixExecuteResult.fromMap(Map<String, dynamic> map) {
    return GetGetPrivateDnsZoneSuffixExecuteResult(
      privateDnsZoneSuffix: map['privateDnsZoneSuffix'] == null ? null : map['privateDnsZoneSuffix']! as String,
    );
  }
}

