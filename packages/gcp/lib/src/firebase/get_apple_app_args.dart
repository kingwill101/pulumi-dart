// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_apple_app_get_apple_app_args_doc}
/// Arguments for getAppleApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_apple_app_get_apple_app_args_doc}
class GetAppleAppArgs {
  /// The app_id of name of the Firebase iosApp.
  ///
  ///
  /// - - -
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppleAppArgs].
  /// [appId] The app_id of name of the Firebase iosApp.
  /// [project] The ID of the project in which the resource belongs.
  GetAppleAppArgs({
    required String appId,
    String? project,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
    };
  }

  factory GetAppleAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppleAppArgs(
      appId: map['appId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

