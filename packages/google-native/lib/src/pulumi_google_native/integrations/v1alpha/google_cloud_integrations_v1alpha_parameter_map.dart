// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_entry.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_key_type.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_value_type.dart';

/// A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.
class GoogleCloudIntegrationsV1alphaParameterMap {
  /// A list of parameter map entries.
  final List<GoogleCloudIntegrationsV1alphaParameterMapEntry>? entries;

  /// Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.
  final GoogleCloudIntegrationsV1alphaParameterMapKeyType? keyType;

  /// Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.
  final GoogleCloudIntegrationsV1alphaParameterMapValueType? valueType;

  GoogleCloudIntegrationsV1alphaParameterMap({
    this.entries,
    this.keyType,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entriesValue = entries;
    if (entriesValue != null) {
      map['entries'] = Input.encodeList<
          GoogleCloudIntegrationsV1alphaParameterMapEntry,
          Map<String, dynamic>>(entriesValue, (value) => value.toMap());
    }
    final keyTypeValue = keyType;
    if (keyTypeValue != null) {
      map['keyType'] = keyTypeValue.value;
    }
    final valueTypeValue = valueType;
    if (valueTypeValue != null) {
      map['valueType'] = valueTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaParameterMap.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMap(
      entries: map['entries'] == null
          ? null
          : Input.decodeList<GoogleCloudIntegrationsV1alphaParameterMapEntry>(
              map['entries'],
              (value) =>
                  GoogleCloudIntegrationsV1alphaParameterMapEntry.fromMap(
                      (value as Map).cast<String, dynamic>())),
      keyType: map['keyType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaParameterMapKeyType.fromValue(
              map['keyType'] as String),
      valueType: map['valueType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaParameterMapValueType.fromValue(
              map['valueType'] as String),
    );
  }
}
