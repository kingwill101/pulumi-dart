// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1beta1_get_kubeconfig_container_v1beta1_args_doc}
/// Arguments for getKubeconfig.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_get_kubeconfig_container_v1beta1_args_doc}
class GetKubeconfigContainerV1beta1Args {
  final pulumi.Input<dynamic> self;

  /// Creates a new [GetKubeconfigContainerV1beta1Args].
  /// [self] Required.
  GetKubeconfigContainerV1beta1Args({
    required dynamic self,
  }) : self = pulumi.Input.asInput<dynamic>(self);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['__self__'] = self;
    return map;
  }

  factory GetKubeconfigContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigContainerV1beta1Args(
      self: map['__self__'],
    );
  }
}
