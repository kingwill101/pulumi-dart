// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the disallowed disk types.
class Disallowed {
  /// A list of disk types.
  final pulumi.Input<List<String>>? diskTypes;

  /// Creates a new [Disallowed].
  /// [diskTypes] A list of disk types.
  Disallowed({
    this.diskTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskTypes': ?diskTypes,
    };
  }

  factory Disallowed.fromMap(Map<String, dynamic> map) {
    return Disallowed(
      diskTypes: map['diskTypes'] == null ? null : ((map['diskTypes'] as List).cast<String>()).input(),
    );
  }
}

