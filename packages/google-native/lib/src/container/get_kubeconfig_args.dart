// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1_get_kubeconfig_args_doc}
/// Arguments for getKubeconfig.
/// {@endtemplate}
/// {@macro pulumi_container_v1_get_kubeconfig_args_doc}
class GetKubeconfigArgs {
  final pulumi.Input<dynamic> self;

  /// Creates a new [GetKubeconfigArgs].
  /// [self] Required.
  GetKubeconfigArgs({
    required dynamic self,
  }) : self = pulumi.Input.asInput<dynamic>(self);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['__self__'] = self;
    return map;
  }

  factory GetKubeconfigArgs.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigArgs(
      self: map['__self__'],
    );
  }
}
