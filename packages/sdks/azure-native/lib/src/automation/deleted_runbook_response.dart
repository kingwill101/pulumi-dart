// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of deleted runbook.
class DeletedRunbookResponse {
  /// Gets or sets the creation time.
  final pulumi.Input<String>? creationTime;
  /// Gets or sets the last modified time.
  final pulumi.Input<String>? deletionTime;
  /// The resource id.
  final pulumi.Input<String>? id;
  /// Gets or sets the location of the resource.
  final pulumi.Input<String>? location;
  /// Gets or sets name of the resource.
  final pulumi.Input<String>? name;
  /// Gets or sets the Runbook Id.
  final pulumi.Input<String>? runbookId;
  /// Type of the runbook.
  final pulumi.Input<String>? runbookType;
  /// Gets or sets runtime of the runbook.
  final pulumi.Input<String>? runtime;
  /// Environment of the runbook.
  final pulumi.Input<String>? runtimeEnvironment;

  /// Creates a new [DeletedRunbookResponse].
  /// [creationTime] Gets or sets the creation time.
  /// [deletionTime] Gets or sets the last modified time.
  /// [id] The resource id.
  /// [location] Gets or sets the location of the resource.
  /// [name] Gets or sets name of the resource.
  /// [runbookId] Gets or sets the Runbook Id.
  /// [runbookType] Type of the runbook.
  /// [runtime] Gets or sets runtime of the runbook.
  /// [runtimeEnvironment] Environment of the runbook.
  DeletedRunbookResponse({
    this.creationTime,
    this.deletionTime,
    this.id,
    this.location,
    this.name,
    this.runbookId,
    this.runbookType,
    this.runtime,
    this.runtimeEnvironment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'deletionTime': ?deletionTime,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'runbookId': ?runbookId,
      'runbookType': ?runbookType,
      'runtime': ?runtime,
      'runtimeEnvironment': ?runtimeEnvironment,
    };
  }

  factory DeletedRunbookResponse.fromMap(Map<String, dynamic> map) {
    return DeletedRunbookResponse(
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionTime: (() { final guardedValue = map['deletionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookId: (() { final guardedValue = map['runbookId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookType: (() { final guardedValue = map['runbookType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeEnvironment: (() { final guardedValue = map['runtimeEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

