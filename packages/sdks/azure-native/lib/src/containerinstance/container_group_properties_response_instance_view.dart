// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_response.dart';

/// The instance view of the container group. Only valid in response.
class ContainerGroupPropertiesResponseInstanceView {
  /// The events of this container group.
  final pulumi.Input<List<EventResponse>> events;

  /// The state of the container group. Only valid in response.
  final pulumi.Input<String> state;

  /// Creates a new [ContainerGroupPropertiesResponseInstanceView].
  /// [events] The events of this container group.
  /// [state] The state of the container group. Only valid in response.
  ContainerGroupPropertiesResponseInstanceView({
    required this.events,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events':
          pulumi.Input.mapInputValue<
            List<EventResponse>,
            List<Map<String, dynamic>>
          >(
            events,
            (value) =>
                pulumi.Input.encodeList<EventResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'state': state,
    };
  }

  factory ContainerGroupPropertiesResponseInstanceView.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerGroupPropertiesResponseInstanceView(
      events: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EventResponse>(
          map['events']!,
          (value) =>
              EventResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
