// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster.dart';

/// {@template pulumi_container_v1_get_kubeconfig_args_doc}
/// Arguments for getKubeconfig.
/// {@endtemplate}
/// {@macro pulumi_container_v1_get_kubeconfig_args_doc}
class GetKubeconfigArgs {
  final pulumi.Input<Cluster> self;

  /// Creates a new [GetKubeconfigArgs].
  /// [self] Required.
  GetKubeconfigArgs({required Cluster self})
    : self = pulumi.Input.asInput<Cluster>(self);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'__self__': self};
  }

  factory GetKubeconfigArgs.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigArgs(self: map['__self__'] as Cluster);
  }
}
