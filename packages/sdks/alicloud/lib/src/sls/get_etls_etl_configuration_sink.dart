// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEtlsEtlConfigurationSink {
  /// Write Result Set.
  final pulumi.Input<List<String>> datasets;
  /// The endpoint of the region where the target Project is located.
  final pulumi.Input<String> endpoint;
  /// Source Logstore Name.
  final pulumi.Input<String> logstore;
  /// Output Destination Name.
  final pulumi.Input<String> name;
  /// Project Name
  final pulumi.Input<String> project;
  /// The ARN role that authorizes writing to the target Logstore.
  final pulumi.Input<String> roleArn;

  /// Creates a new [GetEtlsEtlConfigurationSink].
  /// [datasets] Write Result Set.
  /// [endpoint] The endpoint of the region where the target Project is located.
  /// [logstore] Source Logstore Name.
  /// [name] Output Destination Name.
  /// [project] Project Name
  /// [roleArn] The ARN role that authorizes writing to the target Logstore.
  const GetEtlsEtlConfigurationSink({
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
      datasets: pulumi.Input.fromValue((map['datasets'] as List).cast<String>()),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

