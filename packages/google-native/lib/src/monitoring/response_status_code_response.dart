// ignore_for_file: unused_element, unnecessary_cast

/// A status to accept. Either a status code class like "2xx", or an integer status code like "200".
class ResponseStatusCodeResponse {
  /// A class of status codes to accept.
  final String statusClass;

  /// A status code to accept.
  final int statusValue;

  /// Creates a new [ResponseStatusCodeResponse].
  /// [statusClass] A class of status codes to accept.
  /// [statusValue] A status code to accept.
  ResponseStatusCodeResponse({
    required this.statusClass,
    required this.statusValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statusClass'] = statusClass;
    map['statusValue'] = statusValue;
    return map;
  }

  factory ResponseStatusCodeResponse.fromMap(Map<String, dynamic> map) {
    return ResponseStatusCodeResponse(
      statusClass: map['statusClass'] as String,
      statusValue: map['statusValue'] as int,
    );
  }
}
