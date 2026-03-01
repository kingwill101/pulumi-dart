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
  GetBasicAccelerateIpsArgs({
    pulumi.Output<String>? accelerateIpAddress,
    pulumi.Output<String>? accelerateIpId,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> ipSetId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      accelerateIpAddress = pulumi.Input.asOptionalInput<String>(accelerateIpAddress),
      accelerateIpId = pulumi.Input.asOptionalInput<String>(accelerateIpId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipSetId = pulumi.Input.asInput<String>(ipSetId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accelerateIpAddress: map['accelerateIpAddress'] == null ? null : pulumi.Output.create<String>(map['accelerateIpAddress'] as String),
      accelerateIpId: map['accelerateIpId'] == null ? null : pulumi.Output.create<String>(map['accelerateIpId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      ipSetId: pulumi.Output.create<String>(map['ipSetId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

