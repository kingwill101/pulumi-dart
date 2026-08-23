// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ScalingConfig
class ScalingConfigResponse {
  /// Property desiredSize
  final pulumi.Input<int>? desiredSize;
  /// Property maxSize
  final pulumi.Input<int>? maxSize;
  /// Property minSize
  final pulumi.Input<int>? minSize;

  /// Creates a new [ScalingConfigResponse].
  /// [desiredSize] Property desiredSize
  /// [maxSize] Property maxSize
  /// [minSize] Property minSize
  const ScalingConfigResponse({
    this.desiredSize,
    this.maxSize,
    this.minSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredSize': ?desiredSize,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
    };
  }

  factory ScalingConfigResponse.fromMap(Map<String, dynamic> map) {
    return ScalingConfigResponse(
      desiredSize: (() { final guardedValue = map['desiredSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
