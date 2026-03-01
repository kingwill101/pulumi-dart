// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siteverification_owner_owner_args_doc}
/// The set of arguments for Owner.
/// {@endtemplate}
/// {@macro pulumi_siteverification_owner_owner_args_doc}
class OwnerArgs {
  /// The email of the user to be added as an owner.
  ///
  /// - - -
  final pulumi.Input<String> email;
  /// The id of of the web resource to which the owner will be added, in the form `webResource/<resource_id>`,
  /// such as `webResource/https://www.example.com/`
  final pulumi.Input<String> webResourceId;

  /// Creates a new [OwnerArgs].
  /// [email] The email of the user to be added as an owner.
  /// [webResourceId] The id of of the web resource to which the owner will be added, in the form `webResource/<resource_id>`,
  OwnerArgs({
    required String email,
    required String webResourceId,
  }) :
      email = pulumi.Input.asInput<String>(email),
      webResourceId = pulumi.Input.asInput<String>(webResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'webResourceId': webResourceId,
    };
  }

  factory OwnerArgs.fromMap(Map<String, dynamic> map) {
    return OwnerArgs(
      email: map['email'] as String,
      webResourceId: map['webResourceId'] as String,
    );
  }
}

