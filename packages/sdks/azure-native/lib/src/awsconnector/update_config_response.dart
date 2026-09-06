// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of UpdateConfig
class UpdateConfigResponse {
  /// The maximum number of nodes unavailable at once during a version update. Nodes will be updated in parallel. This value or maxUnavailablePercentage is required to have a value.The maximum number is 100.
  final pulumi.Input<int?>? maxUnavailable;
  /// The maximum percentage of nodes unavailable during a version update. This percentage of nodes will be updated in parallel, up to 100 nodes at once. This value or maxUnavailable is required to have a value.
  final pulumi.Input<int?>? maxUnavailablePercentage;

  /// Creates a new [UpdateConfigResponse].
  /// [maxUnavailable] The maximum number of nodes unavailable at once during a version update. Nodes will be updated in parallel. This value or maxUnavailablePercentage is required to have a value.The maximum number is 100.
  /// [maxUnavailablePercentage] The maximum percentage of nodes unavailable during a version update. This percentage of nodes will be updated in parallel, up to 100 nodes at once. This value or maxUnavailable is required to have a value.
  const UpdateConfigResponse({
    this.maxUnavailable,
    this.maxUnavailablePercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnavailable': ?maxUnavailable,
      'maxUnavailablePercentage': ?maxUnavailablePercentage,
    };
  }

  factory UpdateConfigResponse.fromMap(Map<String, dynamic> map) {
    return UpdateConfigResponse(
      maxUnavailable: (() { final guardedValue = map['maxUnavailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxUnavailablePercentage: (() { final guardedValue = map['maxUnavailablePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
