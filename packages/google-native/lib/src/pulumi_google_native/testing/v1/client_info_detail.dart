// ignore_for_file: unused_element, unnecessary_cast

/// Key-value pair of detailed information about the client which invoked the test. Examples: {'Version', '1.0'}, {'Release Track', 'BETA'}.
class ClientInfoDetail {
  /// The key of detailed client information.
  final String key;

  /// The value of detailed client information.
  final String value;

  ClientInfoDetail({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory ClientInfoDetail.fromMap(Map<String, dynamic> map) {
    return ClientInfoDetail(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
