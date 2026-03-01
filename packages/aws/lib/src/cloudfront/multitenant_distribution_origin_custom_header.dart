// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionOriginCustomHeader {
  /// Name of the header.
  final String headerName;

  /// Value for the header.
  final String headerValue;

  /// Creates a new [MultitenantDistributionOriginCustomHeader].
  /// [headerName] Name of the header.
  /// [headerValue] Value for the header.
  MultitenantDistributionOriginCustomHeader({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory MultitenantDistributionOriginCustomHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultitenantDistributionOriginCustomHeader(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}
