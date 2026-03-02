// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_get_vpc_endpoints_get_vpc_endpoints_args_doc}
/// Arguments for getVpcEndpoints.
/// {@endtemplate}
/// {@macro pulumi_privatelink_get_vpc_endpoints_get_vpc_endpoints_args_doc}
class GetVpcEndpointsArgs {
  /// The status of Connection.
  final pulumi.Input<String>? connectionStatus;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Vpc Endpoint IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Vpc Endpoint name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the terminal node service associated with the terminal node.
  final pulumi.Input<String>? serviceName;
  /// The status of Vpc Endpoint.
  final pulumi.Input<String>? status;
  /// Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of Vpc Endpoint.
  final pulumi.Input<String>? vpcEndpointName;
  /// The private network to which the terminal node belongs..
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetVpcEndpointsArgs].
  /// [connectionStatus] The status of Connection.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Vpc Endpoint IDs.
  /// [nameRegex] A regex string to filter results by Vpc Endpoint name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceName] The name of the terminal node service associated with the terminal node.
  /// [status] The status of Vpc Endpoint.
  /// [tags] Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  /// [vpcEndpointName] The name of Vpc Endpoint.
  /// [vpcId] The private network to which the terminal node belongs..
  GetVpcEndpointsArgs({
    this.connectionStatus,
    this.enableDetails,
    this.ids,
    this.nameRegex,
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
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'serviceName': ?serviceName,
      'status': ?status,
      'tags': ?tags,
      'vpcEndpointName': ?vpcEndpointName,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointsArgs(
      connectionStatus: map['connectionStatus'] == null ? null : (map['connectionStatus'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcEndpointName: map['vpcEndpointName'] == null ? null : (map['vpcEndpointName'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

