// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_basic_accelerate_ip_endpoint_relations_get_basic_accelerate_ip_endpoint_relations_args_doc}
/// Arguments for getBasicAccelerateIpEndpointRelations.
/// {@endtemplate}
/// {@macro pulumi_ga_get_basic_accelerate_ip_endpoint_relations_get_basic_accelerate_ip_endpoint_relations_args_doc}
class GetBasicAccelerateIpEndpointRelationsArgs {
  /// The ID of the Basic Accelerate IP.
  final pulumi.Input<String>? accelerateIpId;
  /// The ID of the Global Accelerator Basic Accelerator instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the Basic Endpoint.
  final pulumi.Input<String>? endpointId;
  /// A list of Global Accelerator Basic Accelerate Ip Endpoint Relations IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Global Accelerator Basic Accelerate Ip Endpoint Relation. Valid Value: `active`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBasicAccelerateIpEndpointRelationsArgs].
  /// [accelerateIpId] The ID of the Basic Accelerate IP.
  /// [acceleratorId] The ID of the Global Accelerator Basic Accelerator instance.
  /// [endpointId] The ID of the Basic Endpoint.
  /// [ids] A list of Global Accelerator Basic Accelerate Ip Endpoint Relations IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Global Accelerator Basic Accelerate Ip Endpoint Relation. Valid Value: `active`.
  const GetBasicAccelerateIpEndpointRelationsArgs({
    this.accelerateIpId,
    required this.acceleratorId,
    this.endpointId,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpId': ?accelerateIpId,
      'acceleratorId': acceleratorId,
      'endpointId': ?endpointId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetBasicAccelerateIpEndpointRelationsArgs.fromMap(Map<String, dynamic> map) {
    return GetBasicAccelerateIpEndpointRelationsArgs(
      accelerateIpId: (() { final guardedValue = map['accelerateIpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

