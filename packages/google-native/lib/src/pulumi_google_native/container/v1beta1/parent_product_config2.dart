// ignore_for_file: unused_element, unnecessary_cast

/// ParentProductConfig is the configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of a GKE cluster and take the ownership of the cluster.
class ParentProductConfig2 {
  /// Labels contain the configuration of the parent product.
  final Map<String, String>? labels;

  /// Name of the parent product associated with the cluster.
  final String? productName;

  ParentProductConfig2({
    this.labels,
    this.productName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final productNameValue = productName;
    if (productNameValue != null) {
      map['productName'] = productNameValue;
    }
    return map;
  }

  factory ParentProductConfig2.fromMap(Map<String, dynamic> map) {
    return ParentProductConfig2(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      productName:
          map['productName'] == null ? null : map['productName'] as String,
    );
  }
}
