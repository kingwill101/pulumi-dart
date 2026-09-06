// ignore_for_file: unused_element, unnecessary_cast

import 'agreement_content_response.dart';
import 'business_identity_response.dart';

/// Result data returned by getIntegrationAccountAgreement.
class GetIntegrationAccountAgreementResult {
  /// The agreement type.
  final String? agreementType;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The changed time.
  final String? changedTime;
  /// The agreement content.
  final AgreementContentResponse? content;
  /// The created time.
  final String? createdTime;
  /// The business identity of the guest partner.
  final BusinessIdentityResponse? guestIdentity;
  /// The integration account partner that is set as guest partner for this agreement.
  final String? guestPartner;
  /// The business identity of the host partner.
  final BusinessIdentityResponse? hostIdentity;
  /// The integration account partner that is set as host partner for this agreement.
  final String? hostPartner;
  /// The resource id.
  final String? id;
  /// The resource location.
  final String? location;
  /// The metadata.
  final dynamic metadata;
  /// Gets the resource name.
  final String? name;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String? type;

  /// Creates a new [GetIntegrationAccountAgreementResult].
  /// [agreementType] The agreement type.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changedTime] The changed time.
  /// [content] The agreement content.
  /// [createdTime] The created time.
  /// [guestIdentity] The business identity of the guest partner.
  /// [guestPartner] The integration account partner that is set as guest partner for this agreement.
  /// [hostIdentity] The business identity of the host partner.
  /// [hostPartner] The integration account partner that is set as host partner for this agreement.
  /// [id] The resource id.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [name] Gets the resource name.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  const GetIntegrationAccountAgreementResult({
    this.agreementType,
    this.azureApiVersion,
    this.changedTime,
    this.content,
    this.createdTime,
    this.guestIdentity,
    this.guestPartner,
    this.hostIdentity,
    this.hostPartner,
    this.id,
    this.location,
    this.metadata,
    this.name,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementType': ?agreementType,
      'azureApiVersion': ?azureApiVersion,
      'changedTime': ?changedTime,
      'content': ?content?.toMap(),
      'createdTime': ?createdTime,
      'guestIdentity': ?guestIdentity?.toMap(),
      'guestPartner': ?guestPartner,
      'hostIdentity': ?hostIdentity?.toMap(),
      'hostPartner': ?hostPartner,
      'id': ?id,
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetIntegrationAccountAgreementResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountAgreementResult(
      agreementType: (() { final guardedValue = map['agreementType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return AgreementContentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      guestIdentity: (() { final guardedValue = map['guestIdentity']; if (guardedValue == null) return null; return BusinessIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      guestPartner: (() { final guardedValue = map['guestPartner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostIdentity: (() { final guardedValue = map['hostIdentity']; if (guardedValue == null) return null; return BusinessIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostPartner: (() { final guardedValue = map['hostPartner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
