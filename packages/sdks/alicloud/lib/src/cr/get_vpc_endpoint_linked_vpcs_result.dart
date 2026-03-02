// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_linked_vpcs_vpc_endpoint_linked_vpc.dart';

/// Result data returned by getVpcEndpointLinkedVpcs.
class GetVpcEndpointLinkedVpcsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the instance.
  final String instanceId;
  /// The name of the module that you want to access.
  final String moduleName;
  final String? outputFile;
  /// The status of the Vpc Endpoint Linked Vpc.
  final String? status;
  /// A list of CR Vpc Endpoint Linked Vpcs. Each element contains the following attributes:
  final List<GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc> vpcEndpointLinkedVpcs;

  /// Creates a new [GetVpcEndpointLinkedVpcsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] The ID of the instance.
  /// [moduleName] The name of the module that you want to access.
  /// [outputFile] Optional.
  /// [status] The status of the Vpc Endpoint Linked Vpc.
  /// [vpcEndpointLinkedVpcs] A list of CR Vpc Endpoint Linked Vpcs. Each element contains the following attributes:
  GetVpcEndpointLinkedVpcsResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    required this.moduleName,
    this.outputFile,
    this.status,
    required this.vpcEndpointLinkedVpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'moduleName': moduleName,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcEndpointLinkedVpcs': pulumi.Input.encodeList<GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc, Map<String, dynamic>>(vpcEndpointLinkedVpcs, (value) => value.toMap()),
    };
  }

  factory GetVpcEndpointLinkedVpcsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointLinkedVpcsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      moduleName: map['moduleName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      vpcEndpointLinkedVpcs: pulumi.Input.decodeList<GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc>(map['vpcEndpointLinkedVpcs'], (value) => GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

