// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec/get_virtual_node_spec.dart';

/// Result data returned by getVirtualNode.
class GetVirtualNodeResult {
  /// ARN of the virtual node.
  final String arn;

  /// Creation date of the virtual node.
  final String createdDate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Last update date of the virtual node.
  final String lastUpdatedDate;
  final String meshName;
  final String meshOwner;
  final String name;
  final String region;

  /// Resource owner's AWS account ID.
  final String resourceOwner;

  /// Virtual node specification. See the `aws.appmesh.VirtualNode` resource for details.
  final List<GetVirtualNodeSpec> specs;

  /// Map of tags.
  final Map<String, String> tags;

  GetVirtualNodeResult({
    required this.arn,
    required this.createdDate,
    required this.id,
    required this.lastUpdatedDate,
    required this.meshName,
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
    map['meshName'] = meshName;
    map['meshOwner'] = meshOwner;
    map['name'] = name;
    map['region'] = region;
    map['resourceOwner'] = resourceOwner;
    map['specs'] =
        pulumi.Input.encodeList<GetVirtualNodeSpec, Map<String, dynamic>>(
            specs, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory GetVirtualNodeResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceOwner: map['resourceOwner'] as String,
      specs: pulumi.Input.decodeList<GetVirtualNodeSpec>(
          map['specs'],
          (value) => GetVirtualNodeSpec.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
