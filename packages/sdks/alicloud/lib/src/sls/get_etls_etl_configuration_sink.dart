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
      datasets: ((map['datasets'] as List).cast<String>()).input(),
      endpoint: (map['endpoint'] as String).input(),
      logstore: (map['logstore'] as String).input(),
      name: (map['name'] as String).input(),
      project: (map['project'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

