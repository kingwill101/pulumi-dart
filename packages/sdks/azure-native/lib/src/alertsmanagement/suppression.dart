// ignore_for_file: unused_element, unnecessary_cast

import 'conditions.dart';
import 'scope.dart';
import 'suppression_config.dart';

/// Action rule with suppression configuration
class Suppression {
  /// conditions on which alerts will be filtered
  final Conditions? conditions;
  /// Description of action rule
  final String? description;
  /// scope on which action rule will apply
  final Scope? scope;
  /// Indicates if the given action rule is enabled or disabled
  final String? status;
  /// suppression configuration for the action rule
  final SuppressionConfig suppressionConfig;
  /// Indicates type of action rule
  /// Expected value is 'Suppression'.
  final String type;

  /// Creates a new [Suppression].
  /// [conditions] conditions on which alerts will be filtered
  /// [description] Description of action rule
  /// [scope] scope on which action rule will apply
  /// [status] Indicates if the given action rule is enabled or disabled
  /// [suppressionConfig] suppression configuration for the action rule
  /// [type] Indicates type of action rule
  Suppression({
    this.conditions,
    this.description,
    this.scope,
    this.status,
    required this.suppressionConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : conditions!.toMap(),
      'description': ?description,
      'scope': ?scope == null ? null : scope!.toMap(),
      'status': ?status,
      'suppressionConfig': suppressionConfig.toMap(),
      'type': type,
    };
  }

  factory Suppression.fromMap(Map<String, dynamic> map) {
    return Suppression(
      conditions: map['conditions'] == null ? null : Conditions.fromMap((map['conditions'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      scope: map['scope'] == null ? null : Scope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      suppressionConfig: SuppressionConfig.fromMap((map['suppressionConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

