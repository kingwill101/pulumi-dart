import 'package:pulumi/pulumi.dart' as pulumi;
import '../provisioning_template_pre_provisioning_hook/provisioning_template_pre_provisioning_hook.dart';
import 'provisioning_template_args.dart';

/// Manages an IoT fleet provisioning template. For more info, see the AWS documentation on [fleet provisioning](https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT fleet provisioning templates using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iot/provisioningTemplate:ProvisioningTemplate fleet FleetProvisioningTemplate
/// ```
class ProvisioningTemplate extends pulumi.CustomResource {
  /// The ARN that identifies the provisioning template.
  late final pulumi.Output<String> arn;

  /// The default version of the fleet provisioning template.
  late final pulumi.Output<int> defaultVersionId;

  /// The description of the fleet provisioning template.
  late final pulumi.Output<String?> description;

  /// True to enable the fleet provisioning template, otherwise false.
  late final pulumi.Output<bool?> enabled;

  /// The name of the fleet provisioning template.
  late final pulumi.Output<String> name;

  /// Creates a pre-provisioning hook template. Details below.
  late final pulumi.Output<ProvisioningTemplatePreProvisioningHook?>
      preProvisioningHook;

  /// The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  late final pulumi.Output<String> provisioningRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The JSON formatted contents of the fleet provisioning template.
  late final pulumi.Output<String> templateBody;

  /// The type you define in a provisioning template.
  late final pulumi.Output<String> type;

  ProvisioningTemplate(
    String name, {
    ProvisioningTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/provisioningTemplate:ProvisioningTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersionId = registerOutput<int>('defaultVersionId');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    this.preProvisioningHook =
        registerOutput<ProvisioningTemplatePreProvisioningHook?>(
            'preProvisioningHook');
    this.provisioningRoleArn = registerOutput<String>('provisioningRoleArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateBody = registerOutput<String>('templateBody');
    this.type = registerOutput<String>('type');
  }
}
