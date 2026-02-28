// ignore_for_file: unused_element, unnecessary_cast

/// Information for connecting over HTTP(s).
class AddressableResponse {
  final String url;

  /// Creates a new [AddressableResponse].
  /// [url] Required.
  AddressableResponse({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  factory AddressableResponse.fromMap(Map<String, dynamic> map) {
    return AddressableResponse(
      url: map['url'] as String,
    );
  }
}
