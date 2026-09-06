// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_transformer_response.dart';

/// Featurization Configuration.
class TableVerticalFeaturizationSettingsResponse {
  /// These transformers shall not be used in featurization.
  final pulumi.Input<List<String>?>? blockedTransformers;
  /// Dictionary of column name and its type (int, float, string, datetime etc).
  final pulumi.Input<Map<String, String>?>? columnNameAndTypes;
  /// Dataset language, useful for the text data.
  final pulumi.Input<String?>? datasetLanguage;
  /// Determines whether to use Dnn based featurizers for data featurization.
  final pulumi.Input<bool?>? enableDnnFeaturization;
  /// Featurization mode - User can keep the default 'Auto' mode and AutoML will take care of necessary transformation of the data in featurization phase.
  /// If 'Off' is selected then no featurization is done.
  /// If 'Custom' is selected then user can specify additional inputs to customize how featurization is done.
  final pulumi.Input<String?>? mode;
  /// User can specify additional transformers to be used along with the columns to which it would be applied and parameters for the transformer constructor.
  final pulumi.Input<Map<String, List<ColumnTransformerResponse>>?>? transformerParams;

  /// Creates a new [TableVerticalFeaturizationSettingsResponse].
  /// [blockedTransformers] These transformers shall not be used in featurization.
  /// [columnNameAndTypes] Dictionary of column name and its type (int, float, string, datetime etc).
  /// [datasetLanguage] Dataset language, useful for the text data.
  /// [enableDnnFeaturization] Determines whether to use Dnn based featurizers for data featurization.
  /// [mode] Featurization mode - User can keep the default 'Auto' mode and AutoML will take care of necessary transformation of the data in featurization phase.
  /// [transformerParams] User can specify additional transformers to be used along with the columns to which it would be applied and parameters for the transformer constructor.
  TableVerticalFeaturizationSettingsResponse({
    this.blockedTransformers,
    this.columnNameAndTypes,
    this.datasetLanguage,
    pulumi.Input<bool?>? enableDnnFeaturization,
    pulumi.Input<String?>? mode,
    this.transformerParams,
  }) : enableDnnFeaturization = enableDnnFeaturization ?? pulumi.Input.fromValue(false), mode = mode ?? pulumi.Input.fromValue('Auto');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockedTransformers': ?blockedTransformers,
      'columnNameAndTypes': ?columnNameAndTypes,
      'datasetLanguage': ?datasetLanguage,
      'enableDnnFeaturization': ?enableDnnFeaturization,
      'mode': ?mode,
      'transformerParams': ?pulumi.Input.mapOptionalInputValue<Map<String, List<ColumnTransformerResponse>>, Map<String, List<Map<String, dynamic>>>>(transformerParams, (value) => pulumi.Input.encodeMapValues<List<ColumnTransformerResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<ColumnTransformerResponse, Map<String, dynamic>>(value, (value) => value.toMap()))),
    };
  }

  factory TableVerticalFeaturizationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TableVerticalFeaturizationSettingsResponse(
      blockedTransformers: (() { final guardedValue = map['blockedTransformers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      columnNameAndTypes: (() { final guardedValue = map['columnNameAndTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      datasetLanguage: (() { final guardedValue = map['datasetLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDnnFeaturization: (() { final guardedValue = map['enableDnnFeaturization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transformerParams: (() { final guardedValue = map['transformerParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<ColumnTransformerResponse>>(guardedValue, (value) => pulumi.Input.decodeList<ColumnTransformerResponse>(value, (value) => ColumnTransformerResponse.fromMap((value as Map).cast<String, dynamic>())))); })(),
    );
  }
}
