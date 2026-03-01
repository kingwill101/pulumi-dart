// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_events.dart';
import 'service_level_objective.dart';

/// {@template pulumi_index_service_level_service_level_args_doc}
/// The set of arguments for ServiceLevel.
/// {@endtemplate}
/// {@macro pulumi_index_service_level_service_level_args_doc}
class ServiceLevelArgs {
  /// The description of the SLI.
  final pulumi.Input<String>? description;
  /// The events that define the NRDB data for the SLI/SLO calculations.
  /// See Events below for details.
  final pulumi.Input<ServiceLevelEvents> events;
  /// The GUID of the entity (e.g, APM Service, Browser application, Workload, etc.) that you want to relate this SLI to. Note that changing the GUID will force a new resource.
  final pulumi.Input<String> guid;
  /// A short name for the SLI that will help anyone understand what it is about.
  final pulumi.Input<String>? name;
  /// The objective of the SLI, only one can be defined.
  /// See Objective below for details.
  final pulumi.Input<ServiceLevelObjective> objective;

  /// Creates a new [ServiceLevelArgs].
  /// [description] The description of the SLI.
  /// [events] The events that define the NRDB data for the SLI/SLO calculations.
  /// [guid] The GUID of the entity (e.g, APM Service, Browser application, Workload, etc.) that you want to relate this SLI to. Note that changing the GUID will force a new resource.
  /// [name] A short name for the SLI that will help anyone understand what it is about.
  /// [objective] The objective of the SLI, only one can be defined.
  ServiceLevelArgs({
    String? description,
    required ServiceLevelEvents events,
    required String guid,
    String? name,
    required ServiceLevelObjective objective,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      events = pulumi.Input.asInput<ServiceLevelEvents>(events),
      guid = pulumi.Input.asInput<String>(guid),
      name = pulumi.Input.asOptionalInput<String>(name),
      objective = pulumi.Input.asInput<ServiceLevelObjective>(objective);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'events': pulumi.Input.mapInputValue<ServiceLevelEvents, Map<String, dynamic>>(events, (value) => value.toMap()),
      'guid': guid,
      'name': ?name,
      'objective': pulumi.Input.mapInputValue<ServiceLevelObjective, Map<String, dynamic>>(objective, (value) => value.toMap()),
    };
  }

  factory ServiceLevelArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLevelArgs(
      description: map['description'] == null ? null : map['description'] as String,
      events: ServiceLevelEvents.fromMap((map['events'] as Map).cast<String, dynamic>()),
      guid: map['guid'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      objective: ServiceLevelObjective.fromMap((map['objective'] as Map).cast<String, dynamic>()),
    );
  }
}

