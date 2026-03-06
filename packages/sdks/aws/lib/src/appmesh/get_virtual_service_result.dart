// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_service_spec.dart';

/// Result data returned by getVirtualService.
class GetVirtualServiceResult {
  /// ARN of the virtual service.
  final String arn;
  /// Creation date of the virtual service.
  final String createdDate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Last update date of the virtual service.
  final String lastUpdatedDate;
  final String meshName;
  final String meshOwner;
  final String name;
  final String region;
  /// Resource owner's AWS account ID.
  final String resourceOwner;
  /// Virtual service specification. See the `aws.appmesh.VirtualService` resource for details.
  final List<GetVirtualServiceSpec> specs;
  /// Map of tags.
  final Map<String, String> tags;

  /// Creates a new [GetVirtualServiceResult].
  /// [arn] ARN of the virtual service.
  /// [createdDate] Creation date of the virtual service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Last update date of the virtual service.
  /// [meshName] Required.
  /// [meshOwner] Required.
  /// [name] Required.
  /// [region] Required.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [specs] Virtual service specification. See the `aws.appmesh.VirtualService` resource for details.
  /// [tags] Map of tags.
  const GetVirtualServiceResult({
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
    return <String, dynamic>{
      'arn': arn,
      'createdDate': createdDate,
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'meshName': meshName,
      'meshOwner': meshOwner,
      'name': name,
      'region': region,
      'resourceOwner': resourceOwner,
      'specs': pulumi.Input.encodeList<GetVirtualServiceSpec, Map<String, dynamic>>(specs, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetVirtualServiceResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceOwner: map['resourceOwner'] as String,
      specs: pulumi.Input.decodeList<GetVirtualServiceSpec>(map['specs']!, (value) => GetVirtualServiceSpec.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

