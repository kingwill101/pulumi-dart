// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_read_write_splitting_connection_read_write_splitting_connection_args_doc}
/// The set of arguments for ReadWriteSplittingConnection.
/// {@endtemplate}
/// {@macro pulumi_rds_read_write_splitting_connection_read_write_splitting_connection_args_doc}
class ReadWriteSplittingConnectionArgs {
  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to &lt;instance_id&gt; + 'rw'.
  final pulumi.Input<String>? connectionPrefix;
  /// Read weight distribution mode. Values are as follows: `Standard` indicates automatic weight distribution based on types, `Custom` indicates custom weight distribution.
  final pulumi.Input<String> distributionType;
  /// The Id of instance that can run database.
  final pulumi.Input<String> instanceId;
  /// Delay threshold, in seconds. The value range is 0 to 7200. Default to 30. Read requests are not routed to the read-only instances with a delay greater than the threshold.
  final pulumi.Input<int>? maxDelayTime;
  /// Intranet connection port. Valid value: [3001-3999]. Default to 3306.
  final pulumi.Input<int>? port;
  /// Read weight distribution. Read weights increase at a step of 100 up to 10,000. Enter weights in the following format: {"Instanceid":"Weight","Instanceid":"Weight"}. This parameter must be set when distribution_type is set to Custom.
  final pulumi.Input<Map<String, String>>? weight;

  /// Creates a new [ReadWriteSplittingConnectionArgs].
  /// [connectionPrefix] Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to &lt;instance_id&gt; + 'rw'.
  /// [distributionType] Read weight distribution mode. Values are as follows: `Standard` indicates automatic weight distribution based on types, `Custom` indicates custom weight distribution.
  /// [instanceId] The Id of instance that can run database.
  /// [maxDelayTime] Delay threshold, in seconds. The value range is 0 to 7200. Default to 30. Read requests are not routed to the read-only instances with a delay greater than the threshold.
  /// [port] Intranet connection port. Valid value: [3001-3999]. Default to 3306.
  /// [weight] Read weight distribution. Read weights increase at a step of 100 up to 10,000. Enter weights in the following format: {"Instanceid":"Weight","Instanceid":"Weight"}. This parameter must be set when distribution_type is set to Custom.
  ReadWriteSplittingConnectionArgs({
    this.connectionPrefix,
    required this.distributionType,
    required this.instanceId,
    this.maxDelayTime,
    this.port,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'distributionType': distributionType,
      'instanceId': instanceId,
      'maxDelayTime': ?maxDelayTime,
      'port': ?port,
      'weight': ?weight,
    };
  }

  factory ReadWriteSplittingConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ReadWriteSplittingConnectionArgs(
      connectionPrefix: (() { final guardedValue = map['connectionPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributionType: pulumi.Input.fromValue(map['distributionType'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      maxDelayTime: (() { final guardedValue = map['maxDelayTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

