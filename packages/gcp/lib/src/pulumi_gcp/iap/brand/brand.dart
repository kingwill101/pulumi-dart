import 'package:pulumi/pulumi.dart';
import 'brand_args.dart';

/// ## Example Usage
///
/// ### Iap Brand
///
///
///
///
/// ## Import
///
/// Brand can be imported using any of these accepted formats:
///
/// * `projects/{{project_id}}/brands/{{brand_id}}`
///
/// * `projects/{{project_number}}/brands/{{brand_id}}`
///
/// * `{{project_number}}/{{brand_id}}`
///
/// When using the `pulumi import` command, Brand can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/brand:Brand default projects/{{project_id}}/brands/{{brand_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/brand:Brand default projects/{{project_number}}/brands/{{brand_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/brand:Brand default {{project_number}}/{{brand_id}}
/// ```
class Brand extends CustomResource {
  /// Application name displayed on OAuth consent screen.
  late final Output<String> applicationTitle;

  /// Output only. Identifier of the brand, in the format `projects/{project_number}/brands/{brand_id}`
  /// NOTE: The name can also be expressed as `projects/{project_id}/brands/{brand_id}`, e.g. when importing.
  /// NOTE: The brand identification corresponds to the project number as only one
  /// brand can be created per project.
  late final Output<String> name;

  /// Whether the brand is only intended for usage inside the GSuite organization only.
  late final Output<bool> orgInternalOnly;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Support email displayed on the OAuth consent screen. Can be either a
  /// user or group email. When a user email is specified, the caller must
  /// be the user with the associated email address. When a group email is
  /// specified, the caller can be either a user or a service account which
  /// is an owner of the specified group in Cloud Identity.
  late final Output<String> supportEmail;

  Brand(
    String name, {
    BrandArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/brand:Brand',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationTitle = registerOutput<String>('applicationTitle');
    this.name = registerOutput<String>('name');
    this.orgInternalOnly = registerOutput<bool>('orgInternalOnly');
    this.project = registerOutput<String>('project');
    this.supportEmail = registerOutput<String>('supportEmail');
  }
}
