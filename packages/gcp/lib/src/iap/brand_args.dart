// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_brand_brand_args_doc}
/// The set of arguments for Brand.
/// {@endtemplate}
/// {@macro pulumi_iap_brand_brand_args_doc}
class BrandArgs {
  /// Application name displayed on OAuth consent screen.
  final pulumi.Input<String> applicationTitle;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Support email displayed on the OAuth consent screen. Can be either a
  /// user or group email. When a user email is specified, the caller must
  /// be the user with the associated email address. When a group email is
  /// specified, the caller can be either a user or a service account which
  /// is an owner of the specified group in Cloud Identity.
  final pulumi.Input<String> supportEmail;

  /// Creates a new [BrandArgs].
  /// [applicationTitle] Application name displayed on OAuth consent screen.
  /// [project] The ID of the project in which the resource belongs.
  /// [supportEmail] Support email displayed on the OAuth consent screen. Can be either a
  BrandArgs({
    required String applicationTitle,
    String? project,
    required String supportEmail,
  }) :
      applicationTitle = pulumi.Input.asInput<String>(applicationTitle),
      project = pulumi.Input.asOptionalInput<String>(project),
      supportEmail = pulumi.Input.asInput<String>(supportEmail);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTitle': applicationTitle,
      'project': ?project,
      'supportEmail': supportEmail,
    };
  }

  factory BrandArgs.fromMap(Map<String, dynamic> map) {
    return BrandArgs(
      applicationTitle: map['applicationTitle'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      supportEmail: map['supportEmail'] as String,
    );
  }
}

