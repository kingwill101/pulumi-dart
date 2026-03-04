// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_state_response.dart';
import 'event_response.dart';

/// The instance view of the container instance. Only valid in response.
class ContainerPropertiesResponseInstanceView {
  /// Current container instance state.
  final pulumi.Input<ContainerStateResponse> currentState;

  /// The events of the container instance.
  final pulumi.Input<List<EventResponse>> events;

  /// Previous container instance state.
  final pulumi.Input<ContainerStateResponse> previousState;

  /// The number of times that the container instance has been restarted.
  final pulumi.Input<int> restartCount;

  /// Creates a new [ContainerPropertiesResponseInstanceView].
  /// [currentState] Current container instance state.
  /// [events] The events of the container instance.
  /// [previousState] Previous container instance state.
  /// [restartCount] The number of times that the container instance has been restarted.
  ContainerPropertiesResponseInstanceView({
    required this.currentState,
    required this.events,
    required this.previousState,
    required this.restartCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentState':
          pulumi.Input.mapInputValue<
            ContainerStateResponse,
            Map<String, dynamic>
          >(currentState, (value) => value.toMap()),
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
      'previousState':
          pulumi.Input.mapInputValue<
            ContainerStateResponse,
            Map<String, dynamic>
          >(previousState, (value) => value.toMap()),
      'restartCount': restartCount,
    };
  }

  factory ContainerPropertiesResponseInstanceView.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerPropertiesResponseInstanceView(
      currentState: pulumi.Input.fromValue(
        ContainerStateResponse.fromMap(
          (map['currentState']! as Map).cast<String, dynamic>(),
        ),
      ),
      events: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EventResponse>(
          map['events']!,
          (value) =>
              EventResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      previousState: pulumi.Input.fromValue(
        ContainerStateResponse.fromMap(
          (map['previousState']! as Map).cast<String, dynamic>(),
        ),
      ),
      restartCount: pulumi.Input.fromValue(map['restartCount'] as int),
    );
  }
}
