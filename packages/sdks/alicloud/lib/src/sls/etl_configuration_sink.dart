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
      datasets: pulumi.Input.fromValue(
        (map['datasets'] as List).cast<String>(),
      ),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
