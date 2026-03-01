// ignore_for_file: unused_element, unnecessary_cast


/// Definition of StatefulEngineOptions
class StatefulEngineOptions {
  /// Property ruleOrder
  final String? ruleOrder;
  /// Property streamExceptionPolicy
  final String? streamExceptionPolicy;

  /// Creates a new [StatefulEngineOptions].
  /// [ruleOrder] Property ruleOrder
  /// [streamExceptionPolicy] Property streamExceptionPolicy
  StatefulEngineOptions({
    this.ruleOrder,
    this.streamExceptionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleOrder': ?ruleOrder,
      'streamExceptionPolicy': ?streamExceptionPolicy,
    };
  }

  factory StatefulEngineOptions.fromMap(Map<String, dynamic> map) {
    return StatefulEngineOptions(
      ruleOrder: map['ruleOrder'] == null ? null : map['ruleOrder'] as String,
      streamExceptionPolicy: map['streamExceptionPolicy'] == null ? null : map['streamExceptionPolicy'] as String,
    );
  }
}

