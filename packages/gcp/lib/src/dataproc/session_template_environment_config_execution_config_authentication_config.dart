// ignore_for_file: unused_element, unnecessary_cast


class SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig {
  /// Authentication type for the user workload running in containers.
  /// Possible values are: `SERVICE_ACCOUNT`, `END_USER_CREDENTIALS`.
  final String? userWorkloadAuthenticationType;

  /// Creates a new [SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig].
  /// [userWorkloadAuthenticationType] Authentication type for the user workload running in containers.
  SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig({
    this.userWorkloadAuthenticationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userWorkloadAuthenticationType': ?userWorkloadAuthenticationType,
    };
  }

  factory SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig.fromMap(Map<String, dynamic> map) {
    return SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig(
      userWorkloadAuthenticationType: map['userWorkloadAuthenticationType'] == null ? null : map['userWorkloadAuthenticationType'] as String,
    );
  }
}

