// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Brand.
class BrandArgs {
  /// Application name displayed on OAuth consent screen.
  final Input<String> applicationTitle;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Support email displayed on the OAuth consent screen. Can be either a
  /// user or group email. When a user email is specified, the caller must
  /// be the user with the associated email address. When a group email is
  /// specified, the caller can be either a user or a service account which
  /// is an owner of the specified group in Cloud Identity.
  final Input<String> supportEmail;

  BrandArgs({
    required this.applicationTitle,
    this.project,
    required this.supportEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationTitle'] = applicationTitle;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['supportEmail'] = supportEmail;
    return map;
  }

  factory BrandArgs.fromMap(Map<String, dynamic> map) {
    return BrandArgs(
      applicationTitle: Input.asInput<String>(map['applicationTitle']),
      project: Input.asOptionalInput<String>(map['project']),
      supportEmail: Input.asInput<String>(map['supportEmail']),
    );
  }
}
