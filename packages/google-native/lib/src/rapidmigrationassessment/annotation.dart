import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_args.dart';

/// Creates an Annotation
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Annotation extends pulumi.CustomResource {
  /// Create time stamp.
  late final pulumi.Output<String> createTime;

  /// Labels as key value pairs.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// name of resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests.
  late final pulumi.Output<String?> requestId;

  /// Type of an annotation.
  late final pulumi.Output<String> type;

  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Annotation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Annotation]. {@macro pulumi_rapidmigrationassessment_v1_annotation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Annotation(
    String name, {
    AnnotationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:rapidmigrationassessment/v1:Annotation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
