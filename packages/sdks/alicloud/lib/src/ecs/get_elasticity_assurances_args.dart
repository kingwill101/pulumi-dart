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
  GetElasticityAssurancesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<List<String>>? privatePoolOptionsIds,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      privatePoolOptionsIds = pulumi.Input.asOptionalInput<List<String>>(privatePoolOptionsIds),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      privatePoolOptionsIds: map['privatePoolOptionsIds'] == null ? null : pulumi.Output.create<List<String>>((map['privatePoolOptionsIds'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

