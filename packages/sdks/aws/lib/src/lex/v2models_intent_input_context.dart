// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentInputContext {
  /// Name of the context.
  final pulumi.Input<String> name;

  /// Creates a new [V2modelsIntentInputContext].
  /// [name] Name of the context.
  const V2modelsIntentInputContext({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory V2modelsIntentInputContext.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInputContext(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

