// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_info.dart';
import 'resource_info.dart';

/// {@template pulumi_beyondcorp_v1alpha_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_connector_args_doc}
class ConnectorArgs {
  /// Optional. User-settable connector resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final pulumi.Input<String>? connectorId;

  /// Optional. An arbitrary user-provided name for the connector. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;

  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Unique resource name of the connector. The name is ignored when creating a connector.
  final pulumi.Input<String>? name;

  /// Principal information about the Identity of the connector.
  final pulumi.Input<PrincipalInfo> principalInfo;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Resource info of the connector.
  final pulumi.Input<ResourceInfo>? resourceInfo;

  /// Creates a new [ConnectorArgs].
  /// [connectorId] Optional. User-settable connector resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  /// [displayName] Optional. An arbitrary user-provided name for the connector. Cannot exceed 64 characters.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [name] Unique resource name of the connector. The name is ignored when creating a connector.
  /// [principalInfo] Principal information about the Identity of the connector.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [resourceInfo] Optional. Resource info of the connector.
  ConnectorArgs({
    String? connectorId,
    String? displayName,
    Map<String, String>? labels,
    String? location,
    String? name,
    required PrincipalInfo principalInfo,
    String? project,
    String? requestId,
    ResourceInfo? resourceInfo,
  }) : connectorId = pulumi.Input.asOptionalInput<String>(connectorId),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       principalInfo = pulumi.Input.asInput<PrincipalInfo>(principalInfo),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       resourceInfo = pulumi.Input.asOptionalInput<ResourceInfo>(resourceInfo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': ?connectorId,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'principalInfo':
          pulumi.Input.mapInputValue<PrincipalInfo, Map<String, dynamic>>(
            principalInfo,
            (value) => value.toMap(),
          ),
      'project': ?project,
      'requestId': ?requestId,
      'resourceInfo':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceInfo,
            Map<String, dynamic>
          >(resourceInfo, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      connectorId: map['connectorId'] == null
          ? null
          : map['connectorId'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      principalInfo: PrincipalInfo.fromMap(
        (map['principalInfo'] as Map).cast<String, dynamic>(),
      ),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      resourceInfo: map['resourceInfo'] == null
          ? null
          : ResourceInfo.fromMap(
              (map['resourceInfo'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
