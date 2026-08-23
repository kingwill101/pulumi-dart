// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerAssociationContainerMonitoringConfigurationAttributeFilter {
  /// Key of the container attribute to filter on.
  final pulumi.Input<String> key;
  /// Value of the container attribute to filter on.
  final pulumi.Input<String> value;

  /// Creates a new [ContainerAssociationContainerMonitoringConfigurationAttributeFilter].
  /// [key] Key of the container attribute to filter on.
  /// [value] Value of the container attribute to filter on.
  const ContainerAssociationContainerMonitoringConfigurationAttributeFilter({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ContainerAssociationContainerMonitoringConfigurationAttributeFilter.fromMap(Map<String, dynamic> map) {
    return ContainerAssociationContainerMonitoringConfigurationAttributeFilter(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
