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
    String? connectionStatus,
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? serviceName,
    String? status,
    Map<String, String>? tags,
    String? vpcEndpointName,
    String? vpcId,
  }) :
      connectionStatus = pulumi.Input.asOptionalInput<String>(connectionStatus),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcEndpointName = pulumi.Input.asOptionalInput<String>(vpcEndpointName),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      connectionStatus: map['connectionStatus'] == null ? null : map['connectionStatus'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcEndpointName: map['vpcEndpointName'] == null ? null : map['vpcEndpointName'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

