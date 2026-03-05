// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeKubernetesAddon {
  /// The ACK add-on configurations. For more config information, see cs_kubernetes_addon_metadata.
  final pulumi.Input<String>? config;
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
  final pulumi.Input<bool>? disabled;
  /// Name of the ACK add-on. The name must match one of the names returned by [DescribeAddons](https://help.aliyun.com/document_detail/171524.html).
  final pulumi.Input<String>? name;
  /// It specifies the version of the component.
  final pulumi.Input<String>? version;

  /// Creates a new [EdgeKubernetesAddon].
  /// [config] The ACK add-on configurations. For more config information, see cs_kubernetes_addon_metadata.
  /// [disabled] Disables the automatic installation of a component. Default is `false`.
  /// [name] Name of the ACK add-on. The name must match one of the names returned by [DescribeAddons](https://help.aliyun.com/document_detail/171524.html).
  /// [version] It specifies the version of the component.
  EdgeKubernetesAddon({
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

  factory EdgeKubernetesAddon.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesAddon(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

