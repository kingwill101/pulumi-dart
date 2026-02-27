import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_site_args.dart';

/// A `Site` represents a Firebase Hosting site.
///
/// To get more information about Site, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/projects.sites)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Site Basic
///
///
///
/// ### Firebasehosting Site Full
///
///
///
/// ### Firebasehosting Site Default
///
///
///
///
/// ## Import
///
/// Site can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/sites/{{site_id}}`
///
/// * `{{project}}/{{site_id}}`
///
/// * `sites/{{site_id}}`
///
/// * `{{site_id}}`
///
/// When using the `pulumi import` command, Site can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingSite:HostingSite default projects/{{project}}/sites/{{site_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingSite:HostingSite default {{project}}/{{site_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingSite:HostingSite default sites/{{site_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingSite:HostingSite default {{site_id}}
/// ```
class HostingSite extends pulumi.CustomResource {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the Hosting site.
  late final pulumi.Output<String?> appId;

  /// The default URL for the site in the form of https://{name}.web.app
  late final pulumi.Output<String> defaultUrl;

  /// Output only. The fully-qualified resource name of the Hosting site, in
  /// the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the
  /// Firebase project's
  /// [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its
  /// [`ProjectId`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id).
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  /// used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid
  /// domain name label.
  late final pulumi.Output<String?> siteId;

  /// The type of Hosting site, either 'DEFAULT_SITE' or `USER_SITE`
  late final pulumi.Output<String> type;

  HostingSite(
    String name, {
    HostingSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingSite:HostingSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String?>('appId');
    this.defaultUrl = registerOutput<String>('defaultUrl');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.siteId = registerOutput<String?>('siteId');
    this.type = registerOutput<String>('type');
  }
}
