// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersServiceNow {
  /// The base URL of the Jira instance's site to which to connect.
  final pulumi.Input<String> siteBaseUrl;

  /// Creates a new [DataSourceParametersServiceNow].
  /// [siteBaseUrl] The base URL of the Jira instance's site to which to connect.
  const DataSourceParametersServiceNow({
    required this.siteBaseUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteBaseUrl': siteBaseUrl,
    };
  }

  factory DataSourceParametersServiceNow.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersServiceNow(
      siteBaseUrl: pulumi.Input.fromValue(map['siteBaseUrl'] as String),
    );
  }
}
