// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_application_configuration_environment_properties_property_group/application_application_configuration_environment_properties_property_group.dart';

class ApplicationApplicationConfigurationEnvironmentProperties {
  /// Describes the execution property groups.
  final List<
          ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup>
      propertyGroups;

  ApplicationApplicationConfigurationEnvironmentProperties({
    required this.propertyGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['propertyGroups'] = Input.encodeList<
        ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup,
        Map<String, dynamic>>(propertyGroups, (value) => value.toMap());
    return map;
  }

  factory ApplicationApplicationConfigurationEnvironmentProperties.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationEnvironmentProperties(
      propertyGroups: Input.decodeList<
              ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup>(
          map['propertyGroups'],
          (value) =>
              ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
