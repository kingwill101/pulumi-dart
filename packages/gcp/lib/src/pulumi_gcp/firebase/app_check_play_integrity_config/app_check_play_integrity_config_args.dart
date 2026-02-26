// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AppCheckPlayIntegrityConfig.
class AppCheckPlayIntegrityConfigArgs {
  /// The ID of an
  /// [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id).
  final Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Specifies the duration for which App Check tokens exchanged from Play Integrity artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final Input<String>? tokenTtl;

  AppCheckPlayIntegrityConfigArgs({
    required this.appId,
    this.project,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tokenTtlValue = tokenTtl;
    if (tokenTtlValue != null) {
      map['tokenTtl'] = tokenTtlValue;
    }
    return map;
  }

  factory AppCheckPlayIntegrityConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckPlayIntegrityConfigArgs(
      appId: Input.asInput<String>(map['appId']),
      project: Input.asOptionalInput<String>(map['project']),
      tokenTtl: Input.asOptionalInput<String>(map['tokenTtl']),
    );
  }
}
