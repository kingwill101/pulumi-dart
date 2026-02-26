// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExport.
class GetExportResult {
  /// Time the export job was created.
  final String created;

  /// Name of the datastore that is the destination of the export job [datastore]
  final String datastoreName;

  /// Description of the export job.
  final String description;

  /// Error is set when export fails
  final String error;

  /// Execution time for this export job. If the job is still in progress, it will be set to the amount of time that has elapsed since`created`, in seconds. Else, it will set to (`updated` - `created`), in seconds.
  final String executionTime;

  /// Display name of the export job.
  final String name;

  /// Self link of the export job. A URI that can be used to retrieve the status of an export job. Example: `/organizations/myorg/environments/myenv/analytics/exports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  final String self;

  /// Status of the export job. Valid values include `enqueued`, `running`, `completed`, and `failed`.
  final String state;

  /// Time the export job was last updated.
  final String updated;

  GetExportResult({
    required this.created,
    required this.datastoreName,
    required this.description,
    required this.error,
    required this.executionTime,
    required this.name,
    required this.self,
    required this.state,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['created'] = created;
    map['datastoreName'] = datastoreName;
    map['description'] = description;
    map['error'] = error;
    map['executionTime'] = executionTime;
    map['name'] = name;
    map['self'] = self;
    map['state'] = state;
    map['updated'] = updated;
    return map;
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      created: map['created'] as String,
      datastoreName: map['datastoreName'] as String,
      description: map['description'] as String,
      error: map['error'] as String,
      executionTime: map['executionTime'] as String,
      name: map['name'] as String,
      self: map['self'] as String,
      state: map['state'] as String,
      updated: map['updated'] as String,
    );
  }
}
