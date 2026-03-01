// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_boolean_parameter_array_response.dart';
import 'google_cloud_integrations_v1alpha_double_parameter_array_response.dart';
import 'google_cloud_integrations_v1alpha_int_parameter_array_response.dart';
import 'google_cloud_integrations_v1alpha_string_parameter_array_response.dart';

/// The type of the parameter.
class GoogleCloudIntegrationsV1alphaValueTypeResponse {
  /// Boolean Array.
  final GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse
  booleanArray;

  /// Boolean.
  final bool booleanValue;

  /// Double Number Array.
  final GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse doubleArray;

  /// Double Number.
  final double doubleValue;

  /// Integer Array.
  final GoogleCloudIntegrationsV1alphaIntParameterArrayResponse intArray;

  /// Integer.
  final String intValue;

  /// Json.
  final String jsonValue;

  /// String Array.
  final GoogleCloudIntegrationsV1alphaStringParameterArrayResponse stringArray;

  /// String.
  final String stringValue;

  /// Creates a new [GoogleCloudIntegrationsV1alphaValueTypeResponse].
  /// [booleanArray] Boolean Array.
  /// [booleanValue] Boolean.
  /// [doubleArray] Double Number Array.
  /// [doubleValue] Double Number.
  /// [intArray] Integer Array.
  /// [intValue] Integer.
  /// [jsonValue] Json.
  /// [stringArray] String Array.
  /// [stringValue] String.
  GoogleCloudIntegrationsV1alphaValueTypeResponse({
    required this.booleanArray,
    required this.booleanValue,
    required this.doubleArray,
    required this.doubleValue,
    required this.intArray,
    required this.intValue,
    required this.jsonValue,
    required this.stringArray,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanArray': booleanArray.toMap(),
      'booleanValue': booleanValue,
      'doubleArray': doubleArray.toMap(),
      'doubleValue': doubleValue,
      'intArray': intArray.toMap(),
      'intValue': intValue,
      'jsonValue': jsonValue,
      'stringArray': stringArray.toMap(),
      'stringValue': stringValue,
    };
  }

  factory GoogleCloudIntegrationsV1alphaValueTypeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaValueTypeResponse(
      booleanArray:
          GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse.fromMap(
            (map['booleanArray'] as Map).cast<String, dynamic>(),
          ),
      booleanValue: map['booleanValue'] as bool,
      doubleArray:
          GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse.fromMap(
            (map['doubleArray'] as Map).cast<String, dynamic>(),
          ),
      doubleValue: map['doubleValue'] as double,
      intArray: GoogleCloudIntegrationsV1alphaIntParameterArrayResponse.fromMap(
        (map['intArray'] as Map).cast<String, dynamic>(),
      ),
      intValue: map['intValue'] as String,
      jsonValue: map['jsonValue'] as String,
      stringArray:
          GoogleCloudIntegrationsV1alphaStringParameterArrayResponse.fromMap(
            (map['stringArray'] as Map).cast<String, dynamic>(),
          ),
      stringValue: map['stringValue'] as String,
    );
  }
}
