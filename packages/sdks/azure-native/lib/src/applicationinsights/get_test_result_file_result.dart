// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTestResultFile.
class GetTestResultFileResult {
  /// File contents.
  final String? data;
  /// The URI that can be used to request the next section of the result file in the event the file is too large for a single request.
  final String? nextLink;

  /// Creates a new [GetTestResultFileResult].
  /// [data] File contents.
  /// [nextLink] The URI that can be used to request the next section of the result file in the event the file is too large for a single request.
  GetTestResultFileResult({
    this.data,
    this.nextLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'nextLink': ?nextLink,
    };
  }

  factory GetTestResultFileResult.fromMap(Map<String, dynamic> map) {
    return GetTestResultFileResult(
      data: map['data'] == null ? null : map['data'] as String,
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
    );
  }
}

