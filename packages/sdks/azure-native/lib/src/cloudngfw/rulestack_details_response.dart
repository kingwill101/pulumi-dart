// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Associated rulestack details
class RulestackDetailsResponse {
  /// Rulestack location
  final pulumi.Input<String?>? location;
  /// Resource Id
  final pulumi.Input<String?>? resourceId;
  /// Associated rulestack Id
  final pulumi.Input<String?>? rulestackId;

  /// Creates a new [RulestackDetailsResponse].
  /// [location] Rulestack location
  /// [resourceId] Resource Id
  /// [rulestackId] Associated rulestack Id
  const RulestackDetailsResponse({
    this.location,
    this.resourceId,
    this.rulestackId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceId': ?resourceId,
      'rulestackId': ?rulestackId,
    };
  }

  factory RulestackDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RulestackDetailsResponse(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulestackId: (() { final guardedValue = map['rulestackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
