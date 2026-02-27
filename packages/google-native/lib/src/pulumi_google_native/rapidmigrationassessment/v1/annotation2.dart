import 'package:pulumi/pulumi.dart' hide Config;
import 'annotation_args2.dart';

/// Creates an Annotation
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Annotation2 extends CustomResource {
  /// Create time stamp.
  late final Output<String> createTime;

  /// Labels as key value pairs.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// name of resource.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests.
  late final Output<String?> requestId;

  /// Type of an annotation.
  late final Output<String> type;

  /// Update time stamp.
  late final Output<String> updateTime;

  Annotation2(
    String name, {
    AnnotationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:rapidmigrationassessment/v1:Annotation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
