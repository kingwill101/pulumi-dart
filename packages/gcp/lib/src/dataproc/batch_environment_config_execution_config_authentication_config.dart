// ignore_for_file: unused_element, unnecessary_cast

class BatchEnvironmentConfigExecutionConfigAuthenticationConfig {
  /// Authentication type for the user workload running in containers.
  /// Possible values are: `SERVICE_ACCOUNT`, `END_USER_CREDENTIALS`.
  final String? userWorkloadAuthenticationType;

  /// Creates a new [BatchEnvironmentConfigExecutionConfigAuthenticationConfig].
  /// [userWorkloadAuthenticationType] Authentication type for the user workload running in containers.
  BatchEnvironmentConfigExecutionConfigAuthenticationConfig({
    this.userWorkloadAuthenticationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final userWorkloadAuthenticationTypeValue = userWorkloadAuthenticationType;
    if (userWorkloadAuthenticationTypeValue != null) {
      map['userWorkloadAuthenticationType'] =
          userWorkloadAuthenticationTypeValue;
    }
    return map;
  }

  factory BatchEnvironmentConfigExecutionConfigAuthenticationConfig.fromMap(
      Map<String, dynamic> map) {
    return BatchEnvironmentConfigExecutionConfigAuthenticationConfig(
      userWorkloadAuthenticationType:
          map['userWorkloadAuthenticationType'] == null
              ? null
              : map['userWorkloadAuthenticationType'] as String,
    );
  }
}
