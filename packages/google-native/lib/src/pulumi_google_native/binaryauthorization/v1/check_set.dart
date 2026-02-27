// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'check.dart';
import 'image_allowlist.dart';
import 'scope.dart';

/// A conjunction of policy checks, scoped to a particular namespace or Kubernetes service account. In order for evaluation of a `CheckSet` to return "allowed" for a given image in a given Pod, one of the following conditions must be satisfied: * The image is explicitly exempted by an entry in `image_allowlist`, OR * ALL of the `checks` evaluate to "allowed".
class CheckSet {
  /// Optional. The checks to apply. The ultimate result of evaluating the check set will be "allow" if and only if every check in `checks` evaluates to "allow". If `checks` is empty, the default behavior is "always allow".
  final List<Check>? checks;

  /// Optional. A user-provided name for this `CheckSet`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  final String? displayName;

  /// Optional. Images exempted from this `CheckSet`. If any of the patterns match the image being evaluated, no checks in the `CheckSet` will be evaluated.
  final ImageAllowlist? imageAllowlist;

  /// Optional. The scope to which this `CheckSet` applies. If unset or an empty string (the default), applies to all namespaces and service accounts. See the `Scope` message documentation for details on scoping rules.
  final Scope? scope;

  CheckSet({
    this.checks,
    this.displayName,
    this.imageAllowlist,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checksValue = checks;
    if (checksValue != null) {
      map['checks'] = Input.encodeList<Check, Map<String, dynamic>>(
          checksValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final imageAllowlistValue = imageAllowlist;
    if (imageAllowlistValue != null) {
      map['imageAllowlist'] = imageAllowlistValue.toMap();
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue.toMap();
    }
    return map;
  }

  factory CheckSet.fromMap(Map<String, dynamic> map) {
    return CheckSet(
      checks: map['checks'] == null
          ? null
          : Input.decodeList<Check>(map['checks'],
              (value) => Check.fromMap((value as Map).cast<String, dynamic>())),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      imageAllowlist: map['imageAllowlist'] == null
          ? null
          : ImageAllowlist.fromMap(
              (map['imageAllowlist'] as Map).cast<String, dynamic>()),
      scope: map['scope'] == null
          ? null
          : Scope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
    );
  }
}
