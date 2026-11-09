// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_account_filter_exclude.dart';
import 'scope_scope_configuration_account_filter_include.dart';

class ScopeScopeConfigurationAccountFilter {
  /// Resources to exclude. All other resources of the type are in scope. See `scope_configuration.resource_scope.exclude` Block below.
  final pulumi.Input<ScopeScopeConfigurationAccountFilterExclude?>? exclude;
  /// Resources to include. See `scope_configuration.resource_scope.include` Block below.
  final pulumi.Input<ScopeScopeConfigurationAccountFilterInclude?>? include;
  /// Set to `true` to include all resources of the type.
  final pulumi.Input<bool?>? includeAll;

  /// Creates a new [ScopeScopeConfigurationAccountFilter].
  /// [exclude] Resources to exclude. All other resources of the type are in scope. See `scope_configuration.resource_scope.exclude` Block below.
  /// [include] Resources to include. See `scope_configuration.resource_scope.include` Block below.
  /// [includeAll] Set to `true` to include all resources of the type.
  const ScopeScopeConfigurationAccountFilter({
    this.exclude,
    this.include,
    this.includeAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationAccountFilterExclude, Map<String, dynamic>>(exclude, (value) => value.toMap()),
      'include': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationAccountFilterInclude, Map<String, dynamic>>(include, (value) => value.toMap()),
      'includeAll': ?includeAll,
    };
  }

  factory ScopeScopeConfigurationAccountFilter.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationAccountFilter(
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationAccountFilterExclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationAccountFilterInclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeAll: (() { final guardedValue = map['includeAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
