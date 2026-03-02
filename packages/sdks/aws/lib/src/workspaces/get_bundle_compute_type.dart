// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBundleComputeType {
  /// Name of the bundle. You cannot combine this parameter with `bundle_id`.
  final pulumi.Input<String> name;

  /// Creates a new [GetBundleComputeType].
  /// [name] Name of the bundle. You cannot combine this parameter with `bundle_id`.
  GetBundleComputeType({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetBundleComputeType.fromMap(Map<String, dynamic> map) {
    return GetBundleComputeType(
      name: (map['name'] as String).input(),
    );
  }
}

