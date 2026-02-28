// ignore_for_file: unused_element, unnecessary_cast

class GetManagementServerManagementUri {
  /// The management console api endpoint.
  final String api;

  /// The management console webUi.
  final String webUi;

  /// Creates a new [GetManagementServerManagementUri].
  /// [api] The management console api endpoint.
  /// [webUi] The management console webUi.
  GetManagementServerManagementUri({
    required this.api,
    required this.webUi,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['api'] = api;
    map['webUi'] = webUi;
    return map;
  }

  factory GetManagementServerManagementUri.fromMap(Map<String, dynamic> map) {
    return GetManagementServerManagementUri(
      api: map['api'] as String,
      webUi: map['webUi'] as String,
    );
  }
}
