// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersJira {
  /// The base URL of the Jira instance's site to which to connect.
  final String siteBaseUrl;

  /// Creates a new [DataSourceParametersJira].
  /// [siteBaseUrl] The base URL of the Jira instance's site to which to connect.
  DataSourceParametersJira({
    required this.siteBaseUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['siteBaseUrl'] = siteBaseUrl;
    return map;
  }

  factory DataSourceParametersJira.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersJira(
      siteBaseUrl: map['siteBaseUrl'] as String,
    );
  }
}
