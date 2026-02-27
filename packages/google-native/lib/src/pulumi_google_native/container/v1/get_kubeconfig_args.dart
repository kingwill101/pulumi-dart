// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKubeconfig.
class GetKubeconfigArgs {
  final pulumi.Input<dynamic> self;

  GetKubeconfigArgs({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['__self__'] = self;
    return map;
  }

  factory GetKubeconfigArgs.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigArgs(
      self: pulumi.Input.asInput<dynamic>(map['__self__']),
    );
  }
}
