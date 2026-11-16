// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_exclude_expression_criteria_alb_config.dart';

class ScopeScopeConfigurationResourceScopeExcludeExpressionCriteria {
  /// Application Load Balancer properties to match. See `albConfig` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeExcludeExpressionCriteriaAlbConfig?>? albConfig;
  /// Map of tags that a resource must have. An empty map matches every resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ScopeScopeConfigurationResourceScopeExcludeExpressionCriteria].
  /// [albConfig] Application Load Balancer properties to match. See `albConfig` Block below.
  /// [tags] Map of tags that a resource must have. An empty map matches every resource.
  const ScopeScopeConfigurationResourceScopeExcludeExpressionCriteria({
    this.albConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albConfig': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeExcludeExpressionCriteriaAlbConfig, Map<String, dynamic>>(albConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ScopeScopeConfigurationResourceScopeExcludeExpressionCriteria.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeExcludeExpressionCriteria(
      albConfig: (() { final guardedValue = map['albConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeExcludeExpressionCriteriaAlbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
