// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostingSite.
class HostingSiteArgs {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the Hosting site.
  final Input<String>? appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  /// used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid
  /// domain name label.
  final Input<String>? siteId;

  HostingSiteArgs({
    this.appId,
    this.project,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appIdValue = appId;
    if (appIdValue != null) {
      map['appId'] = appIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final siteIdValue = siteId;
    if (siteIdValue != null) {
      map['siteId'] = siteIdValue;
    }
    return map;
  }

  factory HostingSiteArgs.fromMap(Map<String, dynamic> map) {
    return HostingSiteArgs(
      appId: Input.asOptionalInput<String>(map['appId']),
      project: Input.asOptionalInput<String>(map['project']),
      siteId: Input.asOptionalInput<String>(map['siteId']),
    );
  }
}
