// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// App service native settings.
class AppSvcNativeSettingsResponse {
  /// Gets or sets the isolation required.
  final pulumi.Input<bool> isolationRequired;

  /// Creates a new [AppSvcNativeSettingsResponse].
  /// [isolationRequired] Gets or sets the isolation required.
  AppSvcNativeSettingsResponse({
    required this.isolationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationRequired': isolationRequired,
    };
  }

  factory AppSvcNativeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AppSvcNativeSettingsResponse(
      isolationRequired: pulumi.Input.fromValue(map['isolationRequired'] as bool),
    );
  }
}

