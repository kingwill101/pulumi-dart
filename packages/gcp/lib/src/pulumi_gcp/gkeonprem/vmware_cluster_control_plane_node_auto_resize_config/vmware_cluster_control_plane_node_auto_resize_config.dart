// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterControlPlaneNodeAutoResizeConfig {
  /// Whether to enable control plane node auto resizing.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedControlPlaneNodeVsphereConfig"" pulumi-lang-dotnet=""NestedControlPlaneNodeVsphereConfig"" pulumi-lang-go=""nestedControlPlaneNodeVsphereConfig"" pulumi-lang-python=""nested_control_plane_node_vsphere_config"" pulumi-lang-yaml=""nestedControlPlaneNodeVsphereConfig"" pulumi-lang-java=""nestedControlPlaneNodeVsphereConfig"">"nested_control_plane_node_vsphere_config"</span>></a>The <span pulumi-lang-nodejs="`vsphereConfig`" pulumi-lang-dotnet="`VsphereConfig`" pulumi-lang-go="`vsphereConfig`" pulumi-lang-python="`vsphere_config`" pulumi-lang-yaml="`vsphereConfig`" pulumi-lang-java="`vsphereConfig`">`vsphere_config`</span> block contains:
  final bool enabled;

  VMwareClusterControlPlaneNodeAutoResizeConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VMwareClusterControlPlaneNodeAutoResizeConfig.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterControlPlaneNodeAutoResizeConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
