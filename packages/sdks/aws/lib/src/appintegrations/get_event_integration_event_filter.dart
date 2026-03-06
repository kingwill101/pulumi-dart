// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEventIntegrationEventFilter {
  /// The source of the events.
  final pulumi.Input<String> source;

  /// Creates a new [GetEventIntegrationEventFilter].
  /// [source] The source of the events.
  const GetEventIntegrationEventFilter({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
    };
  }

  factory GetEventIntegrationEventFilter.fromMap(Map<String, dynamic> map) {
    return GetEventIntegrationEventFilter(
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

