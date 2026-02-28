// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_httpheader_response.dart';

/// HTTPGetAction describes an action based on HTTP Get requests.
class GoogleCloudRunV2HTTPGetActionResponse {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<GoogleCloudRunV2HTTPHeaderResponse> httpHeaders;
  /// Path to access on the HTTP server. Defaults to '/'.
  final String path;
  /// Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int port;

  /// Creates a new [GoogleCloudRunV2HTTPGetActionResponse].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. Defaults to '/'.
  /// [port] Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  GoogleCloudRunV2HTTPGetActionResponse({
    required this.httpHeaders,
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': pulumi.Input.encodeList<GoogleCloudRunV2HTTPHeaderResponse, Map<String, dynamic>>(httpHeaders, (value) => value.toMap()),
      'path': path,
      'port': port,
    };
  }

  factory GoogleCloudRunV2HTTPGetActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2HTTPGetActionResponse(
      httpHeaders: pulumi.Input.decodeList<GoogleCloudRunV2HTTPHeaderResponse>(map['httpHeaders'], (value) => GoogleCloudRunV2HTTPHeaderResponse.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}

