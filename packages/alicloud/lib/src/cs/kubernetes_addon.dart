// ignore_for_file: unused_element, unnecessary_cast


class KubernetesAddon {
  /// The ACK add-on configurations. For more config information, see cs_kubernetes_addon_metadata.
  final String? config;
  /// Disables the automatic installation of a component. Default is `false`.
  ///
  /// The following example is the definition of addons block, The type of this field is list:
  ///
  /// ```
  /// # install nginx ingress, conflict with SLB ingress
  /// addons {
  /// name = "nginx-ingress-controller"
  /// # use internet
  /// config = "{\"IngressSlbNetworkType\":\"internet",\"IngressSlbSpec\":\"slb.s2.small\"}"
  /// # if use intranet, detail below.
  /// # config = "{\"IngressSlbNetworkType\":\"intranet",\"IngressSlbSpec\":\"slb.s2.small\"}"
  /// }
  /// ```
  final bool? disabled;
  /// Name of the ACK add-on. The name must match one of the names returned by [DescribeAddons](https://help.aliyun.com/document_detail/171524.html).
  final String? name;
  /// The version of the component.
  final String? version;

  /// Creates a new [KubernetesAddon].
  /// [config] The ACK add-on configurations. For more config information, see cs_kubernetes_addon_metadata.
  /// [disabled] Disables the automatic installation of a component. Default is `false`.
  /// [name] Name of the ACK add-on. The name must match one of the names returned by [DescribeAddons](https://help.aliyun.com/document_detail/171524.html).
  /// [version] The version of the component.
  KubernetesAddon({
    this.config,
    this.disabled,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'disabled': ?disabled,
      'name': ?name,
      'version': ?version,
    };
  }

  factory KubernetesAddon.fromMap(Map<String, dynamic> map) {
    return KubernetesAddon(
      config: map['config'] == null ? null : map['config'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

