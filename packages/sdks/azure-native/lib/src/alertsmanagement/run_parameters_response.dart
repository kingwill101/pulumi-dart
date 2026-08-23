// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'investigation_scope_response.dart';

/// The parameters used to run the investigation
class RunParametersResponse {
  /// The alerts used to run the investigation
  final pulumi.Input<List<InvestigationScopeResponse>> alerts;
  /// The impact time to investigate (in UTC)
  final pulumi.Input<String> impactTime;
  /// The resources used to run the investigation
  final pulumi.Input<List<InvestigationScopeResponse>> resources;

  /// Creates a new [RunParametersResponse].
  /// [alerts] The alerts used to run the investigation
  /// [impactTime] The impact time to investigate (in UTC)
  /// [resources] The resources used to run the investigation
  const RunParametersResponse({
    required this.alerts,
    required this.impactTime,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': pulumi.Input.mapInputValue<List<InvestigationScopeResponse>, List<Map<String, dynamic>>>(alerts, (value) => pulumi.Input.encodeList<InvestigationScopeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'impactTime': impactTime,
      'resources': pulumi.Input.mapInputValue<List<InvestigationScopeResponse>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<InvestigationScopeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RunParametersResponse.fromMap(Map<String, dynamic> map) {
    return RunParametersResponse(
      alerts: pulumi.Input.fromValue(pulumi.Input.decodeList<InvestigationScopeResponse>(map['alerts']!, (value) => InvestigationScopeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      impactTime: pulumi.Input.fromValue(map['impactTime'] as String),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<InvestigationScopeResponse>(map['resources']!, (value) => InvestigationScopeResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
