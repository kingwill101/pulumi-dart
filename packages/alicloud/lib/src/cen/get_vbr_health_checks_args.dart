// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_vbr_health_checks_get_vbr_health_checks_args_doc}
/// Arguments for getVbrHealthChecks.
/// {@endtemplate}
/// {@macro pulumi_cen_get_vbr_health_checks_get_vbr_health_checks_args_doc}
class GetVbrHealthChecksArgs {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the VBR instance.
  final pulumi.Input<String>? vbrInstanceId;
  /// The User ID (UID) of the account to which the VBR instance belongs.
  final pulumi.Input<int>? vbrInstanceOwnerId;
  /// The ID of the region where the VBR instance is deployed.
  final pulumi.Input<String> vbrInstanceRegionId;

  /// Creates a new [GetVbrHealthChecksArgs].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [vbrInstanceId] The ID of the VBR instance.
  /// [vbrInstanceOwnerId] The User ID (UID) of the account to which the VBR instance belongs.
  /// [vbrInstanceRegionId] The ID of the region where the VBR instance is deployed.
  GetVbrHealthChecksArgs({
    String? cenId,
    String? outputFile,
    String? vbrInstanceId,
    int? vbrInstanceOwnerId,
    required String vbrInstanceRegionId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      vbrInstanceId = pulumi.Input.asOptionalInput<String>(vbrInstanceId),
      vbrInstanceOwnerId = pulumi.Input.asOptionalInput<int>(vbrInstanceOwnerId),
      vbrInstanceRegionId = pulumi.Input.asInput<String>(vbrInstanceRegionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'outputFile': ?outputFile,
      'vbrInstanceId': ?vbrInstanceId,
      'vbrInstanceOwnerId': ?vbrInstanceOwnerId,
      'vbrInstanceRegionId': vbrInstanceRegionId,
    };
  }

  factory GetVbrHealthChecksArgs.fromMap(Map<String, dynamic> map) {
    return GetVbrHealthChecksArgs(
      cenId: map['cenId'] == null ? null : map['cenId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      vbrInstanceId: map['vbrInstanceId'] == null ? null : map['vbrInstanceId'] as String,
      vbrInstanceOwnerId: map['vbrInstanceOwnerId'] == null ? null : map['vbrInstanceOwnerId'] as int,
      vbrInstanceRegionId: map['vbrInstanceRegionId'] as String,
    );
  }
}

