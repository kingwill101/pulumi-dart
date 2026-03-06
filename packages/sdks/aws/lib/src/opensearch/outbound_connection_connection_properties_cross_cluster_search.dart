// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OutboundConnectionConnectionPropertiesCrossClusterSearch {
  /// Skips unavailable clusters and can only be used for cross-cluster searches. Accepted values are `ENABLED` or `DISABLED`.
  final pulumi.Input<String>? skipUnavailable;

  /// Creates a new [OutboundConnectionConnectionPropertiesCrossClusterSearch].
  /// [skipUnavailable] Skips unavailable clusters and can only be used for cross-cluster searches. Accepted values are `ENABLED` or `DISABLED`.
  const OutboundConnectionConnectionPropertiesCrossClusterSearch({
    this.skipUnavailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipUnavailable': ?skipUnavailable,
    };
  }

  factory OutboundConnectionConnectionPropertiesCrossClusterSearch.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionConnectionPropertiesCrossClusterSearch(
      skipUnavailable: (() { final guardedValue = map['skipUnavailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

