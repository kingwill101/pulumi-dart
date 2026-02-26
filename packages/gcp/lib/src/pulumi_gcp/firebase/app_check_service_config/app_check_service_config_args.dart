// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AppCheckServiceConfig.
class AppCheckServiceConfigArgs {
  final Input<String>? enforcementMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  /// firebasestorage.googleapis.com (Cloud Storage for Firebase)
  /// firebasedatabase.googleapis.com (Firebase Realtime Database)
  /// firestore.googleapis.com (Cloud Firestore)
  /// identitytoolkit.googleapis.com (Authentication)
  final Input<String> serviceId;

  AppCheckServiceConfigArgs({
    this.enforcementMode,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enforcementModeValue = enforcementMode;
    if (enforcementModeValue != null) {
      map['enforcementMode'] = enforcementModeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory AppCheckServiceConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckServiceConfigArgs(
      enforcementMode: Input.asOptionalInput<String>(map['enforcementMode']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
