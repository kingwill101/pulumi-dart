// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_enum_valid_values_format.dart';

/// Property definition.
class PropertyDefinition {
  /// Array value separator for properties with isArray set.
  final String? arrayValueSeparator;
  /// Describes valid values for an enum property.
  final List<ProfileEnumValidValuesFormat>? enumValidValues;
  /// Name of the property.
  final String fieldName;
  /// Type of the property.
  final String fieldType;
  /// Indicates if the property is actually an array of the fieldType above on the data api.
  final bool? isArray;
  /// Whether property is available in graph or not.
  final bool? isAvailableInGraph;
  /// Indicates if the property is an enum.
  final bool? isEnum;
  /// Indicates if the property is an flag enum.
  final bool? isFlagEnum;
  /// Whether the property is an Image.
  final bool? isImage;
  /// Whether the property is a localized string.
  final bool? isLocalizedString;
  /// Whether the property is a name or a part of name.
  final bool? isName;
  /// Whether property value is required on instances, IsRequired field only for Interaction. Profile Instance will not check for required field.
  final bool? isRequired;
  /// Max length of string. Used only if type is string.
  final int? maxLength;
  /// The ID associated with the property.
  final String? propertyId;
  /// URL encoded schema.org item prop link for the property.
  final String? schemaItemPropLink;

  /// Creates a new [PropertyDefinition].
  /// [arrayValueSeparator] Array value separator for properties with isArray set.
  /// [enumValidValues] Describes valid values for an enum property.
  /// [fieldName] Name of the property.
  /// [fieldType] Type of the property.
  /// [isArray] Indicates if the property is actually an array of the fieldType above on the data api.
  /// [isAvailableInGraph] Whether property is available in graph or not.
  /// [isEnum] Indicates if the property is an enum.
  /// [isFlagEnum] Indicates if the property is an flag enum.
  /// [isImage] Whether the property is an Image.
  /// [isLocalizedString] Whether the property is a localized string.
  /// [isName] Whether the property is a name or a part of name.
  /// [isRequired] Whether property value is required on instances, IsRequired field only for Interaction. Profile Instance will not check for required field.
  /// [maxLength] Max length of string. Used only if type is string.
  /// [propertyId] The ID associated with the property.
  /// [schemaItemPropLink] URL encoded schema.org item prop link for the property.
  PropertyDefinition({
    this.arrayValueSeparator,
    this.enumValidValues,
    required this.fieldName,
    required this.fieldType,
    this.isArray,
    this.isAvailableInGraph,
    this.isEnum,
    this.isFlagEnum,
    this.isImage,
    this.isLocalizedString,
    this.isName,
    this.isRequired,
    this.maxLength,
    this.propertyId,
    this.schemaItemPropLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayValueSeparator': ?arrayValueSeparator,
      'enumValidValues': ?enumValidValues == null ? null : pulumi.Input.encodeList<ProfileEnumValidValuesFormat, Map<String, dynamic>>(enumValidValues!, (value) => value.toMap()),
      'fieldName': fieldName,
      'fieldType': fieldType,
      'isArray': ?isArray,
      'isAvailableInGraph': ?isAvailableInGraph,
      'isEnum': ?isEnum,
      'isFlagEnum': ?isFlagEnum,
      'isImage': ?isImage,
      'isLocalizedString': ?isLocalizedString,
      'isName': ?isName,
      'isRequired': ?isRequired,
      'maxLength': ?maxLength,
      'propertyId': ?propertyId,
      'schemaItemPropLink': ?schemaItemPropLink,
    };
  }

  factory PropertyDefinition.fromMap(Map<String, dynamic> map) {
    return PropertyDefinition(
      arrayValueSeparator: map['arrayValueSeparator'] == null ? null : map['arrayValueSeparator'] as String,
      enumValidValues: map['enumValidValues'] == null ? null : pulumi.Input.decodeList<ProfileEnumValidValuesFormat>(map['enumValidValues'], (value) => ProfileEnumValidValuesFormat.fromMap((value as Map).cast<String, dynamic>())),
      fieldName: map['fieldName'] as String,
      fieldType: map['fieldType'] as String,
      isArray: map['isArray'] == null ? null : map['isArray'] as bool,
      isAvailableInGraph: map['isAvailableInGraph'] == null ? null : map['isAvailableInGraph'] as bool,
      isEnum: map['isEnum'] == null ? null : map['isEnum'] as bool,
      isFlagEnum: map['isFlagEnum'] == null ? null : map['isFlagEnum'] as bool,
      isImage: map['isImage'] == null ? null : map['isImage'] as bool,
      isLocalizedString: map['isLocalizedString'] == null ? null : map['isLocalizedString'] as bool,
      isName: map['isName'] == null ? null : map['isName'] as bool,
      isRequired: map['isRequired'] == null ? null : map['isRequired'] as bool,
      maxLength: map['maxLength'] == null ? null : map['maxLength'] as int,
      propertyId: map['propertyId'] == null ? null : map['propertyId'] as String,
      schemaItemPropLink: map['schemaItemPropLink'] == null ? null : map['schemaItemPropLink'] as String,
    );
  }
}

