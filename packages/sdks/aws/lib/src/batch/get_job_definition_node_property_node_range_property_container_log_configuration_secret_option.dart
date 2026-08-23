// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption {
  /// Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;
  /// Secret to expose to the container.
  final pulumi.Input<String> valueFrom;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption].
  /// [name] Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [valueFrom] Secret to expose to the container.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption({
    required this.name,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valueFrom': valueFrom,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption(
      name: pulumi.Input.fromValue(map['name'] as String),
      valueFrom: pulumi.Input.fromValue(map['valueFrom'] as String),
    );
  }
}
