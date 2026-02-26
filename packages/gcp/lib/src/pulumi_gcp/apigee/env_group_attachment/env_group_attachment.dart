import 'package:pulumi/pulumi.dart';
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
class EnvGroupAttachment extends CustomResource {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/envgroups/{{envgroup_name}}`.
  late final Output<String> envgroupId;

  /// The resource ID of the environment.
  late final Output<String> environment;

  /// The name of the newly created  attachment (output parameter).
  late final Output<String> name;

  EnvGroupAttachment(
    String name, {
    EnvGroupAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envGroupAttachment:EnvGroupAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.envgroupId = Output.createUnknown<String>();
    this.environment = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
  }
}
