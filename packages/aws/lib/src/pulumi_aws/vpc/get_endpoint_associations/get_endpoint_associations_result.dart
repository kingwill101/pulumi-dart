// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_endpoint_associations_association/get_endpoint_associations_association.dart';

/// Result data returned by getEndpointAssociations.
class GetEndpointAssociationsResult {
  /// Associations for the VPC Endpoint. Association blocks are documented below.
  final List<GetEndpointAssociationsAssociation> associations;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String vpcEndpointId;

  GetEndpointAssociationsResult({
    required this.associations,
    required this.id,
    required this.region,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associations'] = Input.encodeList<GetEndpointAssociationsAssociation,
        Map<String, dynamic>>(associations, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    map['vpcEndpointId'] = vpcEndpointId;
    return map;
  }

  factory GetEndpointAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsResult(
      associations: Input.decodeList<GetEndpointAssociationsAssociation>(
          map['associations'],
          (value) => GetEndpointAssociationsAssociation.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      vpcEndpointId: map['vpcEndpointId'] as String,
    );
  }
}
