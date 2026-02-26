import 'package:pulumi/pulumi.dart';
import 'instance_attachment_args.dart';

/// An `Instance attachment` in Apigee.
///
///
/// To get more information about InstanceAttachment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances.attachments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ## Import
///
/// InstanceAttachment can be imported using any of these accepted formats:
///
/// * `{{instance_id}}/attachments/{{name}}`
///
/// * `{{instance_id}}/{{name}}`
///
/// When using the `pulumi import` command, InstanceAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/instanceAttachment:InstanceAttachment default {{instance_id}}/attachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/instanceAttachment:InstanceAttachment default {{instance_id}}/{{name}}
/// ```
class InstanceAttachment extends CustomResource {
  /// The resource ID of the environment.
  late final Output<String> environment;

  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  late final Output<String> instanceId;

  /// The name of the newly created  attachment (output parameter).
  late final Output<String> name;

  InstanceAttachment(
    String name, {
    InstanceAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/instanceAttachment:InstanceAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.environment = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
  }
}
