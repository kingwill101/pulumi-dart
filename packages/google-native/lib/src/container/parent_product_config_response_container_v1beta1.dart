// ignore_for_file: unused_element, unnecessary_cast

/// ParentProductConfig is the configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of a GKE cluster and take the ownership of the cluster.
class ParentProductConfigResponseContainerV1beta1 {
  /// Labels contain the configuration of the parent product.
  final Map<String, String> labels;

  /// Name of the parent product associated with the cluster.
  final String productName;

  /// Creates a new [ParentProductConfigResponseContainerV1beta1].
  /// [labels] Labels contain the configuration of the parent product.
  /// [productName] Name of the parent product associated with the cluster.
  ParentProductConfigResponseContainerV1beta1({
    required this.labels,
    required this.productName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['productName'] = productName;
    return map;
  }

  factory ParentProductConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ParentProductConfigResponseContainerV1beta1(
      labels: (map['labels'] as Map).cast<String, String>(),
      productName: map['productName'] as String,
    );
  }
}
