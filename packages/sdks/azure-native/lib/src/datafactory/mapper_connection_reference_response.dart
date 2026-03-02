// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Source or target connection reference details.
class MapperConnectionReferenceResponse {
  /// Name of the connection
  final pulumi.Input<String>? connectionName;
  /// Type of connection via linked service or dataset.
  final pulumi.Input<String>? type;

  /// Creates a new [MapperConnectionReferenceResponse].
  /// [connectionName] Name of the connection
  /// [type] Type of connection via linked service or dataset.
  MapperConnectionReferenceResponse({
    this.connectionName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'type': ?type,
    };
  }

  factory MapperConnectionReferenceResponse.fromMap(Map<String, dynamic> map) {
    return MapperConnectionReferenceResponse(
      connectionName: map['connectionName'] == null ? null : (map['connectionName']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

