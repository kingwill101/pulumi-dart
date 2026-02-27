// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnectors_v1_app_connector_principal_info.dart';
import 'google_cloud_beyondcorp_appconnectors_v1_resource_info.dart';

/// The set of arguments for AppConnector.
class AppConnectorArgs {
  /// Optional. User-settable AppConnector resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final pulumi.Input<String>? appConnectorId;

  /// Optional. An arbitrary user-provided name for the AppConnector. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;

  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Unique resource name of the AppConnector. The name is ignored when creating a AppConnector.
  final pulumi.Input<String>? name;

  /// Principal information about the Identity of the AppConnector.
  final pulumi
      .Input<GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo>
      principalInfo;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Resource info of the connector.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo>?
      resourceInfo;

  AppConnectorArgs({
    this.appConnectorId,
    this.displayName,
    this.labels,
    this.location,
    this.name,
    required this.principalInfo,
    this.project,
    this.requestId,
    this.resourceInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appConnectorIdValue = appConnectorId;
    if (appConnectorIdValue != null) {
      map['appConnectorId'] = appConnectorIdValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
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
    map['principalInfo'] = pulumi.Input.mapInputValue<
        GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo,
        Map<String, dynamic>>(principalInfo, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final resourceInfoValue = resourceInfo;
    if (resourceInfoValue != null) {
      map['resourceInfo'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo,
          Map<String, dynamic>>(resourceInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectorArgs(
      appConnectorId:
          pulumi.Input.asOptionalInput<String>(map['appConnectorId']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      principalInfo: pulumi.Input.asInput<
              GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo>(
          map['principalInfo']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      resourceInfo: pulumi.Input.asOptionalInput<
              GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo>(
          map['resourceInfo']),
    );
  }
}
