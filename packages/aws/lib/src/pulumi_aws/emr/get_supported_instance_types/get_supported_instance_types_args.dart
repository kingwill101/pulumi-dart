// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSupportedInstanceTypes.
class GetSupportedInstanceTypesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon EMR release label. For more information about Amazon EMR releases and their included application versions and features, see the [Amazon EMR Release Guide](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html).
  final pulumi.Input<String> releaseLabel;

  GetSupportedInstanceTypesArgs({
    this.region,
    required this.releaseLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['releaseLabel'] = releaseLabel;
    return map;
  }

  factory GetSupportedInstanceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetSupportedInstanceTypesArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      releaseLabel: pulumi.Input.asInput<String>(map['releaseLabel']),
    );
  }
}
