// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_event_response.dart';
import 'container_state_response.dart';

/// Runtime information of a container instance.
class ContainerInstanceViewResponse {
  /// Current container instance state.
  final ContainerStateResponse? currentState;
  /// The events of this container instance.
  final List<ContainerEventResponse>? events;
  /// Previous container instance state.
  final ContainerStateResponse? previousState;
  /// The number of times the container has been restarted.
  final int? restartCount;

  /// Creates a new [ContainerInstanceViewResponse].
  /// [currentState] Current container instance state.
  /// [events] The events of this container instance.
  /// [previousState] Previous container instance state.
  /// [restartCount] The number of times the container has been restarted.
  ContainerInstanceViewResponse({
    this.currentState,
    this.events,
    this.previousState,
    this.restartCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentState': ?currentState == null ? null : currentState!.toMap(),
      'events': ?events == null ? null : pulumi.Input.encodeList<ContainerEventResponse, Map<String, dynamic>>(events!, (value) => value.toMap()),
      'previousState': ?previousState == null ? null : previousState!.toMap(),
      'restartCount': ?restartCount,
    };
  }

  factory ContainerInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return ContainerInstanceViewResponse(
      currentState: map['currentState'] == null ? null : ContainerStateResponse.fromMap((map['currentState'] as Map).cast<String, dynamic>()),
      events: map['events'] == null ? null : pulumi.Input.decodeList<ContainerEventResponse>(map['events'], (value) => ContainerEventResponse.fromMap((value as Map).cast<String, dynamic>())),
      previousState: map['previousState'] == null ? null : ContainerStateResponse.fromMap((map['previousState'] as Map).cast<String, dynamic>()),
      restartCount: map['restartCount'] == null ? null : map['restartCount'] as int,
    );
  }
}

