// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_workspace_access_property_access_endpoint_config_access_endpoint.dart';

class GetDirectoryWorkspaceAccessPropertyAccessEndpointConfig {
  /// Set of access endpoints used to control the network paths that users use to access their WorkSpaces.
  final pulumi.Input<List<GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint>> accessEndpoints;
  /// List of protocols that fall back to the public internet when streaming over a VPC endpoint is unavailable.
  final pulumi.Input<List<String>> internetFallbackProtocols;

  /// Creates a new [GetDirectoryWorkspaceAccessPropertyAccessEndpointConfig].
  /// [accessEndpoints] Set of access endpoints used to control the network paths that users use to access their WorkSpaces.
  /// [internetFallbackProtocols] List of protocols that fall back to the public internet when streaming over a VPC endpoint is unavailable.
  const GetDirectoryWorkspaceAccessPropertyAccessEndpointConfig({
    required this.accessEndpoints,
    required this.internetFallbackProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoints': pulumi.Input.mapInputValue<List<GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint>, List<Map<String, dynamic>>>(accessEndpoints, (value) => pulumi.Input.encodeList<GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internetFallbackProtocols': internetFallbackProtocols,
    };
  }

  factory GetDirectoryWorkspaceAccessPropertyAccessEndpointConfig.fromMap(Map<String, dynamic> map) {
    return GetDirectoryWorkspaceAccessPropertyAccessEndpointConfig(
      accessEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint>(map['accessEndpoints']!, (value) => GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      internetFallbackProtocols: pulumi.Input.fromValue((map['internetFallbackProtocols'] as List).cast<String>()),
    );
  }
}
