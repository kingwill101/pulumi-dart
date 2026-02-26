// ignore_for_file: unused_element, unnecessary_cast

/// A Sole Tenant node type.
class SoleTenantNodeType2 {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final String? nodeName;

  SoleTenantNodeType2({
    this.nodeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeNameValue = nodeName;
    if (nodeNameValue != null) {
      map['nodeName'] = nodeNameValue;
    }
    return map;
  }

  factory SoleTenantNodeType2.fromMap(Map<String, dynamic> map) {
    return SoleTenantNodeType2(
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
    );
  }
}
