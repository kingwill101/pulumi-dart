// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contentwarehouse_v1_date_time_array.dart';
import 'google_cloud_contentwarehouse_v1_enum_array.dart';
import 'google_cloud_contentwarehouse_v1_float_array.dart';
import 'google_cloud_contentwarehouse_v1_integer_array.dart';
import 'google_cloud_contentwarehouse_v1_map_property.dart';
import 'google_cloud_contentwarehouse_v1_property_array.dart';
import 'google_cloud_contentwarehouse_v1_text_array.dart';
import 'google_cloud_contentwarehouse_v1_timestamp_array.dart';

/// Property of a document.
class GoogleCloudContentwarehouseV1Property {
  /// Date time property values. It is not supported by CMEK compliant deployment.
  final GoogleCloudContentwarehouseV1DateTimeArray? dateTimeValues;

  /// Enum property values.
  final GoogleCloudContentwarehouseV1EnumArray? enumValues;

  /// Float property values.
  final GoogleCloudContentwarehouseV1FloatArray? floatValues;

  /// Integer property values.
  final GoogleCloudContentwarehouseV1IntegerArray? integerValues;

  /// Map property values.
  final GoogleCloudContentwarehouseV1MapProperty? mapProperty;

  /// Must match the name of a PropertyDefinition in the DocumentSchema.
  final String name;

  /// Nested structured data property values.
  final GoogleCloudContentwarehouseV1PropertyArray? propertyValues;

  /// String/text property values.
  final GoogleCloudContentwarehouseV1TextArray? textValues;

  /// Timestamp property values. It is not supported by CMEK compliant deployment.
  final GoogleCloudContentwarehouseV1TimestampArray? timestampValues;

  /// Creates a new [GoogleCloudContentwarehouseV1Property].
  /// [dateTimeValues] Date time property values. It is not supported by CMEK compliant deployment.
  /// [enumValues] Enum property values.
  /// [floatValues] Float property values.
  /// [integerValues] Integer property values.
  /// [mapProperty] Map property values.
  /// [name] Must match the name of a PropertyDefinition in the DocumentSchema.
  /// [propertyValues] Nested structured data property values.
  /// [textValues] String/text property values.
  /// [timestampValues] Timestamp property values. It is not supported by CMEK compliant deployment.
  GoogleCloudContentwarehouseV1Property({
    this.dateTimeValues,
    this.enumValues,
    this.floatValues,
    this.integerValues,
    this.mapProperty,
    required this.name,
    this.propertyValues,
    this.textValues,
    this.timestampValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateTimeValues': ?dateTimeValues == null
          ? null
          : dateTimeValues!.toMap(),
      'enumValues': ?enumValues == null ? null : enumValues!.toMap(),
      'floatValues': ?floatValues == null ? null : floatValues!.toMap(),
      'integerValues': ?integerValues == null ? null : integerValues!.toMap(),
      'mapProperty': ?mapProperty == null ? null : mapProperty!.toMap(),
      'name': name,
      'propertyValues': ?propertyValues == null
          ? null
          : propertyValues!.toMap(),
      'textValues': ?textValues == null ? null : textValues!.toMap(),
      'timestampValues': ?timestampValues == null
          ? null
          : timestampValues!.toMap(),
    };
  }

  factory GoogleCloudContentwarehouseV1Property.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1Property(
      dateTimeValues: map['dateTimeValues'] == null
          ? null
          : GoogleCloudContentwarehouseV1DateTimeArray.fromMap(
              (map['dateTimeValues'] as Map).cast<String, dynamic>(),
            ),
      enumValues: map['enumValues'] == null
          ? null
          : GoogleCloudContentwarehouseV1EnumArray.fromMap(
              (map['enumValues'] as Map).cast<String, dynamic>(),
            ),
      floatValues: map['floatValues'] == null
          ? null
          : GoogleCloudContentwarehouseV1FloatArray.fromMap(
              (map['floatValues'] as Map).cast<String, dynamic>(),
            ),
      integerValues: map['integerValues'] == null
          ? null
          : GoogleCloudContentwarehouseV1IntegerArray.fromMap(
              (map['integerValues'] as Map).cast<String, dynamic>(),
            ),
      mapProperty: map['mapProperty'] == null
          ? null
          : GoogleCloudContentwarehouseV1MapProperty.fromMap(
              (map['mapProperty'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      propertyValues: map['propertyValues'] == null
          ? null
          : GoogleCloudContentwarehouseV1PropertyArray.fromMap(
              (map['propertyValues'] as Map).cast<String, dynamic>(),
            ),
      textValues: map['textValues'] == null
          ? null
          : GoogleCloudContentwarehouseV1TextArray.fromMap(
              (map['textValues'] as Map).cast<String, dynamic>(),
            ),
      timestampValues: map['timestampValues'] == null
          ? null
          : GoogleCloudContentwarehouseV1TimestampArray.fromMap(
              (map['timestampValues'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
