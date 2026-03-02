// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoints_endpoint.dart';

/// Result data returned by getVpcEndpoints.
class GetVpcEndpointsResult {
  /// The status of Connection.
  final String? connectionStatus;
  final bool? enableDetails;
  /// A list of Privatelink Vpc Endpoints. Each element contains the following attributes:
  final List<GetVpcEndpointsEndpoint> endpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Vpc Endpoint names.
  final List<String> names;
  final String? outputFile;
  /// The name of the terminal node service associated with the terminal node.
  final String? serviceName;
  /// The status of Vpc Endpoint.
  final String? status;
  /// Tag tags of Vpc Endpoint.
  final Map<String, String>? tags;
  /// The name of Vpc Endpoint.
  final String? vpcEndpointName;
  /// The private network to which the terminal node belongs.
  final String? vpcId;

  /// Creates a new [GetVpcEndpointsResult].
  /// [connectionStatus] The status of Connection.
  /// [enableDetails] Optional.
  /// [endpoints] A list of Privatelink Vpc Endpoints. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Vpc Endpoint names.
  /// [outputFile] Optional.
  /// [serviceName] The name of the terminal node service associated with the terminal node.
  /// [status] The status of Vpc Endpoint.
  /// [tags] Tag tags of Vpc Endpoint.
  /// [vpcEndpointName] The name of Vpc Endpoint.
  /// [vpcId] The private network to which the terminal node belongs.
  GetVpcEndpointsResult({
    this.connectionStatus,
    this.enableDetails,
    required this.endpoints,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.serviceName,
    this.status,
    this.tags,
    this.vpcEndpointName,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStatus': ?connectionStatus,
      'enableDetails': ?enableDetails,
      'endpoints': pulumi.Input.encodeList<GetVpcEndpointsEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'serviceName': ?serviceName,
      'status': ?status,
      'tags': ?tags,
      'vpcEndpointName': ?vpcEndpointName,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcEndpointsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointsResult(
      connectionStatus: map['connectionStatus'] == null ? null : map['connectionStatus']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      endpoints: pulumi.Input.decodeList<GetVpcEndpointsEndpoint>(map['endpoints'], (value) => GetVpcEndpointsEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      vpcEndpointName: map['vpcEndpointName'] == null ? null : map['vpcEndpointName']! as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
    );
  }
}

