// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gallery regional sharing status
class RegionalSharingStatusResponse {
  /// Details of gallery regional sharing failure.
  final pulumi.Input<String>? details;
  /// Region name
  final pulumi.Input<String>? region;
  /// Gallery sharing state in current region
  final pulumi.Input<String> state;

  /// Creates a new [RegionalSharingStatusResponse].
  /// [details] Details of gallery regional sharing failure.
  /// [region] Region name
  /// [state] Gallery sharing state in current region
  RegionalSharingStatusResponse({
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
      details: map['details'] == null ? null : (map['details']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

