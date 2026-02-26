import 'package:pulumi/pulumi.dart';
import 'annotation_args.dart';
import 'annotation_source_response.dart';
import 'image_annotation_response.dart';
import 'resource_annotation_response.dart';
import 'sensitive_text_annotation_response.dart';

/// Creates a new Annotation record. It is valid to create Annotation objects for the same source more than once since a unique ID is assigned to each record by this service.
class Annotation extends CustomResource {
  /// Details of the source.
  late final Output<AnnotationSourceResponse> annotationSource;
  late final Output<String> annotationStoreId;

  /// Additional information for this annotation record, such as annotator and verifier information or study campaign.
  late final Output<Map<String, String>> customData;
  late final Output<String> datasetId;

  /// Annotations for images. For example, bounding polygons.
  late final Output<ImageAnnotationResponse> imageAnnotation;
  late final Output<String> location;

  /// Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Annotations for resource. For example, classification tags.
  late final Output<ResourceAnnotationResponse> resourceAnnotation;

  /// Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  late final Output<SensitiveTextAnnotationResponse> textAnnotation;

  Annotation(
    String name, {
    AnnotationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:Annotation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotationSource = Output.createUnknown<AnnotationSourceResponse>();
    this.annotationStoreId = Output.createUnknown<String>();
    this.customData = Output.createUnknown<Map<String, String>>();
    this.datasetId = Output.createUnknown<String>();
    this.imageAnnotation = Output.createUnknown<ImageAnnotationResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.resourceAnnotation =
        Output.createUnknown<ResourceAnnotationResponse>();
    this.textAnnotation =
        Output.createUnknown<SensitiveTextAnnotationResponse>();
  }
}
