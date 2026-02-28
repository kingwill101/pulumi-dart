// ignore_for_file: unused_element, unnecessary_cast

import 'time_span_response.dart';

/// An image built by the pipeline.
class BuiltImageResponse {
  /// Docker Registry 2.0 digest.
  final String digest;

  /// Name used to push the container image to Google Container Registry, as presented to `docker push`.
  final String name;

  /// Stores timing information for pushing the specified image.
  final TimeSpanResponse pushTiming;

  /// Creates a new [BuiltImageResponse].
  /// [digest] Docker Registry 2.0 digest.
  /// [name] Name used to push the container image to Google Container Registry, as presented to `docker push`.
  /// [pushTiming] Stores timing information for pushing the specified image.
  BuiltImageResponse({
    required this.digest,
    required this.name,
    required this.pushTiming,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['digest'] = digest;
    map['name'] = name;
    map['pushTiming'] = pushTiming.toMap();
    return map;
  }

  factory BuiltImageResponse.fromMap(Map<String, dynamic> map) {
    return BuiltImageResponse(
      digest: map['digest'] as String,
      name: map['name'] as String,
      pushTiming: TimeSpanResponse.fromMap(
          (map['pushTiming'] as Map).cast<String, dynamic>()),
    );
  }
}
