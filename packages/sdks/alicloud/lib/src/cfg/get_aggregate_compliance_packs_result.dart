// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_compliance_packs_pack.dart';

/// Result data returned by getAggregateCompliancePacks.
class GetAggregateCompliancePacksResult {
  final String aggregatorId;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Config Aggregate Compliance Pack names.
  final List<String> names;
  final String? outputFile;
  /// A list of Config Aggregate Compliance Packs. Each element contains the following attributes:
  final List<GetAggregateCompliancePacksPack> packs;
  /// The status of the resource.
  final String? status;

  /// Creates a new [GetAggregateCompliancePacksResult].
  /// [aggregatorId] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Config Aggregate Compliance Pack names.
  /// [outputFile] Optional.
  /// [packs] A list of Config Aggregate Compliance Packs. Each element contains the following attributes:
  /// [status] The status of the resource.
  GetAggregateCompliancePacksResult({
    required this.aggregatorId,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.packs,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorId': aggregatorId,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'packs': pulumi.Input.encodeList<GetAggregateCompliancePacksPack, Map<String, dynamic>>(packs, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetAggregateCompliancePacksResult.fromMap(Map<String, dynamic> map) {
    return GetAggregateCompliancePacksResult(
      aggregatorId: map['aggregatorId'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      packs: pulumi.Input.decodeList<GetAggregateCompliancePacksPack>(map['packs'], (value) => GetAggregateCompliancePacksPack.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

