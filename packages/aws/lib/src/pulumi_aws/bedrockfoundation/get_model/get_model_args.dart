// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getModel.
class GetModelArgs {
  /// Model identifier.
  final pulumi.Input<String> modelId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetModelArgs({
    required this.modelId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelId'] = modelId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetModelArgs.fromMap(Map<String, dynamic> map) {
    return GetModelArgs(
      modelId: pulumi.Input.asInput<String>(map['modelId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
