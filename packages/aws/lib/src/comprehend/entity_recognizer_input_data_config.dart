// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_recognizer_input_data_config_annotations.dart';
import 'entity_recognizer_input_data_config_augmented_manifest.dart';
import 'entity_recognizer_input_data_config_documents.dart';
import 'entity_recognizer_input_data_config_entity_list.dart';
import 'entity_recognizer_input_data_config_entity_type.dart';

class EntityRecognizerInputDataConfig {
  /// Specifies location of the document annotation data.
  /// See the `annotations` Configuration Block section below.
  /// One of `annotations` or `entity_list` is required.
  final EntityRecognizerInputDataConfigAnnotations? annotations;
  /// List of training datasets produced by Amazon SageMaker AI Ground Truth.
  /// Used if `data_format` is `AUGMENTED_MANIFEST`.
  /// See the `augmented_manifests` Configuration Block section below.
  final List<EntityRecognizerInputDataConfigAugmentedManifest>? augmentedManifests;
  /// The format for the training data.
  /// One of `COMPREHEND_CSV` or `AUGMENTED_MANIFEST`.
  final String? dataFormat;
  /// Specifies a collection of training documents.
  /// Used if `data_format` is `COMPREHEND_CSV`.
  /// See the `documents` Configuration Block section below.
  final EntityRecognizerInputDataConfigDocuments? documents;
  /// Specifies location of the entity list data.
  /// See the `entity_list` Configuration Block section below.
  /// One of `entity_list` or `annotations` is required.
  final EntityRecognizerInputDataConfigEntityList? entityList;
  /// Set of entity types to be recognized.
  /// Has a maximum of 25 items.
  /// See the `entity_types` Configuration Block section below.
  final List<EntityRecognizerInputDataConfigEntityType> entityTypes;

  /// Creates a new [EntityRecognizerInputDataConfig].
  /// [annotations] Specifies location of the document annotation data.
  /// [augmentedManifests] List of training datasets produced by Amazon SageMaker AI Ground Truth.
  /// [dataFormat] The format for the training data.
  /// [documents] Specifies a collection of training documents.
  /// [entityList] Specifies location of the entity list data.
  /// [entityTypes] Set of entity types to be recognized.
  EntityRecognizerInputDataConfig({
    this.annotations,
    this.augmentedManifests,
    this.dataFormat,
    this.documents,
    this.entityList,
    required this.entityTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations == null ? null : annotations!.toMap(),
      'augmentedManifests': ?augmentedManifests == null ? null : pulumi.Input.encodeList<EntityRecognizerInputDataConfigAugmentedManifest, Map<String, dynamic>>(augmentedManifests!, (value) => value.toMap()),
      'dataFormat': ?dataFormat,
      'documents': ?documents == null ? null : documents!.toMap(),
      'entityList': ?entityList == null ? null : entityList!.toMap(),
      'entityTypes': pulumi.Input.encodeList<EntityRecognizerInputDataConfigEntityType, Map<String, dynamic>>(entityTypes, (value) => value.toMap()),
    };
  }

  factory EntityRecognizerInputDataConfig.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfig(
      annotations: map['annotations'] == null ? null : EntityRecognizerInputDataConfigAnnotations.fromMap((map['annotations'] as Map).cast<String, dynamic>()),
      augmentedManifests: map['augmentedManifests'] == null ? null : pulumi.Input.decodeList<EntityRecognizerInputDataConfigAugmentedManifest>(map['augmentedManifests'], (value) => EntityRecognizerInputDataConfigAugmentedManifest.fromMap((value as Map).cast<String, dynamic>())),
      dataFormat: map['dataFormat'] == null ? null : map['dataFormat'] as String,
      documents: map['documents'] == null ? null : EntityRecognizerInputDataConfigDocuments.fromMap((map['documents'] as Map).cast<String, dynamic>()),
      entityList: map['entityList'] == null ? null : EntityRecognizerInputDataConfigEntityList.fromMap((map['entityList'] as Map).cast<String, dynamic>()),
      entityTypes: pulumi.Input.decodeList<EntityRecognizerInputDataConfigEntityType>(map['entityTypes'], (value) => EntityRecognizerInputDataConfigEntityType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

