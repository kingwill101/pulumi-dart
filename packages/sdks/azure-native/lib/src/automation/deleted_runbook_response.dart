// ignore_for_file: unused_element, unnecessary_cast


/// Definition of deleted runbook.
class DeletedRunbookResponse {
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the last modified time.
  final String? deletionTime;
  /// The resource id.
  final String? id;
  /// Gets or sets the location of the resource.
  final String? location;
  /// Gets or sets name of the resource.
  final String? name;
  /// Gets or sets the Runbook Id.
  final String? runbookId;
  /// Type of the runbook.
  final String? runbookType;
  /// Gets or sets runtime of the runbook.
  final String? runtime;
  /// Environment of the runbook.
  final String? runtimeEnvironment;

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
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      deletionTime: map['deletionTime'] == null ? null : map['deletionTime'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      runbookId: map['runbookId'] == null ? null : map['runbookId'] as String,
      runbookType: map['runbookType'] == null ? null : map['runbookType'] as String,
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
      runtimeEnvironment: map['runtimeEnvironment'] == null ? null : map['runtimeEnvironment'] as String,
    );
  }
}

