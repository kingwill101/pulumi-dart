// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerEngineTypesBrokerEngineTypeEngineVersion {
  /// Name of the engine version.
  final pulumi.Input<String> name;

  /// Creates a new [GetBrokerEngineTypesBrokerEngineTypeEngineVersion].
  /// [name] Name of the engine version.
  GetBrokerEngineTypesBrokerEngineTypeEngineVersion({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetBrokerEngineTypesBrokerEngineTypeEngineVersion.fromMap(Map<String, dynamic> map) {
    return GetBrokerEngineTypesBrokerEngineTypeEngineVersion(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

