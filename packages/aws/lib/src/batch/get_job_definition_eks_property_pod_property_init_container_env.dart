// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionEksPropertyPodPropertyInitContainerEnv {
  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final String name;

  /// The quantity of the specified resource to reserve for the container.
  final String value;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyInitContainerEnv].
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [value] The quantity of the specified resource to reserve for the container.
  GetJobDefinitionEksPropertyPodPropertyInitContainerEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetJobDefinitionEksPropertyPodPropertyInitContainerEnv.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyInitContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
