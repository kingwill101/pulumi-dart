import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_pool_role_attachment_args.dart';
import 'identity_pool_role_attachment_state.dart';

/// Provides an AWS Cognito Identity Pool Roles Attachment.
///
/// ## Import
///
/// Using `pulumi import`, import Cognito Identity Pool Roles Attachment using the Identity Pool ID. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/identityPoolRoleAttachment:IdentityPoolRoleAttachment example us-west-2:b64805ad-cb56-40ba-9ffc-f5d8207e6d42
/// ```
class IdentityPoolRoleAttachment extends pulumi.CustomResource {
  /// An identity pool ID in the format `REGION_GUID`.
  late final pulumi.Output<String> identityPoolId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A List of Role Mapping.
  late final pulumi.Output<List<Map<String, dynamic>>?> roleMappings;
  /// The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.
  late final pulumi.Output<Map<String, String>> roles;

  /// Creates a new [IdentityPoolRoleAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityPoolRoleAttachment]. {@macro pulumi_cognito_identity_pool_role_attachment_identity_pool_role_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityPoolRoleAttachment(
    String name, {
    IdentityPoolRoleAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityPoolRoleAttachment:IdentityPoolRoleAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identityPoolId = registerOutput<String>('identityPoolId');
    region = registerOutput<String>('region');
    roleMappings = registerOutput<List<Map<String, dynamic>>?>('roleMappings');
    roles = registerOutput<Map<String, String>>('roles');
  }

  /// Gets an existing [IdentityPoolRoleAttachment] resource's state with the given [name] and [id].
  static IdentityPoolRoleAttachment get(
    String name,
    pulumi.Input<String> id, {
    IdentityPoolRoleAttachmentState? state,
  }) {
    return IdentityPoolRoleAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdentityPoolRoleAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityPoolRoleAttachment:IdentityPoolRoleAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identityPoolId = registerOutput<String>('identityPoolId');
    region = registerOutput<String>('region');
    roleMappings = registerOutput<List<Map<String, dynamic>>?>('roleMappings');
    roles = registerOutput<Map<String, String>>('roles');
  }
}
