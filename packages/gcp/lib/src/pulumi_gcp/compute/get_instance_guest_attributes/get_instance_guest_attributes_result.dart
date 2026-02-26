// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_guest_attributes_query_value/get_instance_guest_attributes_query_value.dart';

/// Result data returned by getInstanceGuestAttributes.
class GetInstanceGuestAttributesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String project;
  final String? queryPath;

  /// Structure is documented below.
  final List<GetInstanceGuestAttributesQueryValue> queryValues;
  final String region;
  final String? variableKey;

  /// Value of the queried guest_attribute.
  final String variableValue;
  final String zone;

  GetInstanceGuestAttributesResult({
    required this.id,
    required this.name,
    required this.project,
    this.queryPath,
    required this.queryValues,
    required this.region,
    this.variableKey,
    required this.variableValue,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['project'] = project;
    final queryPathValue = queryPath;
    if (queryPathValue != null) {
      map['queryPath'] = queryPathValue;
    }
    map['queryValues'] = Input.encodeList<GetInstanceGuestAttributesQueryValue,
        Map<String, dynamic>>(queryValues, (value) => value.toMap());
    map['region'] = region;
    final variableKeyValue = variableKey;
    if (variableKeyValue != null) {
      map['variableKey'] = variableKeyValue;
    }
    map['variableValue'] = variableValue;
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceGuestAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGuestAttributesResult(
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      queryPath: map['queryPath'] == null ? null : map['queryPath'] as String,
      queryValues: Input.decodeList<GetInstanceGuestAttributesQueryValue>(
          map['queryValues'],
          (value) => GetInstanceGuestAttributesQueryValue.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      variableKey:
          map['variableKey'] == null ? null : map['variableKey'] as String,
      variableValue: map['variableValue'] as String,
      zone: map['zone'] as String,
    );
  }
}
