// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_associations_association.dart';

/// Result data returned by getEndpointAssociations.
class GetEndpointAssociationsResult {
  /// Associations for the VPC Endpoint. Association blocks are documented below.
  final List<GetEndpointAssociationsAssociation> associations;
  final String region;
  final String vpcEndpointId;

  /// Creates a new [GetEndpointAssociationsResult].
  /// [associations] Associations for the VPC Endpoint. Association blocks are documented below.
  /// [region] Required.
  /// [vpcEndpointId] Required.
  const GetEndpointAssociationsResult({
    required this.associations,
    required this.region,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': pulumi.Input.encodeList<GetEndpointAssociationsAssociation, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'region': region,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory GetEndpointAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsResult(
      associations: pulumi.Input.decodeList<GetEndpointAssociationsAssociation>(map['associations']!, (value) => GetEndpointAssociationsAssociation.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      vpcEndpointId: map['vpcEndpointId'] as String,
    );
  }
}
