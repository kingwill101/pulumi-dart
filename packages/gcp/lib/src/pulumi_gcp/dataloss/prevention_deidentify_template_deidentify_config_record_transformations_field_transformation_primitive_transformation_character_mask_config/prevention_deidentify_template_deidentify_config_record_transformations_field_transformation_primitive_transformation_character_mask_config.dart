// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_character_mask_config_characters_to_ignore/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_character_mask_config_characters_to_ignore.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCharacterMaskConfig {
  /// Characters to skip when doing de-identification of a value. These will be left alone and skipped.
  /// Structure is documented below.
  final List<
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore>?
      charactersToIgnores;

  /// Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string
  /// such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for
  /// strings, and 0 for digits.
  final String? maskingCharacter;

  /// Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally.
  /// If number_to_mask is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values:
  final int? numberToMask;

  /// Mask characters in reverse order. For example, if masking_character is 0, number_to_mask is 14, and reverse_order is `false`, then the
  /// input string `1234-5678-9012-3456` is masked as `00000000000000-3456`.
  final bool? reverseOrder;

  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCharacterMaskConfig({
    this.charactersToIgnores,
    this.maskingCharacter,
    this.numberToMask,
    this.reverseOrder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final charactersToIgnoresValue = charactersToIgnores;
    if (charactersToIgnoresValue != null) {
      map['charactersToIgnores'] = pulumi.Input.encodeList<
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore,
          Map<String,
              dynamic>>(charactersToIgnoresValue, (value) => value.toMap());
    }
    final maskingCharacterValue = maskingCharacter;
    if (maskingCharacterValue != null) {
      map['maskingCharacter'] = maskingCharacterValue;
    }
    final numberToMaskValue = numberToMask;
    if (numberToMaskValue != null) {
      map['numberToMask'] = numberToMaskValue;
    }
    final reverseOrderValue = reverseOrder;
    if (reverseOrderValue != null) {
      map['reverseOrder'] = reverseOrderValue;
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCharacterMaskConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCharacterMaskConfig(
      charactersToIgnores: map['charactersToIgnores'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore>(
              map['charactersToIgnores'],
              (value) =>
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore
                      .fromMap((value as Map).cast<String, dynamic>())),
      maskingCharacter: map['maskingCharacter'] == null
          ? null
          : map['maskingCharacter'] as String,
      numberToMask:
          map['numberToMask'] == null ? null : map['numberToMask'] as int,
      reverseOrder:
          map['reverseOrder'] == null ? null : map['reverseOrder'] as bool,
    );
  }
}
