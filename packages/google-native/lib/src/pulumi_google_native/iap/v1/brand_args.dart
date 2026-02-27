// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Brand.
class BrandArgs {
  /// Application name displayed on OAuth consent screen.
  final Input<String>? applicationTitle;
  final Input<String>? project;

  /// Support email displayed on the OAuth consent screen.
  final Input<String>? supportEmail;

  BrandArgs({
    this.applicationTitle,
    this.project,
    this.supportEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationTitleValue = applicationTitle;
    if (applicationTitleValue != null) {
      map['applicationTitle'] = applicationTitleValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final supportEmailValue = supportEmail;
    if (supportEmailValue != null) {
      map['supportEmail'] = supportEmailValue;
    }
    return map;
  }

  factory BrandArgs.fromMap(Map<String, dynamic> map) {
    return BrandArgs(
      applicationTitle: Input.asOptionalInput<String>(map['applicationTitle']),
      project: Input.asOptionalInput<String>(map['project']),
      supportEmail: Input.asOptionalInput<String>(map['supportEmail']),
    );
  }
}
