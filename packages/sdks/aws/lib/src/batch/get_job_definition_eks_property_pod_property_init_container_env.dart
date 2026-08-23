// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyInitContainerEnv {
  /// Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;
  /// Quantity of the specified resource to reserve for the container.
  final pulumi.Input<String> value;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyInitContainerEnv].
  /// [name] Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [value] Quantity of the specified resource to reserve for the container.
  const GetJobDefinitionEksPropertyPodPropertyInitContainerEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyInitContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyInitContainerEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
