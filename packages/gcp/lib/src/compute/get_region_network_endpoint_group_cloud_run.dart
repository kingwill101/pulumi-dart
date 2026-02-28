// ignore_for_file: unused_element, unnecessary_cast


class GetRegionNetworkEndpointGroupCloudRun {
  /// Cloud Run service is the main resource of Cloud Run.
  /// The service must be 1-63 characters long, and comply with RFC1035.
  /// Example value: "run-service".
  final String service;
  /// Cloud Run tag represents the "named-revision" to provide
  /// additional fine-grained traffic routing information.
  /// The tag must be 1-63 characters long, and comply with RFC1035.
  /// Example value: "revision-0010".
  final String tag;
  /// A template to parse service and tag fields from a request URL.
  /// URL mask allows for routing to multiple Run services without having
  /// to create multiple network endpoint groups and backend services.
  ///
  /// For example, request URLs "foo1.domain.com/bar1" and "foo1.domain.com/bar2"
  /// an be backed by the same Serverless Network Endpoint Group (NEG) with
  /// URL mask ".domain.com/". The URL mask will parse them to { service="bar1", tag="foo1" }
  /// and { service="bar2", tag="foo2" } respectively.
  final String urlMask;

  /// Creates a new [GetRegionNetworkEndpointGroupCloudRun].
  /// [service] Cloud Run service is the main resource of Cloud Run.
  /// [tag] Cloud Run tag represents the "named-revision" to provide
  /// [urlMask] A template to parse service and tag fields from a request URL.
  GetRegionNetworkEndpointGroupCloudRun({
    required this.service,
    required this.tag,
    required this.urlMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
      'tag': tag,
      'urlMask': urlMask,
    };
  }

  factory GetRegionNetworkEndpointGroupCloudRun.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupCloudRun(
      service: map['service'] as String,
      tag: map['tag'] as String,
      urlMask: map['urlMask'] as String,
    );
  }
}

