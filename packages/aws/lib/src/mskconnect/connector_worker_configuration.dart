// ignore_for_file: unused_element, unnecessary_cast


class ConnectorWorkerConfiguration {
  /// The Amazon Resource Name (ARN) of the worker configuration.
  final String arn;
  /// The revision of the worker configuration.
  final int revision;

  /// Creates a new [ConnectorWorkerConfiguration].
  /// [arn] The Amazon Resource Name (ARN) of the worker configuration.
  /// [revision] The revision of the worker configuration.
  ConnectorWorkerConfiguration({
    required this.arn,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'revision': revision,
    };
  }

  factory ConnectorWorkerConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectorWorkerConfiguration(
      arn: map['arn'] as String,
      revision: map['revision'] as int,
    );
  }
}

