// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_exclude_expression_not_alb_config.dart';

class ScopeScopeConfigurationResourceScopeExcludeExpressionNot {
  /// Application Load Balancer properties to match. See `albConfig` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeExcludeExpressionNotAlbConfig?>? albConfig;
  /// Map of tags that a resource must have. An empty map matches every resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ScopeScopeConfigurationResourceScopeExcludeExpressionNot].
  /// [albConfig] Application Load Balancer properties to match. See `albConfig` Block below.
  /// [tags] Map of tags that a resource must have. An empty map matches every resource.
  const ScopeScopeConfigurationResourceScopeExcludeExpressionNot({
    this.albConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albConfig': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeExcludeExpressionNotAlbConfig, Map<String, dynamic>>(albConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ScopeScopeConfigurationResourceScopeExcludeExpressionNot.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeExcludeExpressionNot(
      albConfig: (() { final guardedValue = map['albConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeExcludeExpressionNotAlbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
