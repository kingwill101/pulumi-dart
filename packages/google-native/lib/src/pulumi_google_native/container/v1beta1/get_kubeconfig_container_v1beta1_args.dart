// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKubeconfig.
class GetKubeconfigContainerV1beta1Args {
  final pulumi.Input<dynamic> self;

  GetKubeconfigContainerV1beta1Args({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['__self__'] = self;
    return map;
  }

  factory GetKubeconfigContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigContainerV1beta1Args(
      self: pulumi.Input.asInput<dynamic>(map['__self__']),
    );
  }
}
