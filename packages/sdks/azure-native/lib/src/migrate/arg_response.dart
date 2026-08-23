// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ARG query and other details to create workloads within a wave.
class ArgResponse {
  /// The query to create workloads within the wave.
  final pulumi.Input<String> query;

  /// Creates a new [ArgResponse].
  /// [query] The query to create workloads within the wave.
  const ArgResponse({
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
    };
  }

  factory ArgResponse.fromMap(Map<String, dynamic> map) {
    return ArgResponse(
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}
