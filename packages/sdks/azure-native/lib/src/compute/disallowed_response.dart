// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the disallowed disk types.
class DisallowedResponse {
  /// A list of disk types.
  final pulumi.Input<List<String>>? diskTypes;

  /// Creates a new [DisallowedResponse].
  /// [diskTypes] A list of disk types.
  DisallowedResponse({
    this.diskTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskTypes': ?diskTypes,
    };
  }

  factory DisallowedResponse.fromMap(Map<String, dynamic> map) {
    return DisallowedResponse(
      diskTypes: (() { final guardedValue = map['diskTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

