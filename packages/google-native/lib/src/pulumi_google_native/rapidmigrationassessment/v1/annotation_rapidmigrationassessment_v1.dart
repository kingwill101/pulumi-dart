import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_rapidmigrationassessment_v1_args.dart';

/// Creates an Annotation
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class AnnotationRapidmigrationassessmentV1 extends pulumi.CustomResource {
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

  AnnotationRapidmigrationassessmentV1(
    String name, {
    AnnotationRapidmigrationassessmentV1Args? args,
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
