// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for terraformConfig.
class TerraformConfigArgs {
  final pulumi.Input<dynamic> self;

  TerraformConfigArgs({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['__self__'] = self;
    return map;
  }

  factory TerraformConfigArgs.fromMap(Map<String, dynamic> map) {
    return TerraformConfigArgs(
      self: pulumi.Input.asInput<dynamic>(map['__self__']),
    );
  }
}
