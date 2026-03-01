// ignore_for_file: unused_element, unnecessary_cast


/// Target scope for a given action rule. By default scope will be the subscription. User can also provide list of resource groups or list of resources from the scope subscription as well.
class Scope {
  /// type of target scope
  final String? scopeType;
  /// list of ARM IDs of the given scope type which will be the target of the given action rule.
  final List<String>? values;

  /// Creates a new [Scope].
  /// [scopeType] type of target scope
  /// [values] list of ARM IDs of the given scope type which will be the target of the given action rule.
  Scope({
    this.scopeType,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopeType': ?scopeType,
      'values': ?values,
    };
  }

  factory Scope.fromMap(Map<String, dynamic> map) {
    return Scope(
      scopeType: map['scopeType'] == null ? null : map['scopeType'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

