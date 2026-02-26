import 'package:pulumi/pulumi.dart';
import 'site_args.dart';

/// Creates a new Hosting Site in the specified parent Firebase project. Note that Hosting sites can take several minutes to propagate through Firebase systems.
/// Auto-naming is currently not supported for this resource.
class Site extends CustomResource {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id) associated with the Hosting site.
  late final Output<String> appId;

  /// The default URL for the Hosting site.
  late final Output<String> defaultUrl;

  /// Optional. User-specified labels for the Hosting site.
  late final Output<Map<String, String>> labels;

  /// The fully-qualified resource name of the Hosting site, in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the Firebase project's [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  late final Output<String> name;
  late final Output<String> project;

  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid domain name label.
  late final Output<String> siteId;

  /// The type of Hosting site. Every Firebase project has a `DEFAULT_SITE`, which is created when Hosting is provisioned for the project. All additional sites are `USER_SITE`.
  late final Output<String> type;

  Site(
    String name, {
    SiteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebasehosting/v1beta1:Site',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.defaultUrl = registerOutput<String>('defaultUrl');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.siteId = registerOutput<String>('siteId');
    this.type = registerOutput<String>('type');
  }
}
