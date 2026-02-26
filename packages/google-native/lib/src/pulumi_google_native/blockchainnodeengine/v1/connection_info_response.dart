// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_info_response.dart';

/// The connection information through which to interact with a blockchain node.
class ConnectionInfoResponse {
  /// The endpoint information through which to interact with a blockchain node.
  final EndpointInfoResponse endpointInfo;

  /// A service attachment that exposes a node, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  final String serviceAttachment;

  ConnectionInfoResponse({
    required this.endpointInfo,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointInfo'] = endpointInfo.toMap();
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory ConnectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionInfoResponse(
      endpointInfo: EndpointInfoResponse.fromMap(
          (map['endpointInfo'] as Map).cast<String, dynamic>()),
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
