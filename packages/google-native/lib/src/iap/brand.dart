import 'package:pulumi/pulumi.dart' as pulumi;
import 'brand_args.dart';

/// Constructs a new OAuth brand for the project if one does not exist. The created brand is "internal only", meaning that OAuth clients created under it only accept requests from users who belong to the same Google Workspace organization as the project. The brand is created in an un-reviewed status. NOTE: The "internal only" status can be manually changed in the Google Cloud Console. Requires that a brand does not already exist for the project, and that the specified support email is owned by the caller.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Brand extends pulumi.CustomResource {
  /// Application name displayed on OAuth consent screen.
  late final pulumi.Output<String> applicationTitle;

  /// Identifier of the brand. NOTE: GCP project number achieves the same brand identification purpose as only one brand per project can be created.
  late final pulumi.Output<String> name;

  /// Whether the brand is only intended for usage inside the G Suite organization only.
  late final pulumi.Output<bool> orgInternalOnly;
  late final pulumi.Output<String> project;

  /// Support email displayed on the OAuth consent screen.
  late final pulumi.Output<String> supportEmail;

  /// Creates a new [Brand].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Brand]. {@macro pulumi_iap_v1_brand_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Brand(
    String name, {
    BrandArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:iap/v1:Brand',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationTitle = registerOutput<String>('applicationTitle');
    this.name = registerOutput<String>('name');
    this.orgInternalOnly = registerOutput<bool>('orgInternalOnly');
    this.project = registerOutput<String>('project');
    this.supportEmail = registerOutput<String>('supportEmail');
  }
}
