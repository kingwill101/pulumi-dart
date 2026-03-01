/// The type of the environment data.
enum EnvironmentType {
  valueAwsAccount("AwsAccount"),
  valueGcpProject("GcpProject"),
  valueGithubScope("GithubScope"),
  valueAzureDevOpsScope("AzureDevOpsScope"),
  valueGitlabScope("GitlabScope"),
  valueDockerHubOrganization("DockerHubOrganization"),
  valueJFrogArtifactory("JFrogArtifactory");

  const EnvironmentType(this.value);
  final String value;

  static EnvironmentType fromValue(String value) {
    for (final item in EnvironmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentType value: $value');
  }
}

