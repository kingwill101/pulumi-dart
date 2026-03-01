// ignore_for_file: unused_element, unnecessary_cast

/// Direct VPC egress settings.
class GoogleCloudRunV2NetworkInterfaceResponse {
  /// The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be looked up from the subnetwork.
  final String network;

  /// The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.
  final String subnetwork;

  /// Network tags applied to this Cloud Run resource.
  final List<String> tags;

  /// Creates a new [GoogleCloudRunV2NetworkInterfaceResponse].
  /// [network] The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be looked up from the subnetwork.
  /// [subnetwork] The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.
  /// [tags] Network tags applied to this Cloud Run resource.
  GoogleCloudRunV2NetworkInterfaceResponse({
    required this.network,
    required this.subnetwork,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'subnetwork': subnetwork,
      'tags': tags,
    };
  }

  factory GoogleCloudRunV2NetworkInterfaceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRunV2NetworkInterfaceResponse(
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
