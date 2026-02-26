// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFramework.
class GetFrameworkArgs {
  final Input<String> frameworkType;

  /// Name of the framework.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetFrameworkArgs({
    required this.frameworkType,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['frameworkType'] = frameworkType;
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetFrameworkArgs.fromMap(Map<String, dynamic> map) {
    return GetFrameworkArgs(
      frameworkType: Input.asInput<String>(map['frameworkType']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
