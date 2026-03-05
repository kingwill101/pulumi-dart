// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_enum_valid_values_format.dart';

/// Property definition.
class PropertyDefinition {
  /// Array value separator for properties with isArray set.
  final pulumi.Input<String>? arrayValueSeparator;
  /// Describes valid values for an enum property.
  final pulumi.Input<List<ProfileEnumValidValuesFormat>>? enumValidValues;
  /// Name of the property.
  final pulumi.Input<String> fieldName;
  /// Type of the property.
  final pulumi.Input<String> fieldType;
  /// Indicates if the property is actually an array of the fieldType above on the data api.
  final pulumi.Input<bool>? isArray;
  /// Whether property is available in graph or not.
  final pulumi.Input<bool>? isAvailableInGraph;
  /// Indicates if the property is an enum.
  final pulumi.Input<bool>? isEnum;
  /// Indicates if the property is an flag enum.
  final pulumi.Input<bool>? isFlagEnum;
  /// Whether the property is an Image.
  final pulumi.Input<bool>? isImage;
  /// Whether the property is a localized string.
  final pulumi.Input<bool>? isLocalizedString;
  /// Whether the property is a name or a part of name.
  final pulumi.Input<bool>? isName;
  /// Whether property value is required on instances, IsRequired field only for Interaction. Profile Instance will not check for required field.
  final pulumi.Input<bool>? isRequired;
  /// Max length of string. Used only if type is string.
  final pulumi.Input<int>? maxLength;
  /// The ID associated with the property.
  final pulumi.Input<String>? propertyId;
  /// URL encoded schema.org item prop link for the property.
  final pulumi.Input<String>? schemaItemPropLink;

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
      'enumValidValues': ?pulumi.Input.mapOptionalInputValue<List<ProfileEnumValidValuesFormat>, List<Map<String, dynamic>>>(enumValidValues, (value) => pulumi.Input.encodeList<ProfileEnumValidValuesFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      arrayValueSeparator: (() { final guardedValue = map['arrayValueSeparator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enumValidValues: (() { final guardedValue = map['enumValidValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProfileEnumValidValuesFormat>(guardedValue, (value) => ProfileEnumValidValuesFormat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
      fieldType: pulumi.Input.fromValue(map['fieldType'] as String),
      isArray: (() { final guardedValue = map['isArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isAvailableInGraph: (() { final guardedValue = map['isAvailableInGraph']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isEnum: (() { final guardedValue = map['isEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isFlagEnum: (() { final guardedValue = map['isFlagEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isImage: (() { final guardedValue = map['isImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isLocalizedString: (() { final guardedValue = map['isLocalizedString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isName: (() { final guardedValue = map['isName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRequired: (() { final guardedValue = map['isRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxLength: (() { final guardedValue = map['maxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      propertyId: (() { final guardedValue = map['propertyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaItemPropLink: (() { final guardedValue = map['schemaItemPropLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

