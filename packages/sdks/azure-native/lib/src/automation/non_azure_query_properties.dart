// ignore_for_file: unused_element, unnecessary_cast


/// Non Azure query for the update configuration.
class NonAzureQueryProperties {
  /// Log Analytics Saved Search name.
  final String? functionAlias;
  /// Workspace Id for Log Analytics in which the saved Search is resided.
  final String? workspaceId;

  /// Creates a new [NonAzureQueryProperties].
  /// [functionAlias] Log Analytics Saved Search name.
  /// [workspaceId] Workspace Id for Log Analytics in which the saved Search is resided.
  NonAzureQueryProperties({
    this.functionAlias,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAlias': ?functionAlias,
      'workspaceId': ?workspaceId,
    };
  }

  factory NonAzureQueryProperties.fromMap(Map<String, dynamic> map) {
    return NonAzureQueryProperties(
      functionAlias: map['functionAlias'] == null ? null : map['functionAlias'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

