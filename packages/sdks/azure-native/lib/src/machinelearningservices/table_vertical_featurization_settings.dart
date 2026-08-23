// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_transformer.dart';

/// Featurization Configuration.
class TableVerticalFeaturizationSettings {
  /// These transformers shall not be used in featurization.
  final pulumi.Input<List<String>>? blockedTransformers;
  /// Dictionary of column name and its type (int, float, string, datetime etc).
  final pulumi.Input<Map<String, String>>? columnNameAndTypes;
  /// Dataset language, useful for the text data.
  final pulumi.Input<String>? datasetLanguage;
  /// Determines whether to use Dnn based featurizers for data featurization.
  final pulumi.Input<bool>? enableDnnFeaturization;
  /// Featurization mode - User can keep the default 'Auto' mode and AutoML will take care of necessary transformation of the data in featurization phase.
  /// If 'Off' is selected then no featurization is done.
  /// If 'Custom' is selected then user can specify additional inputs to customize how featurization is done.
  final pulumi.Input<String>? mode;
  /// User can specify additional transformers to be used along with the columns to which it would be applied and parameters for the transformer constructor.
  final pulumi.Input<Map<String, List<ColumnTransformer>>>? transformerParams;

  /// Creates a new [TableVerticalFeaturizationSettings].
  /// [blockedTransformers] These transformers shall not be used in featurization.
  /// [columnNameAndTypes] Dictionary of column name and its type (int, float, string, datetime etc).
  /// [datasetLanguage] Dataset language, useful for the text data.
  /// [enableDnnFeaturization] Determines whether to use Dnn based featurizers for data featurization.
  /// [mode] Featurization mode - User can keep the default 'Auto' mode and AutoML will take care of necessary transformation of the data in featurization phase.
  /// [transformerParams] User can specify additional transformers to be used along with the columns to which it would be applied and parameters for the transformer constructor.
  const TableVerticalFeaturizationSettings({
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
      'transformerParams': ?pulumi.Input.mapOptionalInputValue<Map<String, List<ColumnTransformer>>, Map<String, List<Map<String, dynamic>>>>(transformerParams, (value) => pulumi.Input.encodeMapValues<List<ColumnTransformer>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<ColumnTransformer, Map<String, dynamic>>(value, (value) => value.toMap()))),
    };
  }

  factory TableVerticalFeaturizationSettings.fromMap(Map<String, dynamic> map) {
    return TableVerticalFeaturizationSettings(
      blockedTransformers: (() { final guardedValue = map['blockedTransformers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      columnNameAndTypes: (() { final guardedValue = map['columnNameAndTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      datasetLanguage: (() { final guardedValue = map['datasetLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDnnFeaturization: (() { final guardedValue = map['enableDnnFeaturization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transformerParams: (() { final guardedValue = map['transformerParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<ColumnTransformer>>(guardedValue, (value) => pulumi.Input.decodeList<ColumnTransformer>(value, (value) => ColumnTransformer.fromMap((value as Map).cast<String, dynamic>())))); })(),
    );
  }
}
