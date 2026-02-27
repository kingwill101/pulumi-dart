// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'backend_rule.dart';

/// `Backend` defines the backend configuration for a service.
class Backend4 {
  /// A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<BackendRule>? rules;

  Backend4({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.encodeList<BackendRule, Map<String, dynamic>>(
          rulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Backend4.fromMap(Map<String, dynamic> map) {
    return Backend4(
      rules: map['rules'] == null
          ? null
          : Input.decodeList<BackendRule>(
              map['rules'],
              (value) =>
                  BackendRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
