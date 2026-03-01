// ignore_for_file: unused_element, unnecessary_cast

class GetBrokerEngineTypesBrokerEngineTypeEngineVersion {
  /// Name of the engine version.
  final String name;

  /// Creates a new [GetBrokerEngineTypesBrokerEngineTypeEngineVersion].
  /// [name] Name of the engine version.
  GetBrokerEngineTypesBrokerEngineTypeEngineVersion({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetBrokerEngineTypesBrokerEngineTypeEngineVersion.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBrokerEngineTypesBrokerEngineTypeEngineVersion(
      name: map['name'] as String,
    );
  }
}
