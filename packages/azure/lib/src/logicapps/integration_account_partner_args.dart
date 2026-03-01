// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_partner_business_identity.dart';

/// {@template pulumi_logicapps_integration_account_partner_integration_account_partner_args_doc}
/// The set of arguments for IntegrationAccountPartner.
/// {@endtemplate}
/// {@macro pulumi_logicapps_integration_account_partner_integration_account_partner_args_doc}
class IntegrationAccountPartnerArgs {
  /// A `business_identity` block as documented below.
  final pulumi.Input<List<IntegrationAccountPartnerBusinessIdentity>> businessIdentities;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created.
  final pulumi.Input<String> integrationAccountName;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Partner.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationAccountPartnerArgs].
  /// [businessIdentities] A `business_identity` block as documented below.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created.
  /// [metadata] A JSON mapping of any Metadata for this Logic App Integration Account Partner.
  /// [name] The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created.
  IntegrationAccountPartnerArgs({
    required List<IntegrationAccountPartnerBusinessIdentity> businessIdentities,
    required String integrationAccountName,
    String? metadata,
    String? name,
    required String resourceGroupName,
  }) :
      businessIdentities = pulumi.Input.asInput<List<IntegrationAccountPartnerBusinessIdentity>>(businessIdentities),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessIdentities': pulumi.Input.mapInputValue<List<IntegrationAccountPartnerBusinessIdentity>, List<Map<String, dynamic>>>(businessIdentities, (value) => pulumi.Input.encodeList<IntegrationAccountPartnerBusinessIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integrationAccountName': integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationAccountPartnerArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountPartnerArgs(
      businessIdentities: pulumi.Input.decodeList<IntegrationAccountPartnerBusinessIdentity>(map['businessIdentities'], (value) => IntegrationAccountPartnerBusinessIdentity.fromMap((value as Map).cast<String, dynamic>())),
      integrationAccountName: map['integrationAccountName'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

