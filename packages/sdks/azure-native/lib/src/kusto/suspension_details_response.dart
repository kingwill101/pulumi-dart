// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
class SuspensionDetailsResponse {
  /// The starting date and time of the suspension state.
  final pulumi.Input<String>? suspensionStartDate;

  /// Creates a new [SuspensionDetailsResponse].
  /// [suspensionStartDate] The starting date and time of the suspension state.
  const SuspensionDetailsResponse({
    this.suspensionStartDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suspensionStartDate': ?suspensionStartDate,
    };
  }

  factory SuspensionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SuspensionDetailsResponse(
      suspensionStartDate: (() { final guardedValue = map['suspensionStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
