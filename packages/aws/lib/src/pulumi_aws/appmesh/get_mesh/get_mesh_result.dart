// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_mesh_spec/get_mesh_spec.dart';

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

  /// Service mesh specification. See the <span pulumi-lang-nodejs="`aws.appmesh.Mesh`" pulumi-lang-dotnet="`aws.appmesh.Mesh`" pulumi-lang-go="`appmesh.Mesh`" pulumi-lang-python="`appmesh.Mesh`" pulumi-lang-yaml="`aws.appmesh.Mesh`" pulumi-lang-java="`aws.appmesh.Mesh`">`aws.appmesh.Mesh`</span> resource for details.
  final List<GetMeshSpec> specs;

  /// Map of tags.
  final Map<String, String> tags;

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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdDate'] = createdDate;
    map['id'] = id;
    map['lastUpdatedDate'] = lastUpdatedDate;
    map['meshOwner'] = meshOwner;
    map['name'] = name;
    map['region'] = region;
    map['resourceOwner'] = resourceOwner;
    map['specs'] = Input.encodeList<GetMeshSpec, Map<String, dynamic>>(
        specs, (value) => value.toMap());
    map['tags'] = tags;
    return map;
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
      specs: Input.decodeList<GetMeshSpec>(
          map['specs'],
          (value) =>
              GetMeshSpec.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
