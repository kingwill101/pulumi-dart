// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'name_description_object_response.dart';

/// Security services type list
class SecurityServicesTypeListResponse {
  /// list
  final pulumi.Input<List<NameDescriptionObjectResponse>> entry;
  /// security services type
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityServicesTypeListResponse].
  /// [entry] list
  /// [type] security services type
  SecurityServicesTypeListResponse({
    required this.entry,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entry': pulumi.Input.mapInputValue<List<NameDescriptionObjectResponse>, List<Map<String, dynamic>>>(entry, (value) => pulumi.Input.encodeList<NameDescriptionObjectResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory SecurityServicesTypeListResponse.fromMap(Map<String, dynamic> map) {
    return SecurityServicesTypeListResponse(
      entry: (pulumi.Input.decodeList<NameDescriptionObjectResponse>(map['entry'], (value) => NameDescriptionObjectResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

