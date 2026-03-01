// ignore_for_file: unused_element, unnecessary_cast

/// A configured rewrite that directs requests to a Cloud Run service. If the Cloud Run service does not exist when setting or updating your Firebase Hosting configuration, then the request fails. Any errors from the Cloud Run service are passed to the end user (for example, if you delete a service, any requests directed to that service receive a `404` error).
class CloudRunRewriteResponse {
  /// Optional. User-provided region where the Cloud Run service is hosted. Defaults to `us-central1` if not supplied.
  final String region;

  /// User-defined ID of the Cloud Run service.
  final String serviceId;

  /// Optional. User-provided TrafficConfig tag to send traffic to. When omitted, traffic is sent to the service-wide URI
  final String tag;

  /// Creates a new [CloudRunRewriteResponse].
  /// [region] Optional. User-provided region where the Cloud Run service is hosted. Defaults to `us-central1` if not supplied.
  /// [serviceId] User-defined ID of the Cloud Run service.
  /// [tag] Optional. User-provided TrafficConfig tag to send traffic to. When omitted, traffic is sent to the service-wide URI
  CloudRunRewriteResponse({
    required this.region,
    required this.serviceId,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'serviceId': serviceId,
      'tag': tag,
    };
  }

  factory CloudRunRewriteResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunRewriteResponse(
      region: map['region'] as String,
      serviceId: map['serviceId'] as String,
      tag: map['tag'] as String,
    );
  }
}
