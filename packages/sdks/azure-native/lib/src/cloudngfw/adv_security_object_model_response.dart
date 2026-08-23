// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'name_description_object_response.dart';

/// List of custom and predefined url category
class AdvSecurityObjectModelResponse {
  /// URL entry
  final pulumi.Input<List<NameDescriptionObjectResponse>> entry;
  /// type of object
  final pulumi.Input<String>? type;

  /// Creates a new [AdvSecurityObjectModelResponse].
  /// [entry] URL entry
  /// [type] type of object
  const AdvSecurityObjectModelResponse({
    required this.entry,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entry': pulumi.Input.mapInputValue<List<NameDescriptionObjectResponse>, List<Map<String, dynamic>>>(entry, (value) => pulumi.Input.encodeList<NameDescriptionObjectResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory AdvSecurityObjectModelResponse.fromMap(Map<String, dynamic> map) {
    return AdvSecurityObjectModelResponse(
      entry: pulumi.Input.fromValue(pulumi.Input.decodeList<NameDescriptionObjectResponse>(map['entry']!, (value) => NameDescriptionObjectResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
