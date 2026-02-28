import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_spec_set_args.dart';
import 'google_cloud_datalabeling_v1beta1_annotation_spec_response.dart';

/// Creates an annotation spec set by providing a set of labels.
/// Auto-naming is currently not supported for this resource.
class AnnotationSpecSet extends pulumi.CustomResource {
  /// The array of AnnotationSpecs that you define when you create the AnnotationSpecSet. These are the possible labels for the labeling task.
  late final pulumi
      .Output<List<GoogleCloudDatalabelingV1beta1AnnotationSpecResponse>>
      annotationSpecs;

  /// The names of any related resources that are blocking changes to the annotation spec set.
  late final pulumi.Output<List<String>> blockingResources;

  /// Optional. User-provided description of the annotation specification set. The description can be up to 10,000 characters long.
  late final pulumi.Output<String> description;

  /// The display name for AnnotationSpecSet that you define when you create it. Maximum of 64 characters.
  late final pulumi.Output<String> displayName;

  /// The AnnotationSpecSet resource name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [AnnotationSpecSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnnotationSpecSet]. {@macro pulumi_datalabeling_v1beta1_annotation_spec_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnnotationSpecSet(
    String name, {
    AnnotationSpecSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datalabeling/v1beta1:AnnotationSpecSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotationSpecs = registerOutput<
            List<GoogleCloudDatalabelingV1beta1AnnotationSpecResponse>>(
        'annotationSpecs');
    this.blockingResources = registerOutput<List<String>>('blockingResources');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
