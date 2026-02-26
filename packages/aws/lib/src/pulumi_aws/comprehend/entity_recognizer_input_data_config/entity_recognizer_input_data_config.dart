// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entity_recognizer_input_data_config_annotations/entity_recognizer_input_data_config_annotations.dart';
import '../entity_recognizer_input_data_config_augmented_manifest/entity_recognizer_input_data_config_augmented_manifest.dart';
import '../entity_recognizer_input_data_config_documents/entity_recognizer_input_data_config_documents.dart';
import '../entity_recognizer_input_data_config_entity_list/entity_recognizer_input_data_config_entity_list.dart';
import '../entity_recognizer_input_data_config_entity_type/entity_recognizer_input_data_config_entity_type.dart';

class EntityRecognizerInputDataConfig {
  /// Specifies location of the document annotation data.
  /// See the <span pulumi-lang-nodejs="`annotations`" pulumi-lang-dotnet="`Annotations`" pulumi-lang-go="`annotations`" pulumi-lang-python="`annotations`" pulumi-lang-yaml="`annotations`" pulumi-lang-java="`annotations`">`annotations`</span> Configuration Block section below.
  /// One of <span pulumi-lang-nodejs="`annotations`" pulumi-lang-dotnet="`Annotations`" pulumi-lang-go="`annotations`" pulumi-lang-python="`annotations`" pulumi-lang-yaml="`annotations`" pulumi-lang-java="`annotations`">`annotations`</span> or <span pulumi-lang-nodejs="`entityList`" pulumi-lang-dotnet="`EntityList`" pulumi-lang-go="`entityList`" pulumi-lang-python="`entity_list`" pulumi-lang-yaml="`entityList`" pulumi-lang-java="`entityList`">`entity_list`</span> is required.
  final EntityRecognizerInputDataConfigAnnotations? annotations;

  /// List of training datasets produced by Amazon SageMaker AI Ground Truth.
  /// Used if <span pulumi-lang-nodejs="`dataFormat`" pulumi-lang-dotnet="`DataFormat`" pulumi-lang-go="`dataFormat`" pulumi-lang-python="`data_format`" pulumi-lang-yaml="`dataFormat`" pulumi-lang-java="`dataFormat`">`data_format`</span> is `AUGMENTED_MANIFEST`.
  /// See the <span pulumi-lang-nodejs="`augmentedManifests`" pulumi-lang-dotnet="`AugmentedManifests`" pulumi-lang-go="`augmentedManifests`" pulumi-lang-python="`augmented_manifests`" pulumi-lang-yaml="`augmentedManifests`" pulumi-lang-java="`augmentedManifests`">`augmented_manifests`</span> Configuration Block section below.
  final List<EntityRecognizerInputDataConfigAugmentedManifest>?
      augmentedManifests;

  /// The format for the training data.
  /// One of `COMPREHEND_CSV` or `AUGMENTED_MANIFEST`.
  final String? dataFormat;

  /// Specifies a collection of training documents.
  /// Used if <span pulumi-lang-nodejs="`dataFormat`" pulumi-lang-dotnet="`DataFormat`" pulumi-lang-go="`dataFormat`" pulumi-lang-python="`data_format`" pulumi-lang-yaml="`dataFormat`" pulumi-lang-java="`dataFormat`">`data_format`</span> is `COMPREHEND_CSV`.
  /// See the <span pulumi-lang-nodejs="`documents`" pulumi-lang-dotnet="`Documents`" pulumi-lang-go="`documents`" pulumi-lang-python="`documents`" pulumi-lang-yaml="`documents`" pulumi-lang-java="`documents`">`documents`</span> Configuration Block section below.
  final EntityRecognizerInputDataConfigDocuments? documents;

  /// Specifies location of the entity list data.
  /// See the <span pulumi-lang-nodejs="`entityList`" pulumi-lang-dotnet="`EntityList`" pulumi-lang-go="`entityList`" pulumi-lang-python="`entity_list`" pulumi-lang-yaml="`entityList`" pulumi-lang-java="`entityList`">`entity_list`</span> Configuration Block section below.
  /// One of <span pulumi-lang-nodejs="`entityList`" pulumi-lang-dotnet="`EntityList`" pulumi-lang-go="`entityList`" pulumi-lang-python="`entity_list`" pulumi-lang-yaml="`entityList`" pulumi-lang-java="`entityList`">`entity_list`</span> or <span pulumi-lang-nodejs="`annotations`" pulumi-lang-dotnet="`Annotations`" pulumi-lang-go="`annotations`" pulumi-lang-python="`annotations`" pulumi-lang-yaml="`annotations`" pulumi-lang-java="`annotations`">`annotations`</span> is required.
  final EntityRecognizerInputDataConfigEntityList? entityList;

  /// Set of entity types to be recognized.
  /// Has a maximum of 25 items.
  /// See the <span pulumi-lang-nodejs="`entityTypes`" pulumi-lang-dotnet="`EntityTypes`" pulumi-lang-go="`entityTypes`" pulumi-lang-python="`entity_types`" pulumi-lang-yaml="`entityTypes`" pulumi-lang-java="`entityTypes`">`entity_types`</span> Configuration Block section below.
  final List<EntityRecognizerInputDataConfigEntityType> entityTypes;

  EntityRecognizerInputDataConfig({
    this.annotations,
    this.augmentedManifests,
    this.dataFormat,
    this.documents,
    this.entityList,
    required this.entityTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue.toMap();
    }
    final augmentedManifestsValue = augmentedManifests;
    if (augmentedManifestsValue != null) {
      map['augmentedManifests'] = Input.encodeList<
              EntityRecognizerInputDataConfigAugmentedManifest,
              Map<String, dynamic>>(
          augmentedManifestsValue, (value) => value.toMap());
    }
    final dataFormatValue = dataFormat;
    if (dataFormatValue != null) {
      map['dataFormat'] = dataFormatValue;
    }
    final documentsValue = documents;
    if (documentsValue != null) {
      map['documents'] = documentsValue.toMap();
    }
    final entityListValue = entityList;
    if (entityListValue != null) {
      map['entityList'] = entityListValue.toMap();
    }
    map['entityTypes'] = Input.encodeList<
        EntityRecognizerInputDataConfigEntityType,
        Map<String, dynamic>>(entityTypes, (value) => value.toMap());
    return map;
  }

  factory EntityRecognizerInputDataConfig.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfig(
      annotations: map['annotations'] == null
          ? null
          : EntityRecognizerInputDataConfigAnnotations.fromMap(
              (map['annotations'] as Map).cast<String, dynamic>()),
      augmentedManifests: map['augmentedManifests'] == null
          ? null
          : Input.decodeList<EntityRecognizerInputDataConfigAugmentedManifest>(
              map['augmentedManifests'],
              (value) =>
                  EntityRecognizerInputDataConfigAugmentedManifest.fromMap(
                      (value as Map).cast<String, dynamic>())),
      dataFormat:
          map['dataFormat'] == null ? null : map['dataFormat'] as String,
      documents: map['documents'] == null
          ? null
          : EntityRecognizerInputDataConfigDocuments.fromMap(
              (map['documents'] as Map).cast<String, dynamic>()),
      entityList: map['entityList'] == null
          ? null
          : EntityRecognizerInputDataConfigEntityList.fromMap(
              (map['entityList'] as Map).cast<String, dynamic>()),
      entityTypes: Input.decodeList<EntityRecognizerInputDataConfigEntityType>(
          map['entityTypes'],
          (value) => EntityRecognizerInputDataConfigEntityType.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
