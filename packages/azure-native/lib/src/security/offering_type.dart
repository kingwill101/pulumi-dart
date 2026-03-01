/// The type of the security offering.
enum OfferingType {
  valueCspmMonitorAws("CspmMonitorAws"),
  valueDefenderForContainersAws("DefenderForContainersAws"),
  valueDefenderForServersAws("DefenderForServersAws"),
  valueDefenderForDatabasesAws("DefenderForDatabasesAws"),
  valueCspmMonitorGcp("CspmMonitorGcp"),
  valueCspmMonitorGithub("CspmMonitorGithub"),
  valueCspmMonitorAzureDevOps("CspmMonitorAzureDevOps"),
  valueDefenderForServersGcp("DefenderForServersGcp"),
  valueDefenderForContainersGcp("DefenderForContainersGcp"),
  valueDefenderForDatabasesGcp("DefenderForDatabasesGcp"),
  valueDefenderCspmAws("DefenderCspmAws"),
  valueDefenderCspmGcp("DefenderCspmGcp"),
  valueCspmMonitorGitLab("CspmMonitorGitLab"),
  valueCspmMonitorDockerHub("CspmMonitorDockerHub"),
  valueDefenderForContainersDockerHub("DefenderForContainersDockerHub"),
  valueDefenderCspmDockerHub("DefenderCspmDockerHub"),
  valueCspmMonitorJFrog("CspmMonitorJFrog"),
  valueDefenderForContainersJFrog("DefenderForContainersJFrog"),
  valueDefenderCspmJFrog("DefenderCspmJFrog");

  const OfferingType(this.value);
  final String value;

  static OfferingType fromValue(String value) {
    for (final item in OfferingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OfferingType value: $value');
  }
}

