// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_private_link_association_args_doc}
/// Arguments for getPrivateLinkAssociation.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_private_link_association_args_doc}
class GetPrivateLinkAssociationArgs {
  /// The management group ID.
  final pulumi.Input<String> groupId;
  /// The ID of the PLA
  final pulumi.Input<String> plaId;

  /// Creates a new [GetPrivateLinkAssociationArgs].
  /// [groupId] The management group ID.
  /// [plaId] The ID of the PLA
  GetPrivateLinkAssociationArgs({
    required this.groupId,
    required this.plaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'plaId': plaId,
    };
  }

  factory GetPrivateLinkAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkAssociationArgs(
      groupId: (map['groupId'] as String).input(),
      plaId: (map['plaId'] as String).input(),
    );
  }
}

