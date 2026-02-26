// ignore_for_file: unused_element, unnecessary_cast

class GetTaskDefinitionVolumeDockerVolumeConfiguration {
  /// If this value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the Docker volume is created if it does not already exist. *Note*: This field is only used if the scope is <span pulumi-lang-nodejs="`shared`" pulumi-lang-dotnet="`Shared`" pulumi-lang-go="`shared`" pulumi-lang-python="`shared`" pulumi-lang-yaml="`shared`" pulumi-lang-java="`shared`">`shared`</span>.
  final bool autoprovision;

  /// Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement.
  final String driver;

  /// Map of Docker driver specific options.
  final Map<String, String> driverOpts;

  /// Map of custom metadata to add to your Docker volume.
  final Map<String, String> labels;

  /// Scope for the Docker volume, which determines its lifecycle, either <span pulumi-lang-nodejs="`task`" pulumi-lang-dotnet="`Task`" pulumi-lang-go="`task`" pulumi-lang-python="`task`" pulumi-lang-yaml="`task`" pulumi-lang-java="`task`">`task`</span> or <span pulumi-lang-nodejs="`shared`" pulumi-lang-dotnet="`Shared`" pulumi-lang-go="`shared`" pulumi-lang-python="`shared`" pulumi-lang-yaml="`shared`" pulumi-lang-java="`shared`">`shared`</span>.  Docker volumes that are scoped to a <span pulumi-lang-nodejs="`task`" pulumi-lang-dotnet="`Task`" pulumi-lang-go="`task`" pulumi-lang-python="`task`" pulumi-lang-yaml="`task`" pulumi-lang-java="`task`">`task`</span> are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as <span pulumi-lang-nodejs="`shared`" pulumi-lang-dotnet="`Shared`" pulumi-lang-go="`shared`" pulumi-lang-python="`shared`" pulumi-lang-yaml="`shared`" pulumi-lang-java="`shared`">`shared`</span> persist after the task stops.
  final String scope;

  GetTaskDefinitionVolumeDockerVolumeConfiguration({
    required this.autoprovision,
    required this.driver,
    required this.driverOpts,
    required this.labels,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoprovision'] = autoprovision;
    map['driver'] = driver;
    map['driverOpts'] = driverOpts;
    map['labels'] = labels;
    map['scope'] = scope;
    return map;
  }

  factory GetTaskDefinitionVolumeDockerVolumeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeDockerVolumeConfiguration(
      autoprovision: map['autoprovision'] as bool,
      driver: map['driver'] as String,
      driverOpts: (map['driverOpts'] as Map).cast<String, String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      scope: map['scope'] as String,
    );
  }
}
