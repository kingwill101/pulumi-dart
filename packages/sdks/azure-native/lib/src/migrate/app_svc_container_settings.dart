// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// App service container settings.
class AppSvcContainerSettings {
  /// Gets or sets the isolation required.
  final pulumi.Input<bool> isolationRequired;

  /// Creates a new [AppSvcContainerSettings].
  /// [isolationRequired] Gets or sets the isolation required.
  AppSvcContainerSettings({required this.isolationRequired});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isolationRequired': isolationRequired};
  }

  factory AppSvcContainerSettings.fromMap(Map<String, dynamic> map) {
    return AppSvcContainerSettings(
      isolationRequired: pulumi.Input.fromValue(
        map['isolationRequired'] as bool,
      ),
    );
  }
}
