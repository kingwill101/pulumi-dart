// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The network associated with this object
class SCClusterByokEntityResponse {
  /// ID of the referred resource
  final pulumi.Input<String>? id;
  /// API URL for accessing or modifying the referred object
  final pulumi.Input<String>? related;
  /// CRN reference to the referred resource
  final pulumi.Input<String>? resourceName;

  /// Creates a new [SCClusterByokEntityResponse].
  /// [id] ID of the referred resource
  /// [related] API URL for accessing or modifying the referred object
  /// [resourceName] CRN reference to the referred resource
  SCClusterByokEntityResponse({
    this.id,
    this.related,
    this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'related': ?related,
      'resourceName': ?resourceName,
    };
  }

  factory SCClusterByokEntityResponse.fromMap(Map<String, dynamic> map) {
    return SCClusterByokEntityResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      related: map['related'] == null ? null : (map['related'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
    );
  }
}

