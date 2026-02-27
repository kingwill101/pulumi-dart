import 'package:pulumi/pulumi.dart';
import '../custom_action_type_configuration_property/custom_action_type_configuration_property.dart';
import '../custom_action_type_input_artifact_details/custom_action_type_input_artifact_details.dart';
import '../custom_action_type_output_artifact_details/custom_action_type_output_artifact_details.dart';
import '../custom_action_type_settings/custom_action_type_settings.dart';
import 'custom_action_type_args.dart';

/// Provides a CodeDeploy CustomActionType
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy CustomActionType using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:codepipeline/customActionType:CustomActionType example Build:pulumi:1
/// ```
class CustomActionType extends CustomResource {
  /// The action ARN.
  late final Output<String> arn;

  /// The category of the custom action. Valid values: `Source`, `Build`, `Deploy`, `Test`, `Invoke`, `Approval`
  late final Output<String> category;

  /// The configuration properties for the custom action. Max 10 items.
  late final Output<List<CustomActionTypeConfigurationProperty>?>
      configurationProperties;
  late final Output<CustomActionTypeInputArtifactDetails> inputArtifactDetails;
  late final Output<CustomActionTypeOutputArtifactDetails>
      outputArtifactDetails;

  /// The creator of the action being called.
  late final Output<String> owner;
  late final Output<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<CustomActionTypeSettings?> settings;
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> version;

  CustomActionType(
    String name, {
    CustomActionTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/customActionType:CustomActionType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.category = registerOutput<String>('category');
    this.configurationProperties =
        registerOutput<List<CustomActionTypeConfigurationProperty>?>(
            'configurationProperties');
    this.inputArtifactDetails =
        registerOutput<CustomActionTypeInputArtifactDetails>(
            'inputArtifactDetails');
    this.outputArtifactDetails =
        registerOutput<CustomActionTypeOutputArtifactDetails>(
            'outputArtifactDetails');
    this.owner = registerOutput<String>('owner');
    this.providerName = registerOutput<String>('providerName');
    this.region = registerOutput<String>('region');
    this.settings = registerOutput<CustomActionTypeSettings?>('settings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
  }
}
