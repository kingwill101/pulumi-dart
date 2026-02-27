// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Owner.
class OwnerArgs {
  /// The email of the user to be added as an owner.
  ///
  /// - - -
  final pulumi.Input<String> email;

  /// The id of of the web resource to which the owner will be added, in the form `webResource/<resource_id>`,
  /// such as `webResource/https://www.example.com/`
  final pulumi.Input<String> webResourceId;

  OwnerArgs({
    required this.email,
    required this.webResourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['webResourceId'] = webResourceId;
    return map;
  }

  factory OwnerArgs.fromMap(Map<String, dynamic> map) {
    return OwnerArgs(
      email: pulumi.Input.asInput<String>(map['email']),
      webResourceId: pulumi.Input.asInput<String>(map['webResourceId']),
    );
  }
}
