import 'package:pulumi/pulumi.dart';
import 'annotation_spec_set_args.dart';
import 'google_cloud_datalabeling_v1beta1_annotation_spec_response.dart';

/// Creates an annotation spec set by providing a set of labels.
/// Auto-naming is currently not supported for this resource.
class AnnotationSpecSet extends CustomResource {
  /// The array of AnnotationSpecs that you define when you create the AnnotationSpecSet. These are the possible labels for the labeling task.
  late final Output<List<GoogleCloudDatalabelingV1beta1AnnotationSpecResponse>>
      annotationSpecs;

  /// The names of any related resources that are blocking changes to the annotation spec set.
  late final Output<List<String>> blockingResources;

  /// Optional. User-provided description of the annotation specification set. The description can be up to 10,000 characters long.
  late final Output<String> description;

  /// The display name for AnnotationSpecSet that you define when you create it. Maximum of 64 characters.
  late final Output<String> displayName;

  /// The AnnotationSpecSet resource name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  late final Output<String> name;
  late final Output<String> project;

  AnnotationSpecSet(
    String name, {
    AnnotationSpecSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datalabeling/v1beta1:AnnotationSpecSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotationSpecs = Output.createUnknown<
        List<GoogleCloudDatalabelingV1beta1AnnotationSpecResponse>>();
    this.blockingResources = Output.createUnknown<List<String>>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
