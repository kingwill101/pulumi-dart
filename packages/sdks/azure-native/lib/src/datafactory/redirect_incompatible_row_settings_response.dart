// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Redirect incompatible row settings
class RedirectIncompatibleRowSettingsResponse {
  /// Name of the Azure Storage, Storage SAS, or Azure Data Lake Store linked service used for redirecting incompatible row. Must be specified if redirectIncompatibleRowSettings is specified. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> linkedServiceName;
  /// The path for storing the redirect incompatible row data. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? path;

  /// Creates a new [RedirectIncompatibleRowSettingsResponse].
  /// [linkedServiceName] Name of the Azure Storage, Storage SAS, or Azure Data Lake Store linked service used for redirecting incompatible row. Must be specified if redirectIncompatibleRowSettings is specified. Type: string (or Expression with resultType string).
  /// [path] The path for storing the redirect incompatible row data. Type: string (or Expression with resultType string).
  RedirectIncompatibleRowSettingsResponse({
    required this.linkedServiceName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'path': ?path,
    };
  }

  factory RedirectIncompatibleRowSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RedirectIncompatibleRowSettingsResponse(
      linkedServiceName: (map['linkedServiceName']).input(),
      path: map['path'] == null ? null : (map['path']!).input(),
    );
  }
}

