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
    return <String, dynamic>{
      'userWorkloadAuthenticationType': ?userWorkloadAuthenticationType,
    };
  }

  factory BatchEnvironmentConfigExecutionConfigAuthenticationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BatchEnvironmentConfigExecutionConfigAuthenticationConfig(
      userWorkloadAuthenticationType:
          map['userWorkloadAuthenticationType'] == null
          ? null
          : map['userWorkloadAuthenticationType'] as String,
    );
  }
}
