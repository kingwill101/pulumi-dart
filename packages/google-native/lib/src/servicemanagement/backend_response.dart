// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_rule_response.dart';

/// `Backend` defines the backend configuration for a service.
class BackendResponse {
  /// A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<BackendRuleResponse> rules;

  /// Creates a new [BackendResponse].
  /// [rules] A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  BackendResponse({required this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules':
          pulumi.Input.encodeList<BackendRuleResponse, Map<String, dynamic>>(
            rules,
            (value) => value.toMap(),
          ),
    };
  }

  factory BackendResponse.fromMap(Map<String, dynamic> map) {
    return BackendResponse(
      rules: pulumi.Input.decodeList<BackendRuleResponse>(
        map['rules'],
        (value) =>
            BackendRuleResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
