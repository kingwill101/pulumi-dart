// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_account_filter.dart';
import 'scope_scope_configuration_resource_scope.dart';

class ScopeScopeConfiguration {
  /// Accounts that are in scope. Organization administrators must set it, and single-account administrators must omit it. Adding or removing the block forces a new resource. See `scope_configuration.account_filter` Block below.
  final pulumi.Input<ScopeScopeConfigurationAccountFilter?>? accountFilter;
  /// Resources that are in scope, one block per resource type. A scope selects either the global resource type `AWS::CloudFront::Distribution` or regional resource types, not both. Changing between them forces a new resource. See `scope_configuration.resource_scope` Block below.
  final pulumi.Input<List<ScopeScopeConfigurationResourceScope>> resourceScopes;

  /// Creates a new [ScopeScopeConfiguration].
  /// [accountFilter] Accounts that are in scope. Organization administrators must set it, and single-account administrators must omit it. Adding or removing the block forces a new resource. See `scope_configuration.account_filter` Block below.
  /// [resourceScopes] Resources that are in scope, one block per resource type. A scope selects either the global resource type `AWS::CloudFront::Distribution` or regional resource types, not both. Changing between them forces a new resource. See `scope_configuration.resource_scope` Block below.
  const ScopeScopeConfiguration({
    this.accountFilter,
    required this.resourceScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountFilter': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationAccountFilter, Map<String, dynamic>>(accountFilter, (value) => value.toMap()),
      'resourceScopes': pulumi.Input.mapInputValue<List<ScopeScopeConfigurationResourceScope>, List<Map<String, dynamic>>>(resourceScopes, (value) => pulumi.Input.encodeList<ScopeScopeConfigurationResourceScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScopeScopeConfiguration.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfiguration(
      accountFilter: (() { final guardedValue = map['accountFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationAccountFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceScopes: pulumi.Input.fromValue(pulumi.Input.decodeList<ScopeScopeConfigurationResourceScope>(map['resourceScopes']!, (value) => ScopeScopeConfigurationResourceScope.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
