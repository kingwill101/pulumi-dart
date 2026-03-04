// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agreement_content.dart';
import 'agreement_type.dart';
import 'business_identity.dart';

/// {@template pulumi_logic_integration_account_agreement_args_doc}
/// The set of arguments for IntegrationAccountAgreement.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_agreement_args_doc}
class IntegrationAccountAgreementArgs {
  /// The integration account agreement name.
  final pulumi.Input<String>? agreementName;

  /// The agreement type.
  final pulumi.Input<AgreementType> agreementType;

  /// The agreement content.
  final pulumi.Input<AgreementContent> content;

  /// The business identity of the guest partner.
  final pulumi.Input<BusinessIdentity> guestIdentity;

  /// The integration account partner that is set as guest partner for this agreement.
  final pulumi.Input<String> guestPartner;

  /// The business identity of the host partner.
  final pulumi.Input<BusinessIdentity> hostIdentity;

  /// The integration account partner that is set as host partner for this agreement.
  final pulumi.Input<String> hostPartner;

  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;

  /// The resource location.
  final pulumi.Input<String>? location;

  /// The metadata.
  final pulumi.Input<dynamic>? metadata;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountAgreementArgs].
  /// [agreementName] The integration account agreement name.
  /// [agreementType] The agreement type.
  /// [content] The agreement content.
  /// [guestIdentity] The business identity of the guest partner.
  /// [guestPartner] The integration account partner that is set as guest partner for this agreement.
  /// [hostIdentity] The business identity of the host partner.
  /// [hostPartner] The integration account partner that is set as host partner for this agreement.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [resourceGroupName] The resource group name.
  /// [tags] The resource tags.
  IntegrationAccountAgreementArgs({
    this.agreementName,
    required this.agreementType,
    required this.content,
    required this.guestIdentity,
    required this.guestPartner,
    required this.hostIdentity,
    required this.hostPartner,
    required this.integrationAccountName,
    this.location,
    this.metadata,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementName': ?agreementName,
      'agreementType': pulumi.Input.mapInputValue<AgreementType, String>(
        agreementType,
        (value) => value.wireValue,
      ),
      'content':
          pulumi.Input.mapInputValue<AgreementContent, Map<String, dynamic>>(
            content,
            (value) => value.toMap(),
          ),
      'guestIdentity':
          pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(
            guestIdentity,
            (value) => value.toMap(),
          ),
      'guestPartner': guestPartner,
      'hostIdentity':
          pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(
            hostIdentity,
            (value) => value.toMap(),
          ),
      'hostPartner': hostPartner,
      'integrationAccountName': integrationAccountName,
      'location': ?location,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountAgreementArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAgreementArgs(
      agreementName: (() {
        final guardedValue = map['agreementName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      agreementType: pulumi.Input.fromValue(
        AgreementType.fromValue(map['agreementType']! as String),
      ),
      content: pulumi.Input.fromValue(
        AgreementContent.fromMap(
          (map['content']! as Map).cast<String, dynamic>(),
        ),
      ),
      guestIdentity: pulumi.Input.fromValue(
        BusinessIdentity.fromMap(
          (map['guestIdentity']! as Map).cast<String, dynamic>(),
        ),
      ),
      guestPartner: pulumi.Input.fromValue(map['guestPartner'] as String),
      hostIdentity: pulumi.Input.fromValue(
        BusinessIdentity.fromMap(
          (map['hostIdentity']! as Map).cast<String, dynamic>(),
        ),
      ),
      hostPartner: pulumi.Input.fromValue(map['hostPartner'] as String),
      integrationAccountName: pulumi.Input.fromValue(
        map['integrationAccountName'] as String,
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
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
