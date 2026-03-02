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
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      deletionTime: map['deletionTime'] == null ? null : (map['deletionTime'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      runbookId: map['runbookId'] == null ? null : (map['runbookId'] as String).input(),
      runbookType: map['runbookType'] == null ? null : (map['runbookType'] as String).input(),
      runtime: map['runtime'] == null ? null : (map['runtime'] as String).input(),
      runtimeEnvironment: map['runtimeEnvironment'] == null ? null : (map['runtimeEnvironment'] as String).input(),
    );
  }
}

