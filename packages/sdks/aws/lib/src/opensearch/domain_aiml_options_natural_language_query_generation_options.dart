// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAimlOptionsNaturalLanguageQueryGenerationOptions {
  /// The desired state of the natural language query generation feature. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? desiredState;

  /// Creates a new [DomainAimlOptionsNaturalLanguageQueryGenerationOptions].
  /// [desiredState] The desired state of the natural language query generation feature. Valid values are `ENABLED` and `DISABLED`.
  const DomainAimlOptionsNaturalLanguageQueryGenerationOptions({
    this.desiredState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': ?desiredState,
    };
  }

  factory DomainAimlOptionsNaturalLanguageQueryGenerationOptions.fromMap(Map<String, dynamic> map) {
    return DomainAimlOptionsNaturalLanguageQueryGenerationOptions(
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
