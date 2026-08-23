// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An array of administrator user identities
class DFPInstanceAdministrators {
  /// An array of administrator user identities.
  final pulumi.Input<List<String>>? members;

  /// Creates a new [DFPInstanceAdministrators].
  /// [members] An array of administrator user identities.
  const DFPInstanceAdministrators({
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
    };
  }

  factory DFPInstanceAdministrators.fromMap(Map<String, dynamic> map) {
    return DFPInstanceAdministrators(
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
