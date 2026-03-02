// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scope for a given action rule. By default scope will be the subscription. User can also provide list of resource groups or list of resources from the scope subscription as well.
class ScopeResponse {
  /// type of target scope
  final pulumi.Input<String>? scopeType;
  /// list of ARM IDs of the given scope type which will be the target of the given action rule.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ScopeResponse].
  /// [scopeType] type of target scope
  /// [values] list of ARM IDs of the given scope type which will be the target of the given action rule.
  ScopeResponse({
    this.scopeType,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopeType': ?scopeType,
      'values': ?values,
    };
  }

  factory ScopeResponse.fromMap(Map<String, dynamic> map) {
    return ScopeResponse(
      scopeType: map['scopeType'] == null ? null : (map['scopeType']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

