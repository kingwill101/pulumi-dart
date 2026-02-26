// ignore_for_file: unused_element, unnecessary_cast

/// A Sole Tenant node type.
class SoleTenantNodeTypeResponse2 {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final String nodeName;

  SoleTenantNodeTypeResponse2({
    required this.nodeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeName'] = nodeName;
    return map;
  }

  factory SoleTenantNodeTypeResponse2.fromMap(Map<String, dynamic> map) {
    return SoleTenantNodeTypeResponse2(
      nodeName: map['nodeName'] as String,
    );
  }
}
