// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Cloud Run network endpoint group (NEG). The service must be provided explicitly or in the URL mask. The tag is optional, may be provided explicitly or in the URL mask. Note: Cloud Run service must be in the same project and located in the same region as the Serverless NEG.
class NetworkEndpointGroupCloudRunComputeV1 {
  /// Cloud Run service is the main resource of Cloud Run. The service must be 1-63 characters long, and comply with RFC1035. Example value: "run-service".
  final String? service;

  /// Optional Cloud Run tag represents the "named-revision" to provide additional fine-grained traffic routing information. The tag must be 1-63 characters long, and comply with RFC1035. Example value: "revision-0010".
  final String? tag;

  /// A template to parse <service> and <tag> fields from a request URL. URL mask allows for routing to multiple Run services without having to create multiple network endpoint groups and backend services. For example, request URLs "foo1.domain.com/bar1" and "foo1.domain.com/bar2" can be backed by the same Serverless Network Endpoint Group (NEG) with URL mask "<tag>.domain.com/<service>". The URL mask will parse them to { service="bar1", tag="foo1" } and { service="bar2", tag="foo2" } respectively.
  final String? urlMask;

  /// Creates a new [NetworkEndpointGroupCloudRunComputeV1].
  /// [service] Cloud Run service is the main resource of Cloud Run. The service must be 1-63 characters long, and comply with RFC1035. Example value: "run-service".
  /// [tag] Optional Cloud Run tag represents the "named-revision" to provide additional fine-grained traffic routing information. The tag must be 1-63 characters long, and comply with RFC1035. Example value: "revision-0010".
  /// [urlMask] A template to parse <service> and <tag> fields from a request URL. URL mask allows for routing to multiple Run services without having to create multiple network endpoint groups and backend services. For example, request URLs "foo1.domain.com/bar1" and "foo1.domain.com/bar2" can be backed by the same Serverless Network Endpoint Group (NEG) with URL mask "<tag>.domain.com/<service>". The URL mask will parse them to { service="bar1", tag="foo1" } and { service="bar2", tag="foo2" } respectively.
  NetworkEndpointGroupCloudRunComputeV1({
    this.service,
    this.tag,
    this.urlMask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    final urlMaskValue = urlMask;
    if (urlMaskValue != null) {
      map['urlMask'] = urlMaskValue;
    }
    return map;
  }

  factory NetworkEndpointGroupCloudRunComputeV1.fromMap(
      Map<String, dynamic> map) {
    return NetworkEndpointGroupCloudRunComputeV1(
      service: map['service'] == null ? null : map['service'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      urlMask: map['urlMask'] == null ? null : map['urlMask'] as String,
    );
  }
}
