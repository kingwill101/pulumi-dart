// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_v1beta1_get_ios_app_args_doc}
/// Arguments for getIosApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_v1beta1_get_ios_app_args_doc}
class GetIosAppArgs {
  final pulumi.Input<String> iosAppId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIosAppArgs].
  /// [iosAppId] Required.
  /// [project] Optional.
  GetIosAppArgs({
    required String iosAppId,
    String? project,
  }) :
      iosAppId = pulumi.Input.asInput<String>(iosAppId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosAppId': iosAppId,
      'project': ?project,
    };
  }

  factory GetIosAppArgs.fromMap(Map<String, dynamic> map) {
    return GetIosAppArgs(
      iosAppId: map['iosAppId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

