// ignore_for_file: unused_element, unnecessary_cast

class ManagementServerManagementUri {
  /// (Output)
  /// The management console api endpoint.
  final String? api;

  /// (Output)
  /// The management console webUi.
  final String? webUi;

  /// Creates a new [ManagementServerManagementUri].
  /// [api] (Output)
  /// [webUi] (Output)
  ManagementServerManagementUri({this.api, this.webUi});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'api': ?api, 'webUi': ?webUi};
  }

  factory ManagementServerManagementUri.fromMap(Map<String, dynamic> map) {
    return ManagementServerManagementUri(
      api: map['api'] == null ? null : map['api'] as String,
      webUi: map['webUi'] == null ? null : map['webUi'] as String,
    );
  }
}
