// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_basic_accelerate_ips_get_basic_accelerate_ips_args_doc}
/// Arguments for getBasicAccelerateIps.
/// {@endtemplate}
/// {@macro pulumi_ga_get_basic_accelerate_ips_get_basic_accelerate_ips_args_doc}
class GetBasicAccelerateIpsArgs {
  /// The address of the Basic Accelerate IP.
  final pulumi.Input<String>? accelerateIpAddress;
  /// The id of the Basic Accelerate IP.
  final pulumi.Input<String>? accelerateIpId;
  /// A list of Global Accelerator Basic Accelerate IP IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the Basic Ip Set.
  final pulumi.Input<String> ipSetId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Global Accelerator Basic Accelerate IP instance. Valid Value: `active`, `binding`, `bound`, `unbinding`, `deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBasicAccelerateIpsArgs].
  /// [accelerateIpAddress] The address of the Basic Accelerate IP.
  /// [accelerateIpId] The id of the Basic Accelerate IP.
  /// [ids] A list of Global Accelerator Basic Accelerate IP IDs.
  /// [ipSetId] The ID of the Basic Ip Set.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Global Accelerator Basic Accelerate IP instance. Valid Value: `active`, `binding`, `bound`, `unbinding`, `deleting`.
  const GetBasicAccelerateIpsArgs({
    this.accelerateIpAddress,
    this.accelerateIpId,
    this.ids,
    required this.ipSetId,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpAddress': ?accelerateIpAddress,
      'accelerateIpId': ?accelerateIpId,
      'ids': ?ids,
      'ipSetId': ipSetId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetBasicAccelerateIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetBasicAccelerateIpsArgs(
      accelerateIpAddress: (() { final guardedValue = map['accelerateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accelerateIpId: (() { final guardedValue = map['accelerateIpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipSetId: pulumi.Input.fromValue(map['ipSetId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

