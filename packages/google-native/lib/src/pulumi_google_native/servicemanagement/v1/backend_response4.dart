// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'backend_rule_response.dart';

/// `Backend` defines the backend configuration for a service.
class BackendResponse4 {
  /// A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<BackendRuleResponse> rules;

  BackendResponse4({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rules'] = Input.encodeList<BackendRuleResponse, Map<String, dynamic>>(
        rules, (value) => value.toMap());
    return map;
  }

  factory BackendResponse4.fromMap(Map<String, dynamic> map) {
    return BackendResponse4(
      rules: Input.decodeList<BackendRuleResponse>(
          map['rules'],
          (value) => BackendRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
