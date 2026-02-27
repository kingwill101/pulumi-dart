import 'package:pulumi/pulumi.dart';
import 'pipeline_args2.dart';

/// Provides a DataPipeline Pipeline resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datapipeline.Pipeline` using the id (Pipeline ID). For example:
///
/// ```sh
/// $ pulumi import aws:datapipeline/pipeline:Pipeline default df-1234567890
/// ```
class Pipeline2 extends CustomResource {
  /// The description of Pipeline.
  late final Output<String?> description;

  /// The name of Pipeline.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Pipeline2(
    String name, {
    PipelineArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datapipeline/pipeline:Pipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
