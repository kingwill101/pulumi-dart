// ignore_for_file: unused_element, unnecessary_cast

/// A Sole Tenant node type.
class SoleTenantNodeTypeResponseMigrationcenterV1alpha1 {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final String nodeName;

  /// Creates a new [SoleTenantNodeTypeResponseMigrationcenterV1alpha1].
  /// [nodeName] Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  SoleTenantNodeTypeResponseMigrationcenterV1alpha1({
    required this.nodeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeName'] = nodeName;
    return map;
  }

  factory SoleTenantNodeTypeResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SoleTenantNodeTypeResponseMigrationcenterV1alpha1(
      nodeName: map['nodeName'] as String,
    );
  }
}
