// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vbr_health_checks_check.dart';

/// Result data returned by getVbrHealthChecks.
class GetVbrHealthChecksResult {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final String? cenId;
  /// A list of CEN VBR Heath Checks. Each element contains the following attributes:
  final List<GetVbrHealthChecksCheck> checks;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of the CEN VBR Heath Check IDs.
  final List<String> ids;
  final String? outputFile;
  /// The ID of the VBR instance.
  final String? vbrInstanceId;
  final int? vbrInstanceOwnerId;
  /// The ID of the region where the VBR instance is deployed.
  final String vbrInstanceRegionId;

  /// Creates a new [GetVbrHealthChecksResult].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [checks] A list of CEN VBR Heath Checks. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of the CEN VBR Heath Check IDs.
  /// [outputFile] Optional.
  /// [vbrInstanceId] The ID of the VBR instance.
  /// [vbrInstanceOwnerId] Optional.
  /// [vbrInstanceRegionId] The ID of the region where the VBR instance is deployed.
  GetVbrHealthChecksResult({
    this.cenId,
    required this.checks,
    required this.id,
    required this.ids,
    this.outputFile,
    this.vbrInstanceId,
    this.vbrInstanceOwnerId,
    required this.vbrInstanceRegionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'checks': pulumi.Input.encodeList<GetVbrHealthChecksCheck, Map<String, dynamic>>(checks, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'vbrInstanceId': ?vbrInstanceId,
      'vbrInstanceOwnerId': ?vbrInstanceOwnerId,
      'vbrInstanceRegionId': vbrInstanceRegionId,
    };
  }

  factory GetVbrHealthChecksResult.fromMap(Map<String, dynamic> map) {
    return GetVbrHealthChecksResult(
      cenId: map['cenId'] == null ? null : map['cenId']! as String,
      checks: pulumi.Input.decodeList<GetVbrHealthChecksCheck>(map['checks'], (value) => GetVbrHealthChecksCheck.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      vbrInstanceId: map['vbrInstanceId'] == null ? null : map['vbrInstanceId']! as String,
      vbrInstanceOwnerId: map['vbrInstanceOwnerId'] == null ? null : map['vbrInstanceOwnerId']! as int,
      vbrInstanceRegionId: map['vbrInstanceRegionId'] as String,
    );
  }
}

