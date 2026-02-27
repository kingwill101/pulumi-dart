import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_flow_module_args.dart';

/// Provides an Amazon Connect Contact Flow Module resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// This resource embeds or references Contact Flows Modules specified in Amazon Connect Contact Flow Language. For more information see
/// [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html)
///
/// !> **WARN:** Contact Flow Modules exported from the Console [See Contact Flow import/export which is the same for Contact Flow Modules](https://docs.aws.amazon.com/connect/latest/adminguide/contact-flow-import-export.html) are not in the Amazon Connect Contact Flow Language and can not be used with this resource. Instead, the recommendation is to use the AWS CLI [`describe-contact-flow-module`](https://docs.aws.amazon.com/cli/latest/reference/connect/describe-contact-flow-module.html).
/// See example below which uses `jq` to extract the `Content` attribute and saves it to a local file.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With External Content
///
/// Use the AWS CLI to extract Contact Flow Content:
///
/// ```console
/// % aws connect describe-contact-flow-module --instance-id 1b3c5d8-1b3c-1b3c-1b3c-1b3c5d81b3c5 --contact-flow-module-id c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5 --region us-west-2 | jq '.ContactFlowModule.Content | fromjson' > contact_flow_module.json
/// ```
///
/// Use the generated file as input:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Contact Flow Modules using the `instance_id` and `contact_flow_module_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/contactFlowModule:ContactFlowModule example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class ContactFlowModule extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Contact Flow Module.
  late final pulumi.Output<String> arn;

  /// The identifier of the Contact Flow Module.
  late final pulumi.Output<String> contactFlowModuleId;

  /// Specifies the content of the Contact Flow Module, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  late final pulumi.Output<String> content;

  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow Module source specified with `filename`.
  late final pulumi.Output<String?> contentHash;

  /// Specifies the description of the Contact Flow Module.
  late final pulumi.Output<String?> description;

  /// The path to the Contact Flow Module source within the local filesystem. Conflicts with `content`.
  late final pulumi.Output<String?> filename;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;

  /// Specifies the name of the Contact Flow Module.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Tags to apply to the Contact Flow Module. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ContactFlowModule(
    String name, {
    ContactFlowModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/contactFlowModule:ContactFlowModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.contactFlowModuleId = registerOutput<String>('contactFlowModuleId');
    this.content = registerOutput<String>('content');
    this.contentHash = registerOutput<String?>('contentHash');
    this.description = registerOutput<String?>('description');
    this.filename = registerOutput<String?>('filename');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
