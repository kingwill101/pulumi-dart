// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationConfiguration.
class OrganizationConfigurationArgs4 {
  /// Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  final Input<bool> autoEnable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationConfigurationArgs4({
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

  factory OrganizationConfigurationArgs4.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs4(
      autoEnable: Input.asInput<bool>(map['autoEnable']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
