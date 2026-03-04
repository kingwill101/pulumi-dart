// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_sku.dart';
import 'resource_reference.dart';

/// {@template pulumi_logic_integration_account_args_doc}
/// The set of arguments for IntegrationAccount.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_args_doc}
class IntegrationAccountArgs {
  /// The integration account name.
  final pulumi.Input<String>? integrationAccountName;

  /// The integration service environment.
  final pulumi.Input<ResourceReference>? integrationServiceEnvironment;

  /// The resource location.
  final pulumi.Input<String>? location;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// The sku.
  final pulumi.Input<IntegrationAccountSku>? sku;

  /// The workflow state.
  final pulumi.Input<String>? state;

  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountArgs].
  /// [integrationAccountName] The integration account name.
  /// [integrationServiceEnvironment] The integration service environment.
  /// [location] The resource location.
  /// [resourceGroupName] The resource group name.
  /// [sku] The sku.
  /// [state] The workflow state.
  /// [tags] The resource tags.
  IntegrationAccountArgs({
    this.integrationAccountName,
    this.integrationServiceEnvironment,
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': ?integrationAccountName,
      'integrationServiceEnvironment':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceReference,
            Map<String, dynamic>
          >(integrationServiceEnvironment, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationAccountSku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountArgs(
      integrationAccountName: (() {
        final guardedValue = map['integrationAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      integrationServiceEnvironment: (() {
        final guardedValue = map['integrationServiceEnvironment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationAccountSku.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
