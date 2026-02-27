// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Association.
class AssociationArgs {
  /// ARN of the license configuration.
  final pulumi.Input<String> licenseConfigurationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the resource associated with the license configuration.
  final pulumi.Input<String> resourceArn;

  AssociationArgs({
    required this.licenseConfigurationArn,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['licenseConfigurationArn'] = licenseConfigurationArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory AssociationArgs.fromMap(Map<String, dynamic> map) {
    return AssociationArgs(
      licenseConfigurationArn:
          pulumi.Input.asInput<String>(map['licenseConfigurationArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
    );
  }
}
