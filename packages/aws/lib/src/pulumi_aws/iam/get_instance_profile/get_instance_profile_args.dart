// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceProfile.
class GetInstanceProfileArgs {
  /// Friendly IAM instance profile name to match.
  final pulumi.Input<String> name;

  GetInstanceProfileArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetInstanceProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfileArgs(
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}
