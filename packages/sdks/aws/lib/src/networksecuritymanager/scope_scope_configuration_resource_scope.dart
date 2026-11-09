// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_exclude.dart';
import 'scope_scope_configuration_resource_scope_include.dart';

class ScopeScopeConfigurationResourceScope {
  /// Resources to exclude. All other resources of the type are in scope. See `scope_configuration.resource_scope.exclude` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeExclude?>? exclude;
  /// Resources to include. See `scope_configuration.resource_scope.include` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeInclude?>? include;
  /// Set to `true` to include all resources of the type.
  final pulumi.Input<bool?>? includeAll;
  /// Resource type. Valid values: `AWS::ApiGateway::Stage`, `AWS::CloudFront::Distribution`, `AWS::EC2::EIP`, `AWS::ElasticLoadBalancing::LoadBalancer`, `AWS::ElasticLoadBalancingV2::LoadBalancer::application`.
  final pulumi.Input<String> resourceType;

  /// Creates a new [ScopeScopeConfigurationResourceScope].
  /// [exclude] Resources to exclude. All other resources of the type are in scope. See `scope_configuration.resource_scope.exclude` Block below.
  /// [include] Resources to include. See `scope_configuration.resource_scope.include` Block below.
  /// [includeAll] Set to `true` to include all resources of the type.
  /// [resourceType] Resource type. Valid values: `AWS::ApiGateway::Stage`, `AWS::CloudFront::Distribution`, `AWS::EC2::EIP`, `AWS::ElasticLoadBalancing::LoadBalancer`, `AWS::ElasticLoadBalancingV2::LoadBalancer::application`.
  const ScopeScopeConfigurationResourceScope({
    this.exclude,
    this.include,
    this.includeAll,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeExclude, Map<String, dynamic>>(exclude, (value) => value.toMap()),
      'include': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeInclude, Map<String, dynamic>>(include, (value) => value.toMap()),
      'includeAll': ?includeAll,
      'resourceType': resourceType,
    };
  }

  factory ScopeScopeConfigurationResourceScope.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScope(
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeExclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeInclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeAll: (() { final guardedValue = map['includeAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
