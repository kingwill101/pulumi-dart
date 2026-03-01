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
    String? integrationAccountName,
    ResourceReference? integrationServiceEnvironment,
    String? location,
    required String resourceGroupName,
    IntegrationAccountSku? sku,
    String? state,
    Map<String, String>? tags,
  }) :
      integrationAccountName = pulumi.Input.asOptionalInput<String>(integrationAccountName),
      integrationServiceEnvironment = pulumi.Input.asOptionalInput<ResourceReference>(integrationServiceEnvironment),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<IntegrationAccountSku>(sku),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': ?integrationAccountName,
      'integrationServiceEnvironment': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(integrationServiceEnvironment, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<IntegrationAccountSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountArgs(
      integrationAccountName: map['integrationAccountName'] == null ? null : map['integrationAccountName'] as String,
      integrationServiceEnvironment: map['integrationServiceEnvironment'] == null ? null : ResourceReference.fromMap((map['integrationServiceEnvironment'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : IntegrationAccountSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

