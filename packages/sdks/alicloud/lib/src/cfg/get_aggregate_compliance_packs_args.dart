// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_get_aggregate_compliance_packs_get_aggregate_compliance_packs_args_doc}
/// Arguments for getAggregateCompliancePacks.
/// {@endtemplate}
/// {@macro pulumi_cfg_get_aggregate_compliance_packs_get_aggregate_compliance_packs_args_doc}
class GetAggregateCompliancePacksArgs {
  /// The ID of aggregator.
  final pulumi.Input<String> aggregatorId;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Aggregate Compliance Pack IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Aggregate Compliance Pack name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values `ACTIVE`, `CREATING`, `INACTIVE`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAggregateCompliancePacksArgs].
  /// [aggregatorId] The ID of aggregator.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Aggregate Compliance Pack IDs.
  /// [nameRegex] A regex string to filter results by Aggregate Compliance Pack name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values `ACTIVE`, `CREATING`, `INACTIVE`.
  GetAggregateCompliancePacksArgs({
    required pulumi.Output<String> aggregatorId,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      aggregatorId = pulumi.Input.asInput<String>(aggregatorId),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorId': aggregatorId,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAggregateCompliancePacksArgs.fromMap(Map<String, dynamic> map) {
    return GetAggregateCompliancePacksArgs(
      aggregatorId: pulumi.Output.create<String>(map['aggregatorId'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

