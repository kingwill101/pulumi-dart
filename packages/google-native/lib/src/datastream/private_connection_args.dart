// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_config.dart';

/// {@template pulumi_datastream_v1_private_connection_args_doc}
/// The set of arguments for PrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1_private_connection_args_doc}
class PrivateConnectionArgs {
  /// Display name.
  final pulumi.Input<String> displayName;

  /// Optional. If set to true, will skip validations.
  final pulumi.Input<bool>? force;

  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The private connectivity identifier.
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// VPC Peering Config.
  final pulumi.Input<VpcPeeringConfig>? vpcPeeringConfig;

  /// Creates a new [PrivateConnectionArgs].
  /// [displayName] Display name.
  /// [force] Optional. If set to true, will skip validations.
  /// [labels] Labels.
  /// [location] Optional.
  /// [privateConnectionId] Required. The private connectivity identifier.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [vpcPeeringConfig] VPC Peering Config.
  PrivateConnectionArgs({
    required String displayName,
    bool? force,
    Map<String, String>? labels,
    String? location,
    required String privateConnectionId,
    String? project,
    String? requestId,
    VpcPeeringConfig? vpcPeeringConfig,
  }) : displayName = pulumi.Input.asInput<String>(displayName),
       force = pulumi.Input.asOptionalInput<bool>(force),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       vpcPeeringConfig = pulumi.Input.asOptionalInput<VpcPeeringConfig>(
         vpcPeeringConfig,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'force': ?force,
      'labels': ?labels,
      'location': ?location,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
      'requestId': ?requestId,
      'vpcPeeringConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VpcPeeringConfig,
            Map<String, dynamic>
          >(vpcPeeringConfig, (value) => value.toMap()),
    };
  }

  factory PrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs(
      displayName: map['displayName'] as String,
      force: map['force'] == null ? null : map['force'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      privateConnectionId: map['privateConnectionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      vpcPeeringConfig: map['vpcPeeringConfig'] == null
          ? null
          : VpcPeeringConfig.fromMap(
              (map['vpcPeeringConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
