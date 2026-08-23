// ignore_for_file: unused_element, unnecessary_cast

import 'agreement_content_response.dart';
import 'business_identity_response.dart';

/// Result data returned by getIntegrationAccountAgreement.
class GetIntegrationAccountAgreementResult {
  /// The agreement type.
  final String agreementType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The changed time.
  final String changedTime;
  /// The agreement content.
  final AgreementContentResponse content;
  /// The created time.
  final String createdTime;
  /// The business identity of the guest partner.
  final BusinessIdentityResponse guestIdentity;
  /// The integration account partner that is set as guest partner for this agreement.
  final String guestPartner;
  /// The business identity of the host partner.
  final BusinessIdentityResponse hostIdentity;
  /// The integration account partner that is set as host partner for this agreement.
  final String hostPartner;
  /// The resource id.
  final String id;
  /// The resource location.
  final String? location;
  /// The metadata.
  final dynamic metadata;
  /// Gets the resource name.
  final String name;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

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
    required this.agreementType,
    required this.azureApiVersion,
    required this.changedTime,
    required this.content,
    required this.createdTime,
    required this.guestIdentity,
    required this.guestPartner,
    required this.hostIdentity,
    required this.hostPartner,
    required this.id,
    this.location,
    this.metadata,
    required this.name,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementType': agreementType,
      'azureApiVersion': azureApiVersion,
      'changedTime': changedTime,
      'content': content.toMap(),
      'createdTime': createdTime,
      'guestIdentity': guestIdentity.toMap(),
      'guestPartner': guestPartner,
      'hostIdentity': hostIdentity.toMap(),
      'hostPartner': hostPartner,
      'id': id,
      'location': ?location,
      'metadata': ?metadata,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationAccountAgreementResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountAgreementResult(
      agreementType: map['agreementType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      changedTime: map['changedTime'] as String,
      content: AgreementContentResponse.fromMap((map['content']! as Map).cast<String, dynamic>()),
      createdTime: map['createdTime'] as String,
      guestIdentity: BusinessIdentityResponse.fromMap((map['guestIdentity']! as Map).cast<String, dynamic>()),
      guestPartner: map['guestPartner'] as String,
      hostIdentity: BusinessIdentityResponse.fromMap((map['hostIdentity']! as Map).cast<String, dynamic>()),
      hostPartner: map['hostPartner'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: map['name'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
