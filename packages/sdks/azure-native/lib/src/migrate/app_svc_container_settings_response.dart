// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// App service container settings.
class AppSvcContainerSettingsResponse {
  /// Gets or sets the isolation required.
  final pulumi.Input<bool> isolationRequired;

  /// Creates a new [AppSvcContainerSettingsResponse].
  /// [isolationRequired] Gets or sets the isolation required.
  const AppSvcContainerSettingsResponse({
    required this.isolationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationRequired': isolationRequired,
    };
  }

  factory AppSvcContainerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AppSvcContainerSettingsResponse(
      isolationRequired: pulumi.Input.fromValue(map['isolationRequired'] as bool),
    );
  }
}

