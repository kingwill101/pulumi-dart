// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scope for a given action rule. By default scope will be the subscription. User can also provide list of resource groups or list of resources from the scope subscription as well.
class Scope {
  /// type of target scope
  final pulumi.Input<String>? scopeType;
  /// list of ARM IDs of the given scope type which will be the target of the given action rule.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [Scope].
  /// [scopeType] type of target scope
  /// [values] list of ARM IDs of the given scope type which will be the target of the given action rule.
  const Scope({
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
      scopeType: (() { final guardedValue = map['scopeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

