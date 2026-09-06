// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gallery regional sharing status
class RegionalSharingStatusResponse {
  /// Details of gallery regional sharing failure.
  final pulumi.Input<String?>? details;
  /// Region name
  final pulumi.Input<String?>? region;
  /// Gallery sharing state in current region
  final pulumi.Input<String> state;

  /// Creates a new [RegionalSharingStatusResponse].
  /// [details] Details of gallery regional sharing failure.
  /// [region] Region name
  /// [state] Gallery sharing state in current region
  const RegionalSharingStatusResponse({
    this.details,
    this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'region': ?region,
      'state': state,
    };
  }

  factory RegionalSharingStatusResponse.fromMap(Map<String, dynamic> map) {
    return RegionalSharingStatusResponse(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
