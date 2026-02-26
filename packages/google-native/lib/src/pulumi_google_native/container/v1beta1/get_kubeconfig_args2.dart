// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKubeconfig.
class GetKubeconfigArgs2 {
  final Input<dynamic> self;

  GetKubeconfigArgs2({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['__self__'] = self;
    return map;
  }

  factory GetKubeconfigArgs2.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigArgs2(
      self: Input.asInput<dynamic>(map['__self__']),
    );
  }
}
