// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventbridge_get_event_buses_get_event_buses_args_doc}
/// Arguments for getEventBuses.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_get_event_buses_get_event_buses_args_doc}
class GetEventBusesArgs {
  /// The event bus type.
  final pulumi.Input<String>? eventBusType;
  /// A list of Event Bus IDs. Its element value is same as Event Bus Name.
  final pulumi.Input<List<String>>? ids;
  /// The name prefix.
  final pulumi.Input<String>? namePrefix;
  /// A regex string to filter results by Event Bus name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEventBusesArgs].
  /// [eventBusType] The event bus type.
  /// [ids] A list of Event Bus IDs. Its element value is same as Event Bus Name.
  /// [namePrefix] The name prefix.
  /// [nameRegex] A regex string to filter results by Event Bus name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEventBusesArgs({
    String? eventBusType,
    List<String>? ids,
    String? namePrefix,
    String? nameRegex,
    String? outputFile,
  }) :
      eventBusType = pulumi.Input.asOptionalInput<String>(eventBusType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBusType': ?eventBusType,
      'ids': ?ids,
      'namePrefix': ?namePrefix,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEventBusesArgs.fromMap(Map<String, dynamic> map) {
    return GetEventBusesArgs(
      eventBusType: map['eventBusType'] == null ? null : map['eventBusType'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

