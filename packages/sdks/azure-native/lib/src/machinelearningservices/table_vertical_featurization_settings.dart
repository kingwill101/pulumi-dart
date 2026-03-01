// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_transformer.dart';

/// Featurization Configuration.
class TableVerticalFeaturizationSettings {
  /// These transformers shall not be used in featurization.
  final List<String>? blockedTransformers;
  /// Dictionary of column name and its type (int, float, string, datetime etc).
  final Map<String, String>? columnNameAndTypes;
  /// Dataset language, useful for the text data.
  final String? datasetLanguage;
  /// Determines whether to use Dnn based featurizers for data featurization.
  final bool? enableDnnFeaturization;
  /// Featurization mode - User can keep the default 'Auto' mode and AutoML will take care of necessary transformation of the data in featurization phase.
  /// If 'Off' is selected then no featurization is done.
  /// If 'Custom' is selected then user can specify additional inputs to customize how featurization is done.
  final String? mode;
  /// User can specify additional transformers to be used along with the columns to which it would be applied and parameters for the transformer constructor.
  final Map<String, List<ColumnTransformer>>? transformerParams;

  /// Creates a new [TableVerticalFeaturizationSettings].
  /// [blockedTransformers] These transformers shall not be used in featurization.
  /// [columnNameAndTypes] Dictionary of column name and its type (int, float, string, datetime etc).
  /// [datasetLanguage] Dataset language, useful for the text data.
  /// [enableDnnFeaturization] Determines whether to use Dnn based featurizers for data featurization.
  /// [mode] Featurization mode - User can keep the default 'Auto' mode and AutoML will take care of necessary transformation of the data in featurization phase.
  /// [transformerParams] User can specify additional transformers to be used along with the columns to which it would be applied and parameters for the transformer constructor.
  TableVerticalFeaturizationSettings({
    this.blockedTransformers,
    this.columnNameAndTypes,
    this.datasetLanguage,
    this.enableDnnFeaturization,
    this.mode,
    this.transformerParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockedTransformers': ?blockedTransformers,
      'columnNameAndTypes': ?columnNameAndTypes,
      'datasetLanguage': ?datasetLanguage,
      'enableDnnFeaturization': ?enableDnnFeaturization,
      'mode': ?mode,
      'transformerParams': ?transformerParams == null ? null : pulumi.Input.encodeMapValues<List<ColumnTransformer>, List<Map<String, dynamic>>>(transformerParams!, (value) => pulumi.Input.encodeList<ColumnTransformer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TableVerticalFeaturizationSettings.fromMap(Map<String, dynamic> map) {
    return TableVerticalFeaturizationSettings(
      blockedTransformers: map['blockedTransformers'] == null ? null : (map['blockedTransformers'] as List).cast<String>(),
      columnNameAndTypes: map['columnNameAndTypes'] == null ? null : (map['columnNameAndTypes'] as Map).cast<String, String>(),
      datasetLanguage: map['datasetLanguage'] == null ? null : map['datasetLanguage'] as String,
      enableDnnFeaturization: map['enableDnnFeaturization'] == null ? null : map['enableDnnFeaturization'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      transformerParams: map['transformerParams'] == null ? null : pulumi.Input.decodeMapValues<List<ColumnTransformer>>(map['transformerParams'], (value) => pulumi.Input.decodeList<ColumnTransformer>(value, (value) => ColumnTransformer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

