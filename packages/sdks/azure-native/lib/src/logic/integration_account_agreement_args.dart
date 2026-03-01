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
    pulumi.Output<String>? agreementName,
    required pulumi.Output<AgreementType> agreementType,
    required pulumi.Output<AgreementContent> content,
    required pulumi.Output<BusinessIdentity> guestIdentity,
    required pulumi.Output<String> guestPartner,
    required pulumi.Output<BusinessIdentity> hostIdentity,
    required pulumi.Output<String> hostPartner,
    required pulumi.Output<String> integrationAccountName,
    pulumi.Output<String>? location,
    pulumi.Output<dynamic>? metadata,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      agreementName = pulumi.Input.asOptionalInput<String>(agreementName),
      agreementType = pulumi.Input.asInput<AgreementType>(agreementType),
      content = pulumi.Input.asInput<AgreementContent>(content),
      guestIdentity = pulumi.Input.asInput<BusinessIdentity>(guestIdentity),
      guestPartner = pulumi.Input.asInput<String>(guestPartner),
      hostIdentity = pulumi.Input.asInput<BusinessIdentity>(hostIdentity),
      hostPartner = pulumi.Input.asInput<String>(hostPartner),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementName': ?agreementName,
      'agreementType': pulumi.Input.mapInputValue<AgreementType, String>(agreementType, (value) => value.value),
      'content': pulumi.Input.mapInputValue<AgreementContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'guestIdentity': pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(guestIdentity, (value) => value.toMap()),
      'guestPartner': guestPartner,
      'hostIdentity': pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(hostIdentity, (value) => value.toMap()),
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
      agreementName: map['agreementName'] == null ? null : pulumi.Output.create<String>(map['agreementName'] as String),
      agreementType: pulumi.Output.create<AgreementType>(AgreementType.fromValue(map['agreementType'] as String)),
      content: pulumi.Output.create<AgreementContent>(AgreementContent.fromMap((map['content'] as Map).cast<String, dynamic>())),
      guestIdentity: pulumi.Output.create<BusinessIdentity>(BusinessIdentity.fromMap((map['guestIdentity'] as Map).cast<String, dynamic>())),
      guestPartner: pulumi.Output.create<String>(map['guestPartner'] as String),
      hostIdentity: pulumi.Output.create<BusinessIdentity>(BusinessIdentity.fromMap((map['hostIdentity'] as Map).cast<String, dynamic>())),
      hostPartner: pulumi.Output.create<String>(map['hostPartner'] as String),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<dynamic>(map['metadata']),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

