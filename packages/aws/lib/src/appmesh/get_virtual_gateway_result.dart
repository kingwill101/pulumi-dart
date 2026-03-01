// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec.dart';

/// Result data returned by getVirtualGateway.
class GetVirtualGatewayResult {
  /// ARN of the virtual gateway.
  final String arn;

  /// Creation date of the virtual gateway.
  final String createdDate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Last update date of the virtual gateway.
  final String lastUpdatedDate;
  final String meshName;
  final String meshOwner;
  final String name;
  final String region;

  /// Resource owner's AWS account ID.
  final String resourceOwner;

  /// Virtual gateway specification. See the `aws.appmesh.VirtualGateway` resource for details.
  final List<GetVirtualGatewaySpec> specs;

  /// Map of tags.
  final Map<String, String> tags;

  /// Creates a new [GetVirtualGatewayResult].
  /// [arn] ARN of the virtual gateway.
  /// [createdDate] Creation date of the virtual gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Last update date of the virtual gateway.
  /// [meshName] Required.
  /// [meshOwner] Required.
  /// [name] Required.
  /// [region] Required.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [specs] Virtual gateway specification. See the `aws.appmesh.VirtualGateway` resource for details.
  /// [tags] Map of tags.
  GetVirtualGatewayResult({
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
      'specs':
          pulumi.Input.encodeList<GetVirtualGatewaySpec, Map<String, dynamic>>(
            specs,
            (value) => value.toMap(),
          ),
      'tags': tags,
    };
  }

  factory GetVirtualGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewayResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceOwner: map['resourceOwner'] as String,
      specs: pulumi.Input.decodeList<GetVirtualGatewaySpec>(
        map['specs'],
        (value) => GetVirtualGatewaySpec.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
