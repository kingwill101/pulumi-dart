// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_basic_accelerate_ip_endpoint_relations_relation.dart';

/// Result data returned by getBasicAccelerateIpEndpointRelations.
class GetBasicAccelerateIpEndpointRelationsResult {
  /// The ID of the Basic Accelerate IP.
  final String? accelerateIpId;
  /// The ID of the Global Accelerator Basic Accelerator instance.
  final String acceleratorId;
  /// The ID of the Basic Endpoint.
  final String? endpointId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// A list of Global Accelerator Basic Accelerate Ip Endpoint Relations. Each element contains the following attributes:
  final List<GetBasicAccelerateIpEndpointRelationsRelation> relations;
  /// The status of the Basic Accelerate Ip Endpoint Relation.
  final String? status;

  /// Creates a new [GetBasicAccelerateIpEndpointRelationsResult].
  /// [accelerateIpId] The ID of the Basic Accelerate IP.
  /// [acceleratorId] The ID of the Global Accelerator Basic Accelerator instance.
  /// [endpointId] The ID of the Basic Endpoint.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [relations] A list of Global Accelerator Basic Accelerate Ip Endpoint Relations. Each element contains the following attributes:
  /// [status] The status of the Basic Accelerate Ip Endpoint Relation.
  const GetBasicAccelerateIpEndpointRelationsResult({
    this.accelerateIpId,
    required this.acceleratorId,
    this.endpointId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.relations,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpId': ?accelerateIpId,
      'acceleratorId': acceleratorId,
      'endpointId': ?endpointId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'relations': pulumi.Input.encodeList<GetBasicAccelerateIpEndpointRelationsRelation, Map<String, dynamic>>(relations, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetBasicAccelerateIpEndpointRelationsResult.fromMap(Map<String, dynamic> map) {
    return GetBasicAccelerateIpEndpointRelationsResult(
      accelerateIpId: (() { final guardedValue = map['accelerateIpId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      acceleratorId: map['acceleratorId'] as String,
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relations: pulumi.Input.decodeList<GetBasicAccelerateIpEndpointRelationsRelation>(map['relations']!, (value) => GetBasicAccelerateIpEndpointRelationsRelation.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

