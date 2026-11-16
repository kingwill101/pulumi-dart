// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_exclude_expression_or_alb_config.dart';

class ScopeScopeConfigurationResourceScopeExcludeExpressionOr {
  /// Application Load Balancer properties to match. See `albConfig` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeExcludeExpressionOrAlbConfig?>? albConfig;
  /// Map of tags that a resource must have. An empty map matches every resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ScopeScopeConfigurationResourceScopeExcludeExpressionOr].
  /// [albConfig] Application Load Balancer properties to match. See `albConfig` Block below.
  /// [tags] Map of tags that a resource must have. An empty map matches every resource.
  const ScopeScopeConfigurationResourceScopeExcludeExpressionOr({
    this.albConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albConfig': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeExcludeExpressionOrAlbConfig, Map<String, dynamic>>(albConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ScopeScopeConfigurationResourceScopeExcludeExpressionOr.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeExcludeExpressionOr(
      albConfig: (() { final guardedValue = map['albConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeExcludeExpressionOrAlbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
