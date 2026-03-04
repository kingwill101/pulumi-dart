// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorWorkerConfiguration {
  /// The Amazon Resource Name (ARN) of the worker configuration.
  final pulumi.Input<String> arn;

  /// The revision of the worker configuration.
  final pulumi.Input<int> revision;

  /// Creates a new [ConnectorWorkerConfiguration].
  /// [arn] The Amazon Resource Name (ARN) of the worker configuration.
  /// [revision] The revision of the worker configuration.
  ConnectorWorkerConfiguration({required this.arn, required this.revision});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'revision': revision};
  }

  factory ConnectorWorkerConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectorWorkerConfiguration(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as int),
    );
  }
}
