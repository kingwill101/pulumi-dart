// ignore_for_file: unused_element, unnecessary_cast

class DomainAimlOptionsNaturalLanguageQueryGenerationOptions {
  /// The desired state of the natural language query generation feature. Valid values are `ENABLED` and `DISABLED`.
  final String? desiredState;

  /// Creates a new [DomainAimlOptionsNaturalLanguageQueryGenerationOptions].
  /// [desiredState] The desired state of the natural language query generation feature. Valid values are `ENABLED` and `DISABLED`.
  DomainAimlOptionsNaturalLanguageQueryGenerationOptions({
    this.desiredState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    return map;
  }

  factory DomainAimlOptionsNaturalLanguageQueryGenerationOptions.fromMap(
      Map<String, dynamic> map) {
    return DomainAimlOptionsNaturalLanguageQueryGenerationOptions(
      desiredState:
          map['desiredState'] == null ? null : map['desiredState'] as String,
    );
  }
}
