// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listBuildServiceBuilderDeployments.
class ListBuildServiceBuilderDeploymentsResult {
  /// A list of deployment resource ids.
  final List<String>? deployments;

  /// Creates a new [ListBuildServiceBuilderDeploymentsResult].
  /// [deployments] A list of deployment resource ids.
  ListBuildServiceBuilderDeploymentsResult({
    this.deployments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployments': ?deployments,
    };
  }

  factory ListBuildServiceBuilderDeploymentsResult.fromMap(Map<String, dynamic> map) {
    return ListBuildServiceBuilderDeploymentsResult(
      deployments: (() { final guardedValue = map['deployments']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

