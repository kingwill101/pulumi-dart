// ignore_for_file: unused_element, unnecessary_cast


class EtlConfigurationSink {
  /// Result datasets to write to.
  final List<String> datasets;
  /// The endpoint of the region where the destination project resides.
  final String endpoint;
  /// The name of the destination Logstore.
  final String logstore;
  /// The name of the output destination.
  final String name;
  /// Project name.
  final String project;
  /// The ARN of the role authorized to write to the destination Logstore.
  final String roleArn;

  /// Creates a new [EtlConfigurationSink].
  /// [datasets] Result datasets to write to.
  /// [endpoint] The endpoint of the region where the destination project resides.
  /// [logstore] The name of the destination Logstore.
  /// [name] The name of the output destination.
  /// [project] Project name.
  /// [roleArn] The ARN of the role authorized to write to the destination Logstore.
  EtlConfigurationSink({
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

  factory EtlConfigurationSink.fromMap(Map<String, dynamic> map) {
    return EtlConfigurationSink(
      datasets: (map['datasets'] as List).cast<String>(),
      endpoint: map['endpoint'] as String,
      logstore: map['logstore'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

