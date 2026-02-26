// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCustomModel.
class GetCustomModelArgs {
  /// Name or ARN of the custom model.
  final Input<String> modelId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetCustomModelArgs({
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

  factory GetCustomModelArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomModelArgs(
      modelId: Input.asInput<String>(map['modelId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
