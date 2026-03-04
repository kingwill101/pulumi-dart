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
    required this.content,
    required this.integrationAccountName,
    this.location,
    this.metadata,
    this.partnerName,
    required this.partnerType,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content':
          pulumi.Input.mapInputValue<PartnerContent, Map<String, dynamic>>(
            content,
            (value) => value.toMap(),
          ),
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
      content: pulumi.Input.fromValue(
        PartnerContent.fromMap(
          (map['content']! as Map).cast<String, dynamic>(),
        ),
      ),
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
      partnerName: (() {
        final guardedValue = map['partnerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partnerType: pulumi.Input.fromValue(map['partnerType'] as String),
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
