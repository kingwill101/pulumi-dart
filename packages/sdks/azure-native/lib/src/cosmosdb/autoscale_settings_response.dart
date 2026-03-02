// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettingsResponse {
  /// Represents maximum throughput, the resource can scale up to.
  final pulumi.Input<int>? maxThroughput;

  /// Creates a new [AutoscaleSettingsResponse].
  /// [maxThroughput] Represents maximum throughput, the resource can scale up to.
  AutoscaleSettingsResponse({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory AutoscaleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingsResponse(
      maxThroughput: map['maxThroughput'] == null ? null : (map['maxThroughput'] as int).input(),
    );
  }
}

