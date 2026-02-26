// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_connection_application_endpoint/app_connection_application_endpoint.dart';
import '../app_connection_gateway/app_connection_gateway.dart';

/// The set of arguments for AppConnection.
class AppConnectionArgs {
  /// Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// Structure is documented below.
  final Input<AppConnectionApplicationEndpoint> applicationEndpoint;

  /// List of AppConnectors that are authorised to be associated with this AppConnection
  final Input<List<String>>? connectors;

  /// An arbitrary user-provided name for the AppConnection.
  final Input<String>? displayName;

  /// Gateway used by the AppConnection.
  /// Structure is documented below.
  final Input<AppConnectionGateway>? gateway;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// ID of the AppConnection.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the AppConnection.
  final Input<String>? region;

  /// The type of network connectivity used by the AppConnection. Refer
  /// to https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
  /// for a list of possible values.
  final Input<String>? type;

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
    map['applicationEndpoint'] = Input.mapInputValue<
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
      map['gateway'] = Input.mapOptionalInputValue<AppConnectionGateway,
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
      applicationEndpoint: Input.asInput<AppConnectionApplicationEndpoint>(
          map['applicationEndpoint']),
      connectors: Input.asOptionalInput<List<String>>(map['connectors']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gateway: Input.asOptionalInput<AppConnectionGateway>(map['gateway']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
