import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_args.dart';
import 'annotation_source_response.dart';
import 'image_annotation_response.dart';
import 'resource_annotation_response.dart';
import 'sensitive_text_annotation_response.dart';

/// Creates a new Annotation record. It is valid to create Annotation objects for the same source more than once since a unique ID is assigned to each record by this service.
class Annotation extends pulumi.CustomResource {
  /// Details of the source.
  late final pulumi.Output<AnnotationSourceResponse> annotationSource;
  late final pulumi.Output<String> annotationStoreId;

  /// Additional information for this annotation record, such as annotator and verifier information or study campaign.
  late final pulumi.Output<Map<String, String>> customData;
  late final pulumi.Output<String> datasetId;

  /// Annotations for images. For example, bounding polygons.
  late final pulumi.Output<ImageAnnotationResponse> imageAnnotation;
  late final pulumi.Output<String> location;

  /// Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Annotations for resource. For example, classification tags.
  late final pulumi.Output<ResourceAnnotationResponse> resourceAnnotation;

  /// Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  late final pulumi.Output<SensitiveTextAnnotationResponse> textAnnotation;

  Annotation(
    String name, {
    AnnotationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:Annotation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotationSource =
        registerOutput<AnnotationSourceResponse>('annotationSource');
    this.annotationStoreId = registerOutput<String>('annotationStoreId');
    this.customData = registerOutput<Map<String, String>>('customData');
    this.datasetId = registerOutput<String>('datasetId');
    this.imageAnnotation =
        registerOutput<ImageAnnotationResponse>('imageAnnotation');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourceAnnotation =
        registerOutput<ResourceAnnotationResponse>('resourceAnnotation');
    this.textAnnotation =
        registerOutput<SensitiveTextAnnotationResponse>('textAnnotation');
  }
}
