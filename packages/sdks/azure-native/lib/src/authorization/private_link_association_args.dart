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
  final pulumi.Input<String?>? plaId;
  /// The properties of the PrivateLinkAssociation.
  final pulumi.Input<PrivateLinkAssociationProperties?>? properties;

  /// Creates a new [PrivateLinkAssociationArgs].
  /// [groupId] The management group ID.
  /// [plaId] The ID of the PLA
  /// [properties] The properties of the PrivateLinkAssociation.
  const PrivateLinkAssociationArgs({
    required this.groupId,
    this.plaId,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'plaId': ?plaId,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateLinkAssociationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory PrivateLinkAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkAssociationArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      plaId: (() { final guardedValue = map['plaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkAssociationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
