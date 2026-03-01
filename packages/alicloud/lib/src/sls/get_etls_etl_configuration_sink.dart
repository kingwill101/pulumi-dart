// ignore_for_file: unused_element, unnecessary_cast


class GetEtlsEtlConfigurationSink {
  /// Write Result Set.
  final List<String> datasets;
  /// The endpoint of the region where the target Project is located.
  final String endpoint;
  /// Source Logstore Name.
  final String logstore;
  /// Output Destination Name.
  final String name;
  /// Project Name
  final String project;
  /// The ARN role that authorizes writing to the target Logstore.
  final String roleArn;

  /// Creates a new [GetEtlsEtlConfigurationSink].
  /// [datasets] Write Result Set.
  /// [endpoint] The endpoint of the region where the target Project is located.
  /// [logstore] Source Logstore Name.
  /// [name] Output Destination Name.
  /// [project] Project Name
  /// [roleArn] The ARN role that authorizes writing to the target Logstore.
  GetEtlsEtlConfigurationSink({
    required this.datasets,
    required this.endpoint,
    required this.logstore,
    required this.name,
    required this.project,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': datasets,
      'endpoint': endpoint,
      'logstore': logstore,
      'name': name,
      'project': project,
      'roleArn': roleArn,
    };
  }

  factory GetEtlsEtlConfigurationSink.fromMap(Map<String, dynamic> map) {
    return GetEtlsEtlConfigurationSink(
      datasets: (map['datasets'] as List).cast<String>(),
      endpoint: map['endpoint'] as String,
      logstore: map['logstore'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

