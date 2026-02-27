import 'package:pulumi/pulumi.dart' hide Config;
import 'annotation_store_args.dart';

/// Creates a new Annotation store within the parent dataset.
class AnnotationStore extends CustomResource {
  /// The ID of the Annotation store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  late final Output<String?> annotationStoreId;
  late final Output<String> datasetId;

  /// Optional. User-supplied key-value pairs used to organize Annotation stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name of the Annotation store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`.
  late final Output<String> name;
  late final Output<String> project;

  AnnotationStore(
    String name, {
    AnnotationStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:AnnotationStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotationStoreId = registerOutput<String?>('annotationStoreId');
    this.datasetId = registerOutput<String>('datasetId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
