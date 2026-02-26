// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_boolean_parameter_array.dart';
import 'google_cloud_integrations_v1alpha_double_parameter_array.dart';
import 'google_cloud_integrations_v1alpha_int_parameter_array.dart';
import 'google_cloud_integrations_v1alpha_string_parameter_array.dart';

/// The type of the parameter.
class GoogleCloudIntegrationsV1alphaValueType {
  /// Boolean Array.
  final GoogleCloudIntegrationsV1alphaBooleanParameterArray? booleanArray;

  /// Boolean.
  final bool? booleanValue;

  /// Double Number Array.
  final GoogleCloudIntegrationsV1alphaDoubleParameterArray? doubleArray;

  /// Double Number.
  final double? doubleValue;

  /// Integer Array.
  final GoogleCloudIntegrationsV1alphaIntParameterArray? intArray;

  /// Integer.
  final String? intValue;

  /// Json.
  final String? jsonValue;

  /// String Array.
  final GoogleCloudIntegrationsV1alphaStringParameterArray? stringArray;

  /// String.
  final String? stringValue;

  GoogleCloudIntegrationsV1alphaValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.jsonValue,
    this.stringArray,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanArrayValue = booleanArray;
    if (booleanArrayValue != null) {
      map['booleanArray'] = booleanArrayValue.toMap();
    }
    final booleanValueValue = booleanValue;
    if (booleanValueValue != null) {
      map['booleanValue'] = booleanValueValue;
    }
    final doubleArrayValue = doubleArray;
    if (doubleArrayValue != null) {
      map['doubleArray'] = doubleArrayValue.toMap();
    }
    final doubleValueValue = doubleValue;
    if (doubleValueValue != null) {
      map['doubleValue'] = doubleValueValue;
    }
    final intArrayValue = intArray;
    if (intArrayValue != null) {
      map['intArray'] = intArrayValue.toMap();
    }
    final intValueValue = intValue;
    if (intValueValue != null) {
      map['intValue'] = intValueValue;
    }
    final jsonValueValue = jsonValue;
    if (jsonValueValue != null) {
      map['jsonValue'] = jsonValueValue;
    }
    final stringArrayValue = stringArray;
    if (stringArrayValue != null) {
      map['stringArray'] = stringArrayValue.toMap();
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaValueType.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaValueType(
      booleanArray: map['booleanArray'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaBooleanParameterArray.fromMap(
              (map['booleanArray'] as Map).cast<String, dynamic>()),
      booleanValue:
          map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      doubleArray: map['doubleArray'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaDoubleParameterArray.fromMap(
              (map['doubleArray'] as Map).cast<String, dynamic>()),
      doubleValue:
          map['doubleValue'] == null ? null : map['doubleValue'] as double,
      intArray: map['intArray'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaIntParameterArray.fromMap(
              (map['intArray'] as Map).cast<String, dynamic>()),
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
      jsonValue: map['jsonValue'] == null ? null : map['jsonValue'] as String,
      stringArray: map['stringArray'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaStringParameterArray.fromMap(
              (map['stringArray'] as Map).cast<String, dynamic>()),
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
