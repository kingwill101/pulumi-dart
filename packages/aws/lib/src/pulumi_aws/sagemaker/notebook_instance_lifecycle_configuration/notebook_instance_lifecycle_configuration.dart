import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_instance_lifecycle_configuration_args.dart';

/// Provides a lifecycle configuration for SageMaker AI Notebook Instances.
///
/// ## Example Usage
///
/// Usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import models using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/notebookInstanceLifecycleConfiguration:NotebookInstanceLifecycleConfiguration lc foo
/// ```
class NotebookInstanceLifecycleConfiguration extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this lifecycle configuration.
  late final pulumi.Output<String> arn;

  /// The name of the lifecycle configuration (must be unique). If omitted, this provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// A shell script (base64-encoded) that runs only once when the SageMaker AI Notebook Instance is created.
  late final pulumi.Output<String?> onCreate;

  /// A shell script (base64-encoded) that runs every time the SageMaker AI Notebook Instance is started including the time it's created.
  late final pulumi.Output<String?> onStart;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  NotebookInstanceLifecycleConfiguration(
    String name, {
    NotebookInstanceLifecycleConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/notebookInstanceLifecycleConfiguration:NotebookInstanceLifecycleConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.onCreate = registerOutput<String?>('onCreate');
    this.onStart = registerOutput<String?>('onStart');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
