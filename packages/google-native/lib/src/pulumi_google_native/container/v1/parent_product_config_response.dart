// ignore_for_file: unused_element, unnecessary_cast

/// ParentProductConfig is the configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of a GKE cluster and take the ownership of the cluster.
class ParentProductConfigResponse {
  /// Labels contain the configuration of the parent product.
  final Map<String, String> labels;

  /// Name of the parent product associated with the cluster.
  final String productName;

  ParentProductConfigResponse({
    required this.labels,
    required this.productName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['productName'] = productName;
    return map;
  }

  factory ParentProductConfigResponse.fromMap(Map<String, dynamic> map) {
    return ParentProductConfigResponse(
      labels: (map['labels'] as Map).cast<String, String>(),
      productName: map['productName'] as String,
    );
  }
}
