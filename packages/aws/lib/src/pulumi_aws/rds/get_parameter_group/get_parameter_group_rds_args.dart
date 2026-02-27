// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getParameterGroup.
class GetParameterGroupRdsArgs {
  /// DB parameter group name.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetParameterGroupRdsArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetParameterGroupRdsArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupRdsArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
