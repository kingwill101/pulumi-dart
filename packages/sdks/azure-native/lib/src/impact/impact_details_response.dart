// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// details of of the impact for which insight has been generated.
class ImpactDetailsResponse {
  /// Time at which impact was ended according to reported impact.
  final pulumi.Input<String>? endTime;

  /// Azure Id of the impact.
  final pulumi.Input<String> impactId;

  /// List of impacted Azure resources.
  final pulumi.Input<String> impactedResourceId;

  /// Time at which impact was started according to reported impact.
  final pulumi.Input<String> startTime;

  /// Creates a new [ImpactDetailsResponse].
  /// [endTime] Time at which impact was ended according to reported impact.
  /// [impactId] Azure Id of the impact.
  /// [impactedResourceId] List of impacted Azure resources.
  /// [startTime] Time at which impact was started according to reported impact.
  ImpactDetailsResponse({
    this.endTime,
    required this.impactId,
    required this.impactedResourceId,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'impactId': impactId,
      'impactedResourceId': impactedResourceId,
      'startTime': startTime,
    };
  }

  factory ImpactDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ImpactDetailsResponse(
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      impactId: pulumi.Input.fromValue(map['impactId'] as String),
      impactedResourceId: pulumi.Input.fromValue(
        map['impactedResourceId'] as String,
      ),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
