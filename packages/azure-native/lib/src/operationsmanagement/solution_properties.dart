// ignore_for_file: unused_element, unnecessary_cast


/// Solution properties supported by the OperationsManagement resource provider.
class SolutionProperties {
  /// The azure resources that will be contained within the solutions. They will be locked and gets deleted automatically when the solution is deleted.
  final List<String>? containedResources;
  /// The resources that will be referenced from this solution. Deleting any of those solution out of band will break the solution.
  final List<String>? referencedResources;
  /// The azure resourceId for the workspace where the solution will be deployed/enabled.
  final String workspaceResourceId;

  /// Creates a new [SolutionProperties].
  /// [containedResources] The azure resources that will be contained within the solutions. They will be locked and gets deleted automatically when the solution is deleted.
  /// [referencedResources] The resources that will be referenced from this solution. Deleting any of those solution out of band will break the solution.
  /// [workspaceResourceId] The azure resourceId for the workspace where the solution will be deployed/enabled.
  SolutionProperties({
    this.containedResources,
    this.referencedResources,
    required this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containedResources': ?containedResources,
      'referencedResources': ?referencedResources,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory SolutionProperties.fromMap(Map<String, dynamic> map) {
    return SolutionProperties(
      containedResources: map['containedResources'] == null ? null : (map['containedResources'] as List).cast<String>(),
      referencedResources: map['referencedResources'] == null ? null : (map['referencedResources'] as List).cast<String>(),
      workspaceResourceId: map['workspaceResourceId'] as String,
    );
  }
}

