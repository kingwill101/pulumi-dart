// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DatacenterConnector.
class DatacenterConnectorVmmigrationV1alpha1Args {
  /// Required. The datacenterConnector identifier.
  final pulumi.Input<String> datacenterConnectorId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  final pulumi.Input<String>? registrationId;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The service account to use in the connector when communicating with the cloud.
  final pulumi.Input<String>? serviceAccount;
  final pulumi.Input<String> sourceId;

  /// The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  final pulumi.Input<String>? version;

  DatacenterConnectorVmmigrationV1alpha1Args({
    required this.datacenterConnectorId,
    this.location,
    this.project,
    this.registrationId,
    this.requestId,
    this.serviceAccount,
    required this.sourceId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datacenterConnectorId'] = datacenterConnectorId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final registrationIdValue = registrationId;
    if (registrationIdValue != null) {
      map['registrationId'] = registrationIdValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    map['sourceId'] = sourceId;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory DatacenterConnectorVmmigrationV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return DatacenterConnectorVmmigrationV1alpha1Args(
      datacenterConnectorId:
          pulumi.Input.asInput<String>(map['datacenterConnectorId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      registrationId:
          pulumi.Input.asOptionalInput<String>(map['registrationId']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
