// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_associations_association.dart';

/// Result data returned by getEndpointAssociations.
class GetEndpointAssociationsResult {
  /// Associations for the VPC Endpoint. Association blocks are documented below.
  final List<GetEndpointAssociationsAssociation>? associations;
  final String? region;
  final String? vpcEndpointId;

  /// Creates a new [GetEndpointAssociationsResult].
  /// [associations] Associations for the VPC Endpoint. Association blocks are documented below.
  /// [region] Optional.
  /// [vpcEndpointId] Optional.
  const GetEndpointAssociationsResult({
    this.associations,
    this.region,
    this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?(() { final guardedValue = associations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointAssociationsAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'vpcEndpointId': ?vpcEndpointId,
    };
  }

  factory GetEndpointAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsResult(
      associations: (() { final guardedValue = map['associations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointAssociationsAssociation>(guardedValue, (value) => GetEndpointAssociationsAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
