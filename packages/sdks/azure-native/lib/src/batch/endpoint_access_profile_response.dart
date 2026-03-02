// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_response.dart';

/// Network access profile for Batch endpoint.
class EndpointAccessProfileResponse {
  /// Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled.
  final pulumi.Input<String> defaultAction;
  /// Array of IP ranges to filter client IP address.
  final pulumi.Input<List<IPRuleResponse>>? ipRules;

  /// Creates a new [EndpointAccessProfileResponse].
  /// [defaultAction] Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled.
  /// [ipRules] Array of IP ranges to filter client IP address.
  EndpointAccessProfileResponse({
    required this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndpointAccessProfileResponse.fromMap(Map<String, dynamic> map) {
    return EndpointAccessProfileResponse(
      defaultAction: (map['defaultAction'] as String).input(),
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<IPRuleResponse>(map['ipRules']!, (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

