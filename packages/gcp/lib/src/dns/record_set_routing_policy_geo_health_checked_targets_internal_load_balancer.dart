// ignore_for_file: unused_element, unnecessary_cast


class RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer {
  /// The frontend IP address of the load balancer.
  final String ipAddress;
  /// The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: ["tcp", "udp"]
  final String ipProtocol;
  /// The type of load balancer. This value is case-sensitive. Possible values: ["regionalL4ilb", "regionalL7ilb", "globalL7ilb"]
  final String? loadBalancerType;
  /// The fully qualified url of the network in which the load balancer belongs. This should be formatted like `projects/{project}/global/networks/{network}` or `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
  final String networkUrl;
  /// The configured port of the load balancer.
  final String port;
  /// The ID of the project in which the load balancer belongs.
  final String project;
  /// The region of the load balancer. Only needed for regional load balancers.
  final String? region;

  /// Creates a new [RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer].
  /// [ipAddress] The frontend IP address of the load balancer.
  /// [ipProtocol] The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: ["tcp", "udp"]
  /// [loadBalancerType] The type of load balancer. This value is case-sensitive. Possible values: ["regionalL4ilb", "regionalL7ilb", "globalL7ilb"]
  /// [networkUrl] The fully qualified url of the network in which the load balancer belongs. This should be formatted like `projects/{project}/global/networks/{network}` or `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
  /// [port] The configured port of the load balancer.
  /// [project] The ID of the project in which the load balancer belongs.
  /// [region] The region of the load balancer. Only needed for regional load balancers.
  RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer({
    required this.ipAddress,
    required this.ipProtocol,
    this.loadBalancerType,
    required this.networkUrl,
    required this.port,
    required this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipProtocol': ipProtocol,
      'loadBalancerType': ?loadBalancerType,
      'networkUrl': networkUrl,
      'port': port,
      'project': project,
      'region': ?region,
    };
  }

  factory RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer(
      ipAddress: map['ipAddress'] as String,
      ipProtocol: map['ipProtocol'] as String,
      loadBalancerType: map['loadBalancerType'] == null ? null : map['loadBalancerType'] as String,
      networkUrl: map['networkUrl'] as String,
      port: map['port'] as String,
      project: map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

