// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersServiceNow {
  /// The base URL of the Jira instance's site to which to connect.
  final String siteBaseUrl;

  /// Creates a new [DataSourceParametersServiceNow].
  /// [siteBaseUrl] The base URL of the Jira instance's site to which to connect.
  DataSourceParametersServiceNow({required this.siteBaseUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'siteBaseUrl': siteBaseUrl};
  }

  factory DataSourceParametersServiceNow.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersServiceNow(
      siteBaseUrl: map['siteBaseUrl'] as String,
    );
  }
}
