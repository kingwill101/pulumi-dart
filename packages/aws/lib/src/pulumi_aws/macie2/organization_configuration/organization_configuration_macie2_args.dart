// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationConfiguration.
class OrganizationConfigurationMacie2Args {
  /// Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  final pulumi.Input<bool> autoEnable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  OrganizationConfigurationMacie2Args({
    required this.autoEnable,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = autoEnable;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationConfigurationMacie2Args.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationMacie2Args(
      autoEnable: pulumi.Input.asInput<bool>(map['autoEnable']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
