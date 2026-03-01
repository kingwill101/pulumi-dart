// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_config_datastream_v1alpha1.dart';

/// {@template pulumi_datastream_v1alpha1_private_connection_datastream_v1alpha1_args_doc}
/// The set of arguments for PrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_private_connection_datastream_v1alpha1_args_doc}
class PrivateConnectionDatastreamV1alpha1Args {
  /// Display name.
  final pulumi.Input<String> displayName;

  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The private connectivity identifier.
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// VPC Peering Config
  final pulumi.Input<VpcPeeringConfigDatastreamV1alpha1>? vpcPeeringConfig;

  /// Creates a new [PrivateConnectionDatastreamV1alpha1Args].
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [location] Optional.
  /// [privateConnectionId] Required. The private connectivity identifier.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [vpcPeeringConfig] VPC Peering Config
  PrivateConnectionDatastreamV1alpha1Args({
    required String displayName,
    Map<String, String>? labels,
    String? location,
    required String privateConnectionId,
    String? project,
    String? requestId,
    VpcPeeringConfigDatastreamV1alpha1? vpcPeeringConfig,
  }) : displayName = pulumi.Input.asInput<String>(displayName),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       vpcPeeringConfig =
           pulumi.Input.asOptionalInput<VpcPeeringConfigDatastreamV1alpha1>(
             vpcPeeringConfig,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'labels': ?labels,
      'location': ?location,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
      'requestId': ?requestId,
      'vpcPeeringConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VpcPeeringConfigDatastreamV1alpha1,
            Map<String, dynamic>
          >(vpcPeeringConfig, (value) => value.toMap()),
    };
  }

  factory PrivateConnectionDatastreamV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateConnectionDatastreamV1alpha1Args(
      displayName: map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      privateConnectionId: map['privateConnectionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      vpcPeeringConfig: map['vpcPeeringConfig'] == null
          ? null
          : VpcPeeringConfigDatastreamV1alpha1.fromMap(
              (map['vpcPeeringConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
