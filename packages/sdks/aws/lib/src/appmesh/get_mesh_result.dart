// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mesh_spec.dart';

/// Result data returned by getMesh.
class GetMeshResult {
  /// ARN of the service mesh.
  final String? arn;
  /// Creation date of the service mesh.
  final String? createdDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Last update date of the service mesh.
  final String? lastUpdatedDate;
  final String? meshOwner;
  final String? name;
  final String? region;
  /// Resource owner's AWS account ID.
  final String? resourceOwner;
  /// Service mesh specification. See the `aws.appmesh.Mesh` resource for details.
  final List<GetMeshSpec>? specs;
  /// Map of tags.
  final Map<String, String>? tags;

  /// Creates a new [GetMeshResult].
  /// [arn] ARN of the service mesh.
  /// [createdDate] Creation date of the service mesh.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Last update date of the service mesh.
  /// [meshOwner] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [specs] Service mesh specification. See the `aws.appmesh.Mesh` resource for details.
  /// [tags] Map of tags.
  const GetMeshResult({
    this.arn,
    this.createdDate,
    this.id,
    this.lastUpdatedDate,
    this.meshOwner,
    this.name,
    this.region,
    this.resourceOwner,
    this.specs,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'id': ?id,
      'lastUpdatedDate': ?lastUpdatedDate,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'resourceOwner': ?resourceOwner,
      'specs': ?(() { final guardedValue = specs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMeshSpec, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetMeshResult.fromMap(Map<String, dynamic> map) {
    return GetMeshResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meshOwner: (() { final guardedValue = map['meshOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceOwner: (() { final guardedValue = map['resourceOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specs: (() { final guardedValue = map['specs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMeshSpec>(guardedValue, (value) => GetMeshSpec.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
