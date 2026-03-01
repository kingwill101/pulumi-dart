// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_association_properties.dart';

/// {@template pulumi_authorization_private_link_association_args_doc}
/// The set of arguments for PrivateLinkAssociation.
/// {@endtemplate}
/// {@macro pulumi_authorization_private_link_association_args_doc}
class PrivateLinkAssociationArgs {
  /// The management group ID.
  final pulumi.Input<String> groupId;
  /// The ID of the PLA
  final pulumi.Input<String>? plaId;
  /// The properties of the PrivateLinkAssociation.
  final pulumi.Input<PrivateLinkAssociationProperties>? properties;

  /// Creates a new [PrivateLinkAssociationArgs].
  /// [groupId] The management group ID.
  /// [plaId] The ID of the PLA
  /// [properties] The properties of the PrivateLinkAssociation.
  PrivateLinkAssociationArgs({
    required pulumi.Output<String> groupId,
    pulumi.Output<String>? plaId,
    pulumi.Output<PrivateLinkAssociationProperties>? properties,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      plaId = pulumi.Input.asOptionalInput<String>(plaId),
      properties = pulumi.Input.asOptionalInput<PrivateLinkAssociationProperties>(properties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'plaId': ?plaId,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateLinkAssociationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory PrivateLinkAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkAssociationArgs(
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      plaId: map['plaId'] == null ? null : pulumi.Output.create<String>(map['plaId'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<PrivateLinkAssociationProperties>(PrivateLinkAssociationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
    );
  }
}

