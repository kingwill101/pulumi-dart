// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An array of administrator user identities.
class ServerAdministrators {
  /// An array of administrator user identities.
  final pulumi.Input<List<String>>? members;

  /// Creates a new [ServerAdministrators].
  /// [members] An array of administrator user identities.
  ServerAdministrators({
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
    };
  }

  factory ServerAdministrators.fromMap(Map<String, dynamic> map) {
    return ServerAdministrators(
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
    );
  }
}

