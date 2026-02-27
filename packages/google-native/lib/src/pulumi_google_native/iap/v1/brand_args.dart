// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Brand.
class BrandArgs {
  /// Application name displayed on OAuth consent screen.
  final pulumi.Input<String>? applicationTitle;
  final pulumi.Input<String>? project;

  /// Support email displayed on the OAuth consent screen.
  final pulumi.Input<String>? supportEmail;

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
      applicationTitle:
          pulumi.Input.asOptionalInput<String>(map['applicationTitle']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      supportEmail: pulumi.Input.asOptionalInput<String>(map['supportEmail']),
    );
  }
}
