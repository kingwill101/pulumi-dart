import 'package:pulumi/pulumi.dart';
import '../hosting_version_config/hosting_version_config.dart';
import 'hosting_version_args.dart';

/// A `Version` is a configuration which determine how a site is displayed. Static files are not supported at the moment.
///
/// To get more information about Version, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/sites.versions)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Version Redirect
///
///
///
/// ### Firebasehosting Version Headers
///
///
///
/// ### Firebasehosting Version Headers Regex
///
///
///
/// ### Firebasehosting Version Path
///
///
///
/// ### Firebasehosting Version Cloud Run
///
///
///
/// ### Firebasehosting Version Cloud Functions
///
///
///
///
/// ## Import
///
/// Version can be imported using any of these accepted formats:
///
/// * `sites/{{site_id}}/versions/{{version_id}}`
///
/// * `{{site_id}}/{{version_id}}`
///
/// When using the `pulumi import` command, Version can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingVersion:HostingVersion default sites/{{site_id}}/versions/{{version_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingVersion:HostingVersion default {{site_id}}/{{version_id}}
/// ```
class HostingVersion extends CustomResource {
  /// The configuration for the behavior of the site. This configuration exists in the `firebase.json` file.
  /// Structure is documented below.
  late final Output<HostingVersionConfig?> config;

  /// The fully-qualified resource name for the version, in the format:
  /// sites/SITE_ID/versions/VERSION_ID
  late final Output<String> name;

  /// Required. The ID of the site in which to create this Version.
  late final Output<String> siteId;

  /// The ID for the version as in sites/SITE_ID/versions/VERSION_ID
  late final Output<String> versionId;

  HostingVersion(
    String name, {
    HostingVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingVersion:HostingVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = registerOutput<HostingVersionConfig?>('config');
    this.name = registerOutput<String>('name');
    this.siteId = registerOutput<String>('siteId');
    this.versionId = registerOutput<String>('versionId');
  }
}
