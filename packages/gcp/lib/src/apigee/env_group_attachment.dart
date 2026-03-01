import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_group_attachment_args.dart';

/// An `Environment Group attachment` in Apigee.
///
///
/// To get more information about EnvgroupAttachment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.envgroups.attachments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ## Import
///
/// EnvgroupAttachment can be imported using any of these accepted formats:
///
/// * `{{envgroup_id}}/attachments/{{name}}`
///
/// * `{{envgroup_id}}/{{name}}`
///
/// When using the `pulumi import` command, EnvgroupAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/envGroupAttachment:EnvGroupAttachment default {{envgroup_id}}/attachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/envGroupAttachment:EnvGroupAttachment default {{envgroup_id}}/{{name}}
/// ```
class EnvGroupAttachment extends pulumi.CustomResource {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/envgroups/{{envgroup_name}}`.
  late final pulumi.Output<String> envgroupId;

  /// The resource ID of the environment.
  late final pulumi.Output<String> environment;

  /// The name of the newly created  attachment (output parameter).
  late final pulumi.Output<String> name;

  /// Creates a new [EnvGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvGroupAttachment]. {@macro pulumi_apigee_env_group_attachment_env_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvGroupAttachment(
    String name, {
    EnvGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/envGroupAttachment:EnvGroupAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.envgroupId = registerOutput<String>('envgroupId');
    this.environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
  }
}
