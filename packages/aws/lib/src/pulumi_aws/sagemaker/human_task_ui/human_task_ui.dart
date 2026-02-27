import 'package:pulumi/pulumi.dart';
import '../human_task_uiui_template/human_task_uiui_template.dart';
import 'human_task_uiargs.dart';

/// Provides a SageMaker AI Human Task UI resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Human Task UIs using the `human_task_ui_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/humanTaskUI:HumanTaskUI example example
/// ```
class HumanTaskUI extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Human Task UI.
  late final Output<String> arn;

  /// The name of the Human Task UI.
  late final Output<String> humanTaskUiName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Liquid template for the worker user interface. See UI Template below.
  late final Output<HumanTaskUIUiTemplate> uiTemplate;

  HumanTaskUI(
    String name, {
    HumanTaskUIArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/humanTaskUI:HumanTaskUI',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.humanTaskUiName = registerOutput<String>('humanTaskUiName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uiTemplate = registerOutput<HumanTaskUIUiTemplate>('uiTemplate');
  }
}
