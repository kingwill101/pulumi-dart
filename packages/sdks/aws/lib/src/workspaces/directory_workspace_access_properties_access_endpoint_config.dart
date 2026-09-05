// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_workspace_access_properties_access_endpoint_config_access_endpoint.dart';

class DirectoryWorkspaceAccessPropertiesAccessEndpointConfig {
  /// Set of access endpoints used to control the network paths that users use to access their WorkSpaces. Defined below.
  final pulumi.Input<List<DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint>> accessEndpoints;
  /// List of protocols that fall back to the public internet when streaming over a VPC endpoint is unavailable. Valid value is `PCOIP`.
  final pulumi.Input<List<String>?>? internetFallbackProtocols;

  /// Creates a new [DirectoryWorkspaceAccessPropertiesAccessEndpointConfig].
  /// [accessEndpoints] Set of access endpoints used to control the network paths that users use to access their WorkSpaces. Defined below.
  /// [internetFallbackProtocols] List of protocols that fall back to the public internet when streaming over a VPC endpoint is unavailable. Valid value is `PCOIP`.
  const DirectoryWorkspaceAccessPropertiesAccessEndpointConfig({
    required this.accessEndpoints,
    this.internetFallbackProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoints': pulumi.Input.mapInputValue<List<DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint>, List<Map<String, dynamic>>>(accessEndpoints, (value) => pulumi.Input.encodeList<DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internetFallbackProtocols': ?internetFallbackProtocols,
    };
  }

  factory DirectoryWorkspaceAccessPropertiesAccessEndpointConfig.fromMap(Map<String, dynamic> map) {
    return DirectoryWorkspaceAccessPropertiesAccessEndpointConfig(
      accessEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint>(map['accessEndpoints']!, (value) => DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      internetFallbackProtocols: (() { final guardedValue = map['internetFallbackProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
