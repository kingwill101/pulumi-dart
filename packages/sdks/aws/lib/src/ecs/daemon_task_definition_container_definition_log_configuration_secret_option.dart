// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption {
  /// Name of the secret.
  final pulumi.Input<String> name;
  /// Secret to expose to the log configuration.
  final pulumi.Input<String> valueFrom;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption].
  /// [name] Name of the secret.
  /// [valueFrom] Secret to expose to the log configuration.
  const DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption({
    required this.name,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valueFrom': valueFrom,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption(
      name: pulumi.Input.fromValue(map['name'] as String),
      valueFrom: pulumi.Input.fromValue(map['valueFrom'] as String),
    );
  }
}
