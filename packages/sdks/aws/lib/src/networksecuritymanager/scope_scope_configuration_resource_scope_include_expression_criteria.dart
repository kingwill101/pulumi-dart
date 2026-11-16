// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_include_expression_criteria_alb_config.dart';

class ScopeScopeConfigurationResourceScopeIncludeExpressionCriteria {
  /// Application Load Balancer properties to match. See `albConfig` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeIncludeExpressionCriteriaAlbConfig?>? albConfig;
  /// Map of tags that a resource must have. An empty map matches every resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ScopeScopeConfigurationResourceScopeIncludeExpressionCriteria].
  /// [albConfig] Application Load Balancer properties to match. See `albConfig` Block below.
  /// [tags] Map of tags that a resource must have. An empty map matches every resource.
  const ScopeScopeConfigurationResourceScopeIncludeExpressionCriteria({
    this.albConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albConfig': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeIncludeExpressionCriteriaAlbConfig, Map<String, dynamic>>(albConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ScopeScopeConfigurationResourceScopeIncludeExpressionCriteria.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeIncludeExpressionCriteria(
      albConfig: (() { final guardedValue = map['albConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeIncludeExpressionCriteriaAlbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
