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

  /// Creates a new [GoogleCloudIntegrationsV1alphaValueType].
  /// [booleanArray] Boolean Array.
  /// [booleanValue] Boolean.
  /// [doubleArray] Double Number Array.
  /// [doubleValue] Double Number.
  /// [intArray] Integer Array.
  /// [intValue] Integer.
  /// [jsonValue] Json.
  /// [stringArray] String Array.
  /// [stringValue] String.
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
    return <String, dynamic>{
      'booleanArray': ?booleanArray == null ? null : booleanArray!.toMap(),
      'booleanValue': ?booleanValue,
      'doubleArray': ?doubleArray == null ? null : doubleArray!.toMap(),
      'doubleValue': ?doubleValue,
      'intArray': ?intArray == null ? null : intArray!.toMap(),
      'intValue': ?intValue,
      'jsonValue': ?jsonValue,
      'stringArray': ?stringArray == null ? null : stringArray!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory GoogleCloudIntegrationsV1alphaValueType.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaValueType(
      booleanArray: map['booleanArray'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaBooleanParameterArray.fromMap(
              (map['booleanArray'] as Map).cast<String, dynamic>(),
            ),
      booleanValue: map['booleanValue'] == null
          ? null
          : map['booleanValue'] as bool,
      doubleArray: map['doubleArray'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaDoubleParameterArray.fromMap(
              (map['doubleArray'] as Map).cast<String, dynamic>(),
            ),
      doubleValue: map['doubleValue'] == null
          ? null
          : map['doubleValue'] as double,
      intArray: map['intArray'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaIntParameterArray.fromMap(
              (map['intArray'] as Map).cast<String, dynamic>(),
            ),
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
      jsonValue: map['jsonValue'] == null ? null : map['jsonValue'] as String,
      stringArray: map['stringArray'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaStringParameterArray.fromMap(
              (map['stringArray'] as Map).cast<String, dynamic>(),
            ),
      stringValue: map['stringValue'] == null
          ? null
          : map['stringValue'] as String,
    );
  }
}
