// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEndpointAttachment.
class GetEndpointAttachmentResult {
  /// State of the endpoint attachment connection to the service attachment.
  final String connectionState;

  /// Host that can be used in either the HTTP target endpoint directly or as the host in target server.
  final String host;

  /// Location of the endpoint attachment.
  final String location;

  /// Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`
  final String name;

  /// Format: projects/*/regions/*/serviceAttachments/*
  final String serviceAttachment;

  /// State of the endpoint attachment. Values other than `ACTIVE` mean the resource is not ready to use.
  final String state;

  /// Creates a new [GetEndpointAttachmentResult].
  /// [connectionState] State of the endpoint attachment connection to the service attachment.
  /// [host] Host that can be used in either the HTTP target endpoint directly or as the host in target server.
  /// [location] Location of the endpoint attachment.
  /// [name] Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`
  /// [serviceAttachment] Format: projects/*/regions/*/serviceAttachments/*
  /// [state] State of the endpoint attachment. Values other than `ACTIVE` mean the resource is not ready to use.
  GetEndpointAttachmentResult({
    required this.connectionState,
    required this.host,
    required this.location,
    required this.name,
    required this.serviceAttachment,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionState'] = connectionState;
    map['host'] = host;
    map['location'] = location;
    map['name'] = name;
    map['serviceAttachment'] = serviceAttachment;
    map['state'] = state;
    return map;
  }

  factory GetEndpointAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointAttachmentResult(
      connectionState: map['connectionState'] as String,
      host: map['host'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
      state: map['state'] as String,
    );
  }
}
