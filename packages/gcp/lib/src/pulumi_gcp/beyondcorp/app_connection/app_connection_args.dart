// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_connection_application_endpoint/app_connection_application_endpoint.dart';
import '../app_connection_gateway/app_connection_gateway.dart';

/// The set of arguments for AppConnection.
class AppConnectionArgs {
  /// Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// Structure is documented below.
  final pulumi.Input<AppConnectionApplicationEndpoint> applicationEndpoint;

  /// List of AppConnectors that are authorised to be associated with this AppConnection
  final pulumi.Input<List<String>>? connectors;

  /// An arbitrary user-provided name for the AppConnection.
  final pulumi.Input<String>? displayName;

  /// Gateway used by the AppConnection.
  /// Structure is documented below.
  final pulumi.Input<AppConnectionGateway>? gateway;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// ID of the AppConnection.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the AppConnection.
  final pulumi.Input<String>? region;

  /// The type of network connectivity used by the AppConnection. Refer
  /// to https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
  /// for a list of possible values.
  final pulumi.Input<String>? type;

  AppConnectionArgs({
    required this.applicationEndpoint,
    this.connectors,
    this.displayName,
    this.gateway,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationEndpoint'] = pulumi.Input.mapInputValue<
        AppConnectionApplicationEndpoint,
        Map<String, dynamic>>(applicationEndpoint, (value) => value.toMap());
    final connectorsValue = connectors;
    if (connectorsValue != null) {
      map['connectors'] = connectorsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gatewayValue = gateway;
    if (gatewayValue != null) {
      map['gateway'] = pulumi.Input.mapOptionalInputValue<AppConnectionGateway,
          Map<String, dynamic>>(gatewayValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory AppConnectionArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectionArgs(
      applicationEndpoint:
          pulumi.Input.asInput<AppConnectionApplicationEndpoint>(
              map['applicationEndpoint']),
      connectors: pulumi.Input.asOptionalInput<List<String>>(map['connectors']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      gateway:
          pulumi.Input.asOptionalInput<AppConnectionGateway>(map['gateway']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
