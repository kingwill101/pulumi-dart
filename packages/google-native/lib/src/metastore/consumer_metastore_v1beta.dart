// ignore_for_file: unused_element, unnecessary_cast

/// Contains information of the customer's network configurations.
class ConsumerMetastoreV1beta {
  /// Immutable. The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint. It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network. There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}
  final String? subnetwork;

  /// Creates a new [ConsumerMetastoreV1beta].
  /// [subnetwork] Immutable. The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint. It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network. There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}
  ConsumerMetastoreV1beta({
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory ConsumerMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return ConsumerMetastoreV1beta(
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
