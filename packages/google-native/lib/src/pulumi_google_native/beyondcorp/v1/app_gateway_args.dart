// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'app_gateway_host_type.dart';
import 'app_gateway_type.dart';

/// The set of arguments for AppGateway.
class AppGatewayArgs {
  /// Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final Input<String>? appGatewayId;

  /// Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters.
  final Input<String>? displayName;

  /// The type of hosting used by the AppGateway.
  final Input<AppGatewayHostType> hostType;

  /// Optional. Resource labels to represent user provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Unique resource name of the AppGateway. The name is ignored when creating an AppGateway.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The type of network connectivity used by the AppGateway.
  final Input<AppGatewayType> type;

  AppGatewayArgs({
    this.appGatewayId,
    this.displayName,
    required this.hostType,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appGatewayIdValue = appGatewayId;
    if (appGatewayIdValue != null) {
      map['appGatewayId'] = appGatewayIdValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['hostType'] = Input.mapInputValue<AppGatewayHostType, String>(
        hostType, (value) => value.value);
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['type'] = Input.mapInputValue<AppGatewayType, String>(
        type, (value) => value.value);
    return map;
  }

  factory AppGatewayArgs.fromMap(Map<String, dynamic> map) {
    return AppGatewayArgs(
      appGatewayId: Input.asOptionalInput<String>(map['appGatewayId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      hostType: Input.asInput<AppGatewayHostType>(map['hostType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      type: Input.asInput<AppGatewayType>(map['type']),
    );
  }
}
