// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResource.
class GetResourceLakeformationArgs {
  /// ARN of the resource, an S3 path.
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetResourceLakeformationArgs({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetResourceLakeformationArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceLakeformationArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
