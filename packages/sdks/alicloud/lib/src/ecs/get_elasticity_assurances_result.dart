// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticity_assurances_assurance.dart';

/// Result data returned by getElasticityAssurances.
class GetElasticityAssurancesResult {
  /// A list of Elasticity Assurance Entries. Each element contains the following attributes:
  final List<GetElasticityAssurancesAssurance> assurances;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Elasticity Assurance IDs.
  final List<String> ids;
  final String? outputFile;
  final List<String>? privatePoolOptionsIds;

  /// The ID of the resource group.
  final String? resourceGroupId;

  /// The status of flexible guarantee services. Possible values:-Preparing: in preparation.-Prepared: to take effect.-Active: in effect.-Released: Released.
  final String? status;

  /// A mapping of tags to assign to the Capacity Reservation.
  final Map<String, String>? tags;

  /// Creates a new [GetElasticityAssurancesResult].
  /// [assurances] A list of Elasticity Assurance Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Elasticity Assurance IDs.
  /// [outputFile] Optional.
  /// [privatePoolOptionsIds] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of flexible guarantee services. Possible values:-Preparing: in preparation.-Prepared: to take effect.-Active: in effect.-Released: Released.
  /// [tags] A mapping of tags to assign to the Capacity Reservation.
  GetElasticityAssurancesResult({
    required this.assurances,
    required this.id,
    required this.ids,
    this.outputFile,
    this.privatePoolOptionsIds,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assurances':
          pulumi.Input.encodeList<
            GetElasticityAssurancesAssurance,
            Map<String, dynamic>
          >(assurances, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'privatePoolOptionsIds': ?privatePoolOptionsIds,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetElasticityAssurancesResult.fromMap(Map<String, dynamic> map) {
    return GetElasticityAssurancesResult(
      assurances: pulumi.Input.decodeList<GetElasticityAssurancesAssurance>(
        map['assurances']!,
        (value) => GetElasticityAssurancesAssurance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      privatePoolOptionsIds: (() {
        final guardedValue = map['privatePoolOptionsIds'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
