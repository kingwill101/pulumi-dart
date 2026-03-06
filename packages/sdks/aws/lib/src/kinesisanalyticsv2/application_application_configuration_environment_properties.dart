// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_environment_properties_property_group.dart';

class ApplicationApplicationConfigurationEnvironmentProperties {
  /// Describes the execution property groups.
  final pulumi.Input<List<ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup>> propertyGroups;

  /// Creates a new [ApplicationApplicationConfigurationEnvironmentProperties].
  /// [propertyGroups] Describes the execution property groups.
  const ApplicationApplicationConfigurationEnvironmentProperties({
    required this.propertyGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyGroups': pulumi.Input.mapInputValue<List<ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup>, List<Map<String, dynamic>>>(propertyGroups, (value) => pulumi.Input.encodeList<ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationApplicationConfigurationEnvironmentProperties.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationEnvironmentProperties(
      propertyGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup>(map['propertyGroups']!, (value) => ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

