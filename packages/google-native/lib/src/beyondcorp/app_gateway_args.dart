// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_gateway_host_type.dart';
import 'app_gateway_type.dart';

/// {@template pulumi_beyondcorp_v1_app_gateway_args_doc}
/// The set of arguments for AppGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_app_gateway_args_doc}
class AppGatewayArgs {
  /// Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final pulumi.Input<String>? appGatewayId;
  /// Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// The type of hosting used by the AppGateway.
  final pulumi.Input<AppGatewayHostType> hostType;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Unique resource name of the AppGateway. The name is ignored when creating an AppGateway.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The type of network connectivity used by the AppGateway.
  final pulumi.Input<AppGatewayType> type;

  /// Creates a new [AppGatewayArgs].
  /// [appGatewayId] Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  /// [displayName] Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters.
  /// [hostType] The type of hosting used by the AppGateway.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [name] Unique resource name of the AppGateway. The name is ignored when creating an AppGateway.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The type of network connectivity used by the AppGateway.
  AppGatewayArgs({
    String? appGatewayId,
    String? displayName,
    required AppGatewayHostType hostType,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? requestId,
    required AppGatewayType type,
  }) :
      appGatewayId = pulumi.Input.asOptionalInput<String>(appGatewayId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      hostType = pulumi.Input.asInput<AppGatewayHostType>(hostType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      type = pulumi.Input.asInput<AppGatewayType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGatewayId': ?appGatewayId,
      'displayName': ?displayName,
      'hostType': pulumi.Input.mapInputValue<AppGatewayHostType, String>(hostType, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'type': pulumi.Input.mapInputValue<AppGatewayType, String>(type, (value) => value.value),
    };
  }

  factory AppGatewayArgs.fromMap(Map<String, dynamic> map) {
    return AppGatewayArgs(
      appGatewayId: map['appGatewayId'] == null ? null : map['appGatewayId'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      hostType: AppGatewayHostType.fromValue(map['hostType'] as String),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      type: AppGatewayType.fromValue(map['type'] as String),
    );
  }
}

