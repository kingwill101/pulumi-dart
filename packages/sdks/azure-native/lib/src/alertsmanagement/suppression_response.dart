// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions_response.dart';
import 'scope_response.dart';
import 'suppression_config_response.dart';

/// Action rule with suppression configuration
class SuppressionResponse {
  /// conditions on which alerts will be filtered
  final pulumi.Input<ConditionsResponse>? conditions;
  /// Creation time of action rule. Date-Time in ISO-8601 format.
  final pulumi.Input<String> createdAt;
  /// Created by user name.
  final pulumi.Input<String> createdBy;
  /// Description of action rule
  final pulumi.Input<String>? description;
  /// Last updated time of action rule. Date-Time in ISO-8601 format.
  final pulumi.Input<String> lastModifiedAt;
  /// Last modified by user name.
  final pulumi.Input<String> lastModifiedBy;
  /// scope on which action rule will apply
  final pulumi.Input<ScopeResponse>? scope;
  /// Indicates if the given action rule is enabled or disabled
  final pulumi.Input<String>? status;
  /// suppression configuration for the action rule
  final pulumi.Input<SuppressionConfigResponse> suppressionConfig;
  /// Indicates type of action rule
  /// Expected value is 'Suppression'.
  final pulumi.Input<String> type;

  /// Creates a new [SuppressionResponse].
  /// [conditions] conditions on which alerts will be filtered
  /// [createdAt] Creation time of action rule. Date-Time in ISO-8601 format.
  /// [createdBy] Created by user name.
  /// [description] Description of action rule
  /// [lastModifiedAt] Last updated time of action rule. Date-Time in ISO-8601 format.
  /// [lastModifiedBy] Last modified by user name.
  /// [scope] scope on which action rule will apply
  /// [status] Indicates if the given action rule is enabled or disabled
  /// [suppressionConfig] suppression configuration for the action rule
  /// [type] Indicates type of action rule
  SuppressionResponse({
    this.conditions,
    required this.createdAt,
    required this.createdBy,
    this.description,
    required this.lastModifiedAt,
    required this.lastModifiedBy,
    this.scope,
    this.status,
    required this.suppressionConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<ConditionsResponse, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'createdAt': createdAt,
      'createdBy': createdBy,
      'description': ?description,
      'lastModifiedAt': lastModifiedAt,
      'lastModifiedBy': lastModifiedBy,
      'scope': ?pulumi.Input.mapOptionalInputValue<ScopeResponse, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'status': ?status,
      'suppressionConfig': pulumi.Input.mapInputValue<SuppressionConfigResponse, Map<String, dynamic>>(suppressionConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory SuppressionResponse.fromMap(Map<String, dynamic> map) {
    return SuppressionResponse(
      conditions: map['conditions'] == null ? null : (ConditionsResponse.fromMap((map['conditions']! as Map).cast<String, dynamic>())).input(),
      createdAt: (map['createdAt'] as String).input(),
      createdBy: (map['createdBy'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      lastModifiedAt: (map['lastModifiedAt'] as String).input(),
      lastModifiedBy: (map['lastModifiedBy'] as String).input(),
      scope: map['scope'] == null ? null : (ScopeResponse.fromMap((map['scope']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      suppressionConfig: (SuppressionConfigResponse.fromMap((map['suppressionConfig'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

