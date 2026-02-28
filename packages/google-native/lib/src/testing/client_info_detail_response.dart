// ignore_for_file: unused_element, unnecessary_cast

/// Key-value pair of detailed information about the client which invoked the test. Examples: {'Version', '1.0'}, {'Release Track', 'BETA'}.
class ClientInfoDetailResponse {
  /// The key of detailed client information.
  final String key;

  /// The value of detailed client information.
  final String value;

  /// Creates a new [ClientInfoDetailResponse].
  /// [key] The key of detailed client information.
  /// [value] The value of detailed client information.
  ClientInfoDetailResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory ClientInfoDetailResponse.fromMap(Map<String, dynamic> map) {
    return ClientInfoDetailResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
