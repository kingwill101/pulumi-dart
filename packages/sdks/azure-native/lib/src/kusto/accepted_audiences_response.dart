// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an accepted audience trusted by the cluster.
class AcceptedAudiencesResponse {
  /// GUID or valid URL representing an accepted audience.
  final pulumi.Input<String>? value;

  /// Creates a new [AcceptedAudiencesResponse].
  /// [value] GUID or valid URL representing an accepted audience.
  const AcceptedAudiencesResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AcceptedAudiencesResponse.fromMap(Map<String, dynamic> map) {
    return AcceptedAudiencesResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

