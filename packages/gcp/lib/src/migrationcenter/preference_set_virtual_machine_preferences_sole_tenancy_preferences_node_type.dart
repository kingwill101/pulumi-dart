// ignore_for_file: unused_element, unnecessary_cast

class PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final String? nodeName;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType].
  /// [nodeName] Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType({
    this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeName': ?nodeName};
  }

  factory PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType(
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
    );
  }
}
