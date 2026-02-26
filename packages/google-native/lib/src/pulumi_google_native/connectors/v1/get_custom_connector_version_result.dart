// ignore_for_file: unused_element, unnecessary_cast

import 'auth_config_response.dart';
import 'destination_config_response.dart';

/// Result data returned by getCustomConnectorVersion.
class GetCustomConnectorVersionResult {
  /// Configuration for establishing the authentication to the connector destination.
  final AuthConfigResponse authConfig;

  /// Created time.
  final String createTime;

  /// Configuration of the customConnector's destination.
  final DestinationConfigResponse destinationConfig;

  /// Optional. Whether to enable backend destination config. This is the backend server that the connector connects to.
  final bool enableBackendDestinationConfig;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;

  /// Identifier. Resource name of the Version. Format: projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}
  final String name;

  /// Optional. Location of the custom connector spec.
  final String specLocation;

  /// Type of the customConnector.
  final String type;

  /// Updated time.
  final String updateTime;

  GetCustomConnectorVersionResult({
    required this.authConfig,
    required this.createTime,
    required this.destinationConfig,
    required this.enableBackendDestinationConfig,
    required this.labels,
    required this.name,
    required this.specLocation,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authConfig'] = authConfig.toMap();
    map['createTime'] = createTime;
    map['destinationConfig'] = destinationConfig.toMap();
    map['enableBackendDestinationConfig'] = enableBackendDestinationConfig;
    map['labels'] = labels;
    map['name'] = name;
    map['specLocation'] = specLocation;
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetCustomConnectorVersionResult.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorVersionResult(
      authConfig: AuthConfigResponse.fromMap(
          (map['authConfig'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      destinationConfig: DestinationConfigResponse.fromMap(
          (map['destinationConfig'] as Map).cast<String, dynamic>()),
      enableBackendDestinationConfig:
          map['enableBackendDestinationConfig'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      specLocation: map['specLocation'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
