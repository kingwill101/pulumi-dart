// ignore_for_file: unused_element, unnecessary_cast

class GetReceivedLicenseValidity {
  /// Start of the validity time range.
  final String begin;

  /// End of the validity time range.
  final String end;

  GetReceivedLicenseValidity({
    required this.begin,
    required this.end,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['begin'] = begin;
    map['end'] = end;
    return map;
  }

  factory GetReceivedLicenseValidity.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseValidity(
      begin: map['begin'] as String,
      end: map['end'] as String,
    );
  }
}
