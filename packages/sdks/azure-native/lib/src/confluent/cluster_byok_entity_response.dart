// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The network associated with this object
class ClusterByokEntityResponse {
  /// ID of the referred resource
  final pulumi.Input<String>? id;
  /// API URL for accessing or modifying the referred object
  final pulumi.Input<String>? related;
  /// CRN reference to the referred resource
  final pulumi.Input<String>? resourceName;

  /// Creates a new [ClusterByokEntityResponse].
  /// [id] ID of the referred resource
  /// [related] API URL for accessing or modifying the referred object
  /// [resourceName] CRN reference to the referred resource
  const ClusterByokEntityResponse({
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

  factory ClusterByokEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterByokEntityResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      related: (() { final guardedValue = map['related']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

