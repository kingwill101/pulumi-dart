// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mesh_spec.dart';

/// Result data returned by getMesh.
class GetMeshResult {
  /// ARN of the service mesh.
  final String arn;

  /// Creation date of the service mesh.
  final String createdDate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Last update date of the service mesh.
  final String lastUpdatedDate;
  final String meshOwner;
  final String name;
  final String region;

  /// Resource owner's AWS account ID.
  final String resourceOwner;

  /// Service mesh specification. See the `aws.appmesh.Mesh` resource for details.
  final List<GetMeshSpec> specs;

  /// Map of tags.
  final Map<String, String> tags;

  /// Creates a new [GetMeshResult].
  /// [arn] ARN of the service mesh.
  /// [createdDate] Creation date of the service mesh.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Last update date of the service mesh.
  /// [meshOwner] Required.
  /// [name] Required.
  /// [region] Required.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [specs] Service mesh specification. See the `aws.appmesh.Mesh` resource for details.
  /// [tags] Map of tags.
  GetMeshResult({
    required this.arn,
    required this.createdDate,
    required this.id,
    required this.lastUpdatedDate,
    required this.meshOwner,
    required this.name,
    required this.region,
    required this.resourceOwner,
    required this.specs,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdDate': createdDate,
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'meshOwner': meshOwner,
      'name': name,
      'region': region,
      'resourceOwner': resourceOwner,
      'specs': pulumi.Input.encodeList<GetMeshSpec, Map<String, dynamic>>(
        specs,
        (value) => value.toMap(),
      ),
      'tags': tags,
    };
  }

  factory GetMeshResult.fromMap(Map<String, dynamic> map) {
    return GetMeshResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      meshOwner: map['meshOwner'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceOwner: map['resourceOwner'] as String,
      specs: pulumi.Input.decodeList<GetMeshSpec>(
        map['specs'],
        (value) => GetMeshSpec.fromMap((value as Map).cast<String, dynamic>()),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
