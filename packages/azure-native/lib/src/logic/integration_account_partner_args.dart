// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_content.dart';

/// {@template pulumi_logic_integration_account_partner_args_doc}
/// The set of arguments for IntegrationAccountPartner.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_partner_args_doc}
class IntegrationAccountPartnerArgs {
  /// The partner content.
  final pulumi.Input<PartnerContent> content;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The integration account partner name.
  final pulumi.Input<String>? partnerName;
  /// The partner type.
  final pulumi.Input<String> partnerType;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountPartnerArgs].
  /// [content] The partner content.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [partnerName] The integration account partner name.
  /// [partnerType] The partner type.
  /// [resourceGroupName] The resource group name.
  /// [tags] The resource tags.
  IntegrationAccountPartnerArgs({
    required PartnerContent content,
    required String integrationAccountName,
    String? location,
    dynamic metadata,
    String? partnerName,
    required String partnerType,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      content = pulumi.Input.asInput<PartnerContent>(content),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      partnerName = pulumi.Input.asOptionalInput<String>(partnerName),
      partnerType = pulumi.Input.asInput<String>(partnerType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': pulumi.Input.mapInputValue<PartnerContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'integrationAccountName': integrationAccountName,
      'location': ?location,
      'metadata': ?metadata,
      'partnerName': ?partnerName,
      'partnerType': partnerType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountPartnerArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountPartnerArgs(
      content: PartnerContent.fromMap((map['content'] as Map).cast<String, dynamic>()),
      integrationAccountName: map['integrationAccountName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      partnerName: map['partnerName'] == null ? null : map['partnerName'] as String,
      partnerType: map['partnerType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

