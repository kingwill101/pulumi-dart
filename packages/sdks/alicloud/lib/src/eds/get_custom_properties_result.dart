// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_properties_property.dart';

/// Result data returned by getCustomProperties.
class GetCustomPropertiesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetCustomPropertiesProperty> properties;

  /// Creates a new [GetCustomPropertiesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [properties] Required.
  GetCustomPropertiesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'properties': pulumi.Input.encodeList<GetCustomPropertiesProperty, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory GetCustomPropertiesResult.fromMap(Map<String, dynamic> map) {
    return GetCustomPropertiesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      properties: pulumi.Input.decodeList<GetCustomPropertiesProperty>(map['properties'], (value) => GetCustomPropertiesProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

