// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'investigation_scope_response.dart';

/// The parameters used to run the investigation
class RunParametersResponse {
  /// The alerts used to run the investigation
  final List<InvestigationScopeResponse> alerts;
  /// The impact time to investigate (in UTC)
  final String impactTime;
  /// The resources used to run the investigation
  final List<InvestigationScopeResponse> resources;

  /// Creates a new [RunParametersResponse].
  /// [alerts] The alerts used to run the investigation
  /// [impactTime] The impact time to investigate (in UTC)
  /// [resources] The resources used to run the investigation
  RunParametersResponse({
    required this.alerts,
    required this.impactTime,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': pulumi.Input.encodeList<InvestigationScopeResponse, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'impactTime': impactTime,
      'resources': pulumi.Input.encodeList<InvestigationScopeResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory RunParametersResponse.fromMap(Map<String, dynamic> map) {
    return RunParametersResponse(
      alerts: pulumi.Input.decodeList<InvestigationScopeResponse>(map['alerts'], (value) => InvestigationScopeResponse.fromMap((value as Map).cast<String, dynamic>())),
      impactTime: map['impactTime'] as String,
      resources: pulumi.Input.decodeList<InvestigationScopeResponse>(map['resources'], (value) => InvestigationScopeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

