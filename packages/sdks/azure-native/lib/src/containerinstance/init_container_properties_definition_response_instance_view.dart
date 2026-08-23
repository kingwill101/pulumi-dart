// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_state_response.dart';
import 'event_response.dart';

/// The instance view of the init container. Only valid in response.
class InitContainerPropertiesDefinitionResponseInstanceView {
  /// The current state of the init container.
  final pulumi.Input<ContainerStateResponse> currentState;
  /// The events of the init container.
  final pulumi.Input<List<EventResponse>> events;
  /// The previous state of the init container.
  final pulumi.Input<ContainerStateResponse> previousState;
  /// The number of times that the init container has been restarted.
  final pulumi.Input<int> restartCount;

  /// Creates a new [InitContainerPropertiesDefinitionResponseInstanceView].
  /// [currentState] The current state of the init container.
  /// [events] The events of the init container.
  /// [previousState] The previous state of the init container.
  /// [restartCount] The number of times that the init container has been restarted.
  const InitContainerPropertiesDefinitionResponseInstanceView({
    required this.currentState,
    required this.events,
    required this.previousState,
    required this.restartCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentState': pulumi.Input.mapInputValue<ContainerStateResponse, Map<String, dynamic>>(currentState, (value) => value.toMap()),
      'events': pulumi.Input.mapInputValue<List<EventResponse>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<EventResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'previousState': pulumi.Input.mapInputValue<ContainerStateResponse, Map<String, dynamic>>(previousState, (value) => value.toMap()),
      'restartCount': restartCount,
    };
  }

  factory InitContainerPropertiesDefinitionResponseInstanceView.fromMap(Map<String, dynamic> map) {
    return InitContainerPropertiesDefinitionResponseInstanceView(
      currentState: pulumi.Input.fromValue(ContainerStateResponse.fromMap((map['currentState']! as Map).cast<String, dynamic>())),
      events: pulumi.Input.fromValue(pulumi.Input.decodeList<EventResponse>(map['events']!, (value) => EventResponse.fromMap((value as Map).cast<String, dynamic>()))),
      previousState: pulumi.Input.fromValue(ContainerStateResponse.fromMap((map['previousState']! as Map).cast<String, dynamic>())),
      restartCount: pulumi.Input.fromValue(map['restartCount'] as int),
    );
  }
}
