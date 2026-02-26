// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSite.
class GetSiteResult {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id) associated with the Hosting site.
  final String appId;

  /// The default URL for the Hosting site.
  final String defaultUrl;

  /// Optional. User-specified labels for the Hosting site.
  final Map<String, String> labels;

  /// The fully-qualified resource name of the Hosting site, in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the Firebase project's [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  final String name;

  /// The type of Hosting site. Every Firebase project has a `DEFAULT_SITE`, which is created when Hosting is provisioned for the project. All additional sites are `USER_SITE`.
  final String type;

  GetSiteResult({
    required this.appId,
    required this.defaultUrl,
    required this.labels,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['defaultUrl'] = defaultUrl;
    map['labels'] = labels;
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GetSiteResult.fromMap(Map<String, dynamic> map) {
    return GetSiteResult(
      appId: map['appId'] as String,
      defaultUrl: map['defaultUrl'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
