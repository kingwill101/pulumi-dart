// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customproviders_get_association_args_doc}
/// Arguments for getAssociation.
/// {@endtemplate}
/// {@macro pulumi_customproviders_get_association_args_doc}
class GetAssociationArgs {
  /// The name of the association.
  final pulumi.Input<String> associationName;
  /// The scope of the association.
  final pulumi.Input<String> scope;

  /// Creates a new [GetAssociationArgs].
  /// [associationName] The name of the association.
  /// [scope] The scope of the association.
  const GetAssociationArgs({
    required this.associationName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': associationName,
      'scope': scope,
    };
  }

  factory GetAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetAssociationArgs(
      associationName: pulumi.Input.fromValue(map['associationName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

