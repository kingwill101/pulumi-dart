// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_configuration_auto_enable/organization_configuration_auto_enable.dart';

/// The set of arguments for OrganizationConfiguration.
class OrganizationConfigurationInspector2Args {
  /// Configuration block for auto enabling. See below.
  final pulumi.Input<OrganizationConfigurationAutoEnable> autoEnable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  OrganizationConfigurationInspector2Args({
    required this.autoEnable,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = pulumi.Input.mapInputValue<
        OrganizationConfigurationAutoEnable,
        Map<String, dynamic>>(autoEnable, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationConfigurationInspector2Args.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationInspector2Args(
      autoEnable: pulumi.Input.asInput<OrganizationConfigurationAutoEnable>(
          map['autoEnable']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
