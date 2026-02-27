// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_rule_response.dart';

/// `Backend` defines the backend configuration for a service.
class BackendResponseServicemanagementV1 {
  /// A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<BackendRuleResponse> rules;

  BackendResponseServicemanagementV1({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rules'] =
        pulumi.Input.encodeList<BackendRuleResponse, Map<String, dynamic>>(
            rules, (value) => value.toMap());
    return map;
  }

  factory BackendResponseServicemanagementV1.fromMap(Map<String, dynamic> map) {
    return BackendResponseServicemanagementV1(
      rules: pulumi.Input.decodeList<BackendRuleResponse>(
          map['rules'],
          (value) => BackendRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
