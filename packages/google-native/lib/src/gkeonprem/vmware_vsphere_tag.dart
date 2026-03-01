// ignore_for_file: unused_element, unnecessary_cast

/// VmwareVsphereTag describes a vSphere tag to be placed on VMs in the node pool. For more information, see https://docs.vmware.com/en/VMware-vSphere/7.0/com.vmware.vsphere.vcenterhost.doc/GUID-E8E854DD-AA97-4E0C-8419-CE84F93C4058.html
class VmwareVsphereTag {
  /// The Vsphere tag category.
  final String? category;

  /// The Vsphere tag name.
  final String? tag;

  /// Creates a new [VmwareVsphereTag].
  /// [category] The Vsphere tag category.
  /// [tag] The Vsphere tag name.
  VmwareVsphereTag({this.category, this.tag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'category': ?category, 'tag': ?tag};
  }

  factory VmwareVsphereTag.fromMap(Map<String, dynamic> map) {
    return VmwareVsphereTag(
      category: map['category'] == null ? null : map['category'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
