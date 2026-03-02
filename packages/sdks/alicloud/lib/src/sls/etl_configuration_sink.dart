// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EtlConfigurationSink {
  /// Result datasets to write to.
  final pulumi.Input<List<String>> datasets;
  /// The endpoint of the region where the destination project resides.
  final pulumi.Input<String> endpoint;
  /// The name of the destination Logstore.
  final pulumi.Input<String> logstore;
  /// The name of the output destination.
  final pulumi.Input<String> name;
  /// Project name.
  final pulumi.Input<String> project;
  /// The ARN of the role authorized to write to the destination Logstore.
  final pulumi.Input<String> roleArn;

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
      datasets: ((map['datasets'] as List).cast<String>()).input(),
      endpoint: (map['endpoint'] as String).input(),
      logstore: (map['logstore'] as String).input(),
      name: (map['name'] as String).input(),
      project: (map['project'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

