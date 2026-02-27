import 'package:pulumi/pulumi.dart' as pulumi;
import 'owner_args.dart';

/// An owner is an additional user that may manage a verified web site in the
/// [Google Search Console](https://www.google.com/webmasters/tools/). There
/// are two types of web resource owners:
///
/// * Verified owners, which are added to a web resource automatically when it
/// is created (i.e., when the resource is verified). A verified owner is
/// determined by the identity of the user requesting verification.
/// * Additional owners, which can be added to the resource by verified owners.
///
/// `gcp.siteverification.Owner` creates additional owners. If your web site
/// was verified using the
/// `gcp.siteverification.WebResource`
/// resource then you (or the identity was used to create the resource, such as a
/// service account) are already an owner.
///
/// > **Note:** The email address of the owner must belong to a Google account,
/// such as a Gmail account, a Google Workspace account, or a GCP service account.
///
/// Working with site verification requires the `https://www.googleapis.com/auth/siteverification`
/// authentication scope. See the
/// Google Provider authentication documentation
/// to learn how to configure additional scopes.
///
/// To get more information about site owners, see:
///
/// * [API documentation](https://developers.google.com/site-verification/v1)
/// * How-to Guides
/// * [Getting Started](https://developers.google.com/site-verification/v1/getting_started)
///
/// ## Example Usage
///
/// ### Site Verification Storage Bucket
///
/// This example uses the `FILE` verification method to verify ownership of web site hosted
/// in a Google Cloud Storage bucket. Ownership is proved by creating a file with a Google-provided
/// value in a known location. The user applying this configuration will automatically be
/// added as a verified owner, and the `gcp.siteverification.Owner` resource will add
/// `user@example.com` as an additional owner.
///
///
///
/// ## Import
///
/// Owner can be imported using this format:
///
/// * `webResource/{{web_resource_id}}/{{email}}`
///
/// When using the `pulumi import` command, Site owners can be imported using the format above. For example:
///
/// ```sh
/// $ pulumi import gcp:siteverification/owner:Owner default webResource/{{web_resource_id}}/{{email}}
/// ```
///
/// verified owners is to delete the web resource itself.
class Owner extends pulumi.CustomResource {
  /// The email of the user to be added as an owner.
  ///
  /// - - -
  late final pulumi.Output<String> email;

  /// The id of of the web resource to which the owner will be added, in the form `webResource/<resource_id>`,
  /// such as `webResource/https://www.example.com/`
  late final pulumi.Output<String> webResourceId;

  Owner(
    String name, {
    OwnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:siteverification/owner:Owner',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.email = registerOutput<String>('email');
    this.webResourceId = registerOutput<String>('webResourceId');
  }
}
