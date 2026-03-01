import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_pipeline_execution_args.dart';
import 'image_pipeline_execution_state.dart';

/// ## Import
///
/// ECS Image Pipeline Execution can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/imagePipelineExecution:ImagePipelineExecution example <id>
/// ```
class ImagePipelineExecution extends pulumi.CustomResource {
  /// The time when the image build task was created.
  late final pulumi.Output<String> createTime;
  /// The ID of the image template.
  late final pulumi.Output<String> imagePipelineId;
  /// The status of the image build task. Valid values:
  /// - CANCELLED: canceled. The build process has been canceled.
  late final pulumi.Output<String> status;

  /// Creates a new [ImagePipelineExecution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImagePipelineExecution]. {@macro pulumi_ecs_image_pipeline_execution_image_pipeline_execution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImagePipelineExecution(
    String name, {
    ImagePipelineExecutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/imagePipelineExecution:ImagePipelineExecution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.imagePipelineId = registerOutput<String>('imagePipelineId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [ImagePipelineExecution] resource's state with the given [name] and [id].
  static ImagePipelineExecution get(
    String name,
    pulumi.Input<String> id, {
    ImagePipelineExecutionState? state,
  }) {
    return ImagePipelineExecution._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImagePipelineExecution._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/imagePipelineExecution:ImagePipelineExecution',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.imagePipelineId = registerOutput<String>('imagePipelineId');
    this.status = registerOutput<String>('status');
  }
}
