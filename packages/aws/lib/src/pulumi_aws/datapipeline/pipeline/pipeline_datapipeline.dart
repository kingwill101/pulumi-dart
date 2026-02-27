import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_datapipeline_args.dart';

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
class PipelineDatapipeline extends pulumi.CustomResource {
  /// The description of Pipeline.
  late final pulumi.Output<String?> description;

  /// The name of Pipeline.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  PipelineDatapipeline(
    String name, {
    PipelineDatapipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datapipeline/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
