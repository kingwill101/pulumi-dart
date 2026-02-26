// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_configuration_auto_enable/organization_configuration_auto_enable.dart';

/// The set of arguments for OrganizationConfiguration.
class OrganizationConfigurationArgs3 {
  /// Configuration block for auto enabling. See below.
  final Input<OrganizationConfigurationAutoEnable> autoEnable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationConfigurationArgs3({
    required this.autoEnable,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = Input.mapInputValue<OrganizationConfigurationAutoEnable,
        Map<String, dynamic>>(autoEnable, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationConfigurationArgs3.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs3(
      autoEnable:
          Input.asInput<OrganizationConfigurationAutoEnable>(map['autoEnable']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
