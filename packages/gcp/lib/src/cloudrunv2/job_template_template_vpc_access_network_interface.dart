// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateVpcAccessNetworkInterface {
  /// The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
  /// network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be
  /// looked up from the subnetwork.
  final String? network;

  /// The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
  /// network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the
  /// subnetwork with the same name with the network will be used.
  final String? subnetwork;

  /// Network tags applied to this Cloud Run job.
  final List<String>? tags;

  /// Creates a new [JobTemplateTemplateVpcAccessNetworkInterface].
  /// [network] The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
  /// [subnetwork] The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
  /// [tags] Network tags applied to this Cloud Run job.
  JobTemplateTemplateVpcAccessNetworkInterface({
    this.network,
    this.subnetwork,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory JobTemplateTemplateVpcAccessNetworkInterface.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateTemplateVpcAccessNetworkInterface(
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
