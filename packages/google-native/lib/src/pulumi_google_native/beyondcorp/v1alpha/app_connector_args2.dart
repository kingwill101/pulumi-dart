// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_principal_info.dart';
import 'google_cloud_beyondcorp_appconnectors_v1alpha_resource_info.dart';

/// The set of arguments for AppConnector.
class AppConnectorArgs2 {
  /// Optional. User-settable AppConnector resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final Input<String>? appConnectorId;

  /// Optional. An arbitrary user-provided name for the AppConnector. Cannot exceed 64 characters.
  final Input<String>? displayName;

  /// Optional. Resource labels to represent user provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Unique resource name of the AppConnector. The name is ignored when creating a AppConnector.
  final Input<String>? name;

  /// Principal information about the Identity of the AppConnector.
  final Input<
          GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo>
      principalInfo;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. Resource info of the connector.
  final Input<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>?
      resourceInfo;

  AppConnectorArgs2({
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
    map['principalInfo'] = Input.mapInputValue<
        GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo,
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
      map['resourceInfo'] = Input.mapOptionalInputValue<
          GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo,
          Map<String, dynamic>>(resourceInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppConnectorArgs2.fromMap(Map<String, dynamic> map) {
    return AppConnectorArgs2(
      appConnectorId: Input.asOptionalInput<String>(map['appConnectorId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      principalInfo: Input.asInput<
              GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo>(
          map['principalInfo']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      resourceInfo: Input.asOptionalInput<
              GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>(
          map['resourceInfo']),
    );
  }
}
