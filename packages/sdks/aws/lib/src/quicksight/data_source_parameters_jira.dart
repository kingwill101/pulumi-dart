// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersJira {
  /// The base URL of the Jira instance's site to which to connect.
  final pulumi.Input<String> siteBaseUrl;

  /// Creates a new [DataSourceParametersJira].
  /// [siteBaseUrl] The base URL of the Jira instance's site to which to connect.
  const DataSourceParametersJira({
    required this.siteBaseUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteBaseUrl': siteBaseUrl,
    };
  }

  factory DataSourceParametersJira.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersJira(
      siteBaseUrl: pulumi.Input.fromValue(map['siteBaseUrl'] as String),
    );
  }
}

