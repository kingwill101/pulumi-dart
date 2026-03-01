// ignore_for_file: unused_element, unnecessary_cast


/// Definition of StatefulEngineOptions
class StatefulEngineOptionsResponse {
  /// Property ruleOrder
  final String? ruleOrder;
  /// Property streamExceptionPolicy
  final String? streamExceptionPolicy;

  /// Creates a new [StatefulEngineOptionsResponse].
  /// [ruleOrder] Property ruleOrder
  /// [streamExceptionPolicy] Property streamExceptionPolicy
  StatefulEngineOptionsResponse({
    this.ruleOrder,
    this.streamExceptionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleOrder': ?ruleOrder,
      'streamExceptionPolicy': ?streamExceptionPolicy,
    };
  }

  factory StatefulEngineOptionsResponse.fromMap(Map<String, dynamic> map) {
    return StatefulEngineOptionsResponse(
      ruleOrder: map['ruleOrder'] == null ? null : map['ruleOrder'] as String,
      streamExceptionPolicy: map['streamExceptionPolicy'] == null ? null : map['streamExceptionPolicy'] as String,
    );
  }
}

