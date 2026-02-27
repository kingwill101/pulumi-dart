// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFunctions.
class GetFunctionsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetFunctionsArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetFunctionsArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionsArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
