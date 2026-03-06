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
  const GetAggregateCompliancePacksArgs({
    required this.aggregatorId,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      aggregatorId: pulumi.Input.fromValue(map['aggregatorId'] as String),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

