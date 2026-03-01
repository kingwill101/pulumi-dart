// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_surrogate_info_type_sensitivity_score.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern `[A-Za-z0-9$-_]{1,64}`.
  final String? name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore?
  sensitivityScore;

  /// Optional version name for this InfoType.
  final String? version;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern `[A-Za-z0-9$-_]{1,64}`.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Optional version name for this InfoType.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType({
    this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sensitivityScore': ?sensitivityScore == null
          ? null
          : sensitivityScore!.toMap(),
      'version': ?version,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType(
      name: map['name'] == null ? null : map['name'] as String,
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore.fromMap(
              (map['sensitivityScore'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
