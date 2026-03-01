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
  GetBasicAccelerateIpEndpointRelationsArgs({
    pulumi.Output<String>? accelerateIpId,
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<String>? endpointId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      accelerateIpId = pulumi.Input.asOptionalInput<String>(accelerateIpId),
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accelerateIpId: map['accelerateIpId'] == null ? null : pulumi.Output.create<String>(map['accelerateIpId'] as String),
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

