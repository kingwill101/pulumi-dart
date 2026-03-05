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
    this.cenId,
    this.outputFile,
    this.vbrInstanceId,
    this.vbrInstanceOwnerId,
    required this.vbrInstanceRegionId,
  });

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
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vbrInstanceId: (() { final guardedValue = map['vbrInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vbrInstanceOwnerId: (() { final guardedValue = map['vbrInstanceOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vbrInstanceRegionId: pulumi.Input.fromValue(map['vbrInstanceRegionId'] as String),
    );
  }
}

