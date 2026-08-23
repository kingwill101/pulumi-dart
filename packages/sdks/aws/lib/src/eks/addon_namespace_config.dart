// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddonNamespaceConfig {
  /// Name of the Kubernetes namespace to install the add-on in. Once you install an add-on in a specific namespace, you must remove and re-create the add-on to change its namespace. For more details see the [Custom namespace for add-ons](https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html#custom-namespace).
  final pulumi.Input<String>? namespace;

  /// Creates a new [AddonNamespaceConfig].
  /// [namespace] Name of the Kubernetes namespace to install the add-on in. Once you install an add-on in a specific namespace, you must remove and re-create the add-on to change its namespace. For more details see the [Custom namespace for add-ons](https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html#custom-namespace).
  const AddonNamespaceConfig({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory AddonNamespaceConfig.fromMap(Map<String, dynamic> map) {
    return AddonNamespaceConfig(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
