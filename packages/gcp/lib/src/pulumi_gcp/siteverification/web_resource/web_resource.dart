import 'package:pulumi/pulumi.dart';
import '../web_resource_site/web_resource_site.dart';
import 'web_resource_args.dart';

/// A web resource is a website or domain with verified ownership. Once your
/// ownership is verified you will be able to manage your website in the
/// [Google Search Console](https://www.google.com/webmasters/tools/).
///
/// > **Note:** The verification data (DNS `TXT` record, HTML file, `meta` tag, etc.)
/// must already exist before the web resource is created, and must be deleted before
/// the web resource is destroyed. The Google Site Verification API checks that the
/// verification data exists at creation time and does not exist at destruction time
/// and will fail if the required condition is not met.
///
///
/// To get more information about WebResource, see:
///
/// * [API documentation](https://developers.google.com/site-verification/v1)
/// * How-to Guides
/// * [Getting Started](https://developers.google.com/site-verification/v1/getting_started)
///
/// ## Example Usage
///
/// ### Site Verification Domain Record
///
///
///
///
/// ## Import
///
/// WebResource can be imported using any of these accepted formats:
///
/// * `webResource/{{web_resource_id}}`
///
/// * `{{web_resource_id}}`
///
/// When using the `pulumi import` command, WebResource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:siteverification/webResource:WebResource default webResource/{{web_resource_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:siteverification/webResource:WebResource default {{web_resource_id}}
/// ```
class WebResource extends CustomResource {
  /// The email addresses of all direct, verified owners of this exact property. Indirect owners —
  /// for example verified owners of the containing domain—are not included in this list.
  late final Output<List<String>> owners;

  /// Container for the address and type of a site for which a verification token will be verified.
  /// Structure is documented below.
  late final Output<WebResourceSite> site;

  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  late final Output<String> verificationMethod;

  /// The string used to identify this web resource.
  late final Output<String> webResourceId;

  WebResource(
    String name, {
    WebResourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:siteverification/webResource:WebResource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.owners = registerOutput<List<String>>('owners');
    this.site = registerOutput<WebResourceSite>('site');
    this.verificationMethod = registerOutput<String>('verificationMethod');
    this.webResourceId = registerOutput<String>('webResourceId');
  }
}
