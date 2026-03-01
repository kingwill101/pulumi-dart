// ignore_for_file: unused_element, unnecessary_cast


class GetReceivedLicenseValidity {
  /// Start of the validity time range.
  final String begin;
  /// End of the validity time range.
  final String end;

  /// Creates a new [GetReceivedLicenseValidity].
  /// [begin] Start of the validity time range.
  /// [end] End of the validity time range.
  GetReceivedLicenseValidity({
    required this.begin,
    required this.end,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'begin': begin,
      'end': end,
    };
  }

  factory GetReceivedLicenseValidity.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseValidity(
      begin: map['begin'] as String,
      end: map['end'] as String,
    );
  }
}

