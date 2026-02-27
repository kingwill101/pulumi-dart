// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInferenceProfile.
class GetInferenceProfileArgs {
  /// Inference Profile identifier.
  final pulumi.Input<String> inferenceProfileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetInferenceProfileArgs({
    required this.inferenceProfileId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inferenceProfileId'] = inferenceProfileId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInferenceProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfileArgs(
      inferenceProfileId:
          pulumi.Input.asInput<String>(map['inferenceProfileId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
