// ignore_for_file: unused_element, unnecessary_cast

/// A configured rewrite that directs requests to a Cloud Run service. If the Cloud Run service does not exist when setting or updating your Firebase Hosting configuration, then the request fails. Any errors from the Cloud Run service are passed to the end user (for example, if you delete a service, any requests directed to that service receive a `404` error).
class CloudRunRewrite {
  /// Optional. User-provided region where the Cloud Run service is hosted. Defaults to `us-central1` if not supplied.
  final String? region;

  /// User-defined ID of the Cloud Run service.
  final String serviceId;

  /// Optional. User-provided TrafficConfig tag to send traffic to. When omitted, traffic is sent to the service-wide URI
  final String? tag;

  /// Creates a new [CloudRunRewrite].
  /// [region] Optional. User-provided region where the Cloud Run service is hosted. Defaults to `us-central1` if not supplied.
  /// [serviceId] User-defined ID of the Cloud Run service.
  /// [tag] Optional. User-provided TrafficConfig tag to send traffic to. When omitted, traffic is sent to the service-wide URI
  CloudRunRewrite({
    this.region,
    required this.serviceId,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceId'] = serviceId;
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    return map;
  }

  factory CloudRunRewrite.fromMap(Map<String, dynamic> map) {
    return CloudRunRewrite(
      region: map['region'] == null ? null : map['region'] as String,
      serviceId: map['serviceId'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
