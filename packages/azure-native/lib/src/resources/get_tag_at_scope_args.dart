// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_tag_at_scope_args_doc}
/// Arguments for getTagAtScope.
/// {@endtemplate}
/// {@macro pulumi_resources_get_tag_at_scope_args_doc}
class GetTagAtScopeArgs {
  /// The resource scope.
  final pulumi.Input<String> scope;

  /// Creates a new [GetTagAtScopeArgs].
  /// [scope] The resource scope.
  GetTagAtScopeArgs({
    required String scope,
  }) :
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
    };
  }

  factory GetTagAtScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetTagAtScopeArgs(
      scope: map['scope'] as String,
    );
  }
}

