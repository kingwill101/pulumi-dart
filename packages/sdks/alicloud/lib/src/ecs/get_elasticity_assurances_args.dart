// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_elasticity_assurances_get_elasticity_assurances_args_doc}
/// Arguments for getElasticityAssurances.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_elasticity_assurances_get_elasticity_assurances_args_doc}
class GetElasticityAssurancesArgs {
  /// A list of Elasticity Assurance IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the elastic protection service.
  final pulumi.Input<List<String>>? privatePoolOptionsIds;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of flexible guarantee services. Possible values: `All`, `Preparing`, `Prepared`, `Active`, `Released`.
  final pulumi.Input<String>? status;
  /// The tag key-value pair information bound by the elastic guarantee service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetElasticityAssurancesArgs].
  /// [ids] A list of Elasticity Assurance IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [privatePoolOptionsIds] The ID of the elastic protection service.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of flexible guarantee services. Possible values: `All`, `Preparing`, `Prepared`, `Active`, `Released`.
  /// [tags] The tag key-value pair information bound by the elastic guarantee service.
  const GetElasticityAssurancesArgs({
    this.ids,
    this.outputFile,
    this.privatePoolOptionsIds,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'privatePoolOptionsIds': ?privatePoolOptionsIds,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetElasticityAssurancesArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticityAssurancesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privatePoolOptionsIds: (() { final guardedValue = map['privatePoolOptionsIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

