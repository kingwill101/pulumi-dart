// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_state_response.dart';
import 'event_response.dart';

/// The instance view of the init container. Only valid in response.
class InitContainerPropertiesDefinitionResponseInstanceView {
  /// The current state of the init container.
  final ContainerStateResponse currentState;
  /// The events of the init container.
  final List<EventResponse> events;
  /// The previous state of the init container.
  final ContainerStateResponse previousState;
  /// The number of times that the init container has been restarted.
  final int restartCount;

  /// Creates a new [InitContainerPropertiesDefinitionResponseInstanceView].
  /// [currentState] The current state of the init container.
  /// [events] The events of the init container.
  /// [previousState] The previous state of the init container.
  /// [restartCount] The number of times that the init container has been restarted.
  InitContainerPropertiesDefinitionResponseInstanceView({
    required this.currentState,
    required this.events,
    required this.previousState,
    required this.restartCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentState': currentState.toMap(),
      'events': pulumi.Input.encodeList<EventResponse, Map<String, dynamic>>(events, (value) => value.toMap()),
      'previousState': previousState.toMap(),
      'restartCount': restartCount,
    };
  }

  factory InitContainerPropertiesDefinitionResponseInstanceView.fromMap(Map<String, dynamic> map) {
    return InitContainerPropertiesDefinitionResponseInstanceView(
      currentState: ContainerStateResponse.fromMap((map['currentState'] as Map).cast<String, dynamic>()),
      events: pulumi.Input.decodeList<EventResponse>(map['events'], (value) => EventResponse.fromMap((value as Map).cast<String, dynamic>())),
      previousState: ContainerStateResponse.fromMap((map['previousState'] as Map).cast<String, dynamic>()),
      restartCount: map['restartCount'] as int,
    );
  }
}

