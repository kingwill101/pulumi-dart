// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReadWriteSplittingConnection resources.
class ReadWriteSplittingConnectionState {
  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to <instance_id> + 'rw'.
  final pulumi.Input<String>? connectionPrefix;
  /// Connection instance string.
  final pulumi.Input<String>? connectionString;
  /// Read weight distribution mode. Values are as follows: `Standard` indicates automatic weight distribution based on types, `Custom` indicates custom weight distribution.
  final pulumi.Input<String>? distributionType;
  /// The Id of instance that can run database.
  final pulumi.Input<String>? instanceId;
  /// Delay threshold, in seconds. The value range is 0 to 7200. Default to 30. Read requests are not routed to the read-only instances with a delay greater than the threshold.
  final pulumi.Input<int>? maxDelayTime;
  /// Intranet connection port. Valid value: [3001-3999]. Default to 3306.
  final pulumi.Input<int>? port;
  /// Read weight distribution. Read weights increase at a step of 100 up to 10,000. Enter weights in the following format: {"Instanceid":"Weight","Instanceid":"Weight"}. This parameter must be set when distribution_type is set to Custom.
  final pulumi.Input<Map<String, String>>? weight;

  /// Creates a new [ReadWriteSplittingConnectionState].
  /// [connectionPrefix] Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to <instance_id> + 'rw'.
  /// [connectionString] Connection instance string.
  /// [distributionType] Read weight distribution mode. Values are as follows: `Standard` indicates automatic weight distribution based on types, `Custom` indicates custom weight distribution.
  /// [instanceId] The Id of instance that can run database.
  /// [maxDelayTime] Delay threshold, in seconds. The value range is 0 to 7200. Default to 30. Read requests are not routed to the read-only instances with a delay greater than the threshold.
  /// [port] Intranet connection port. Valid value: [3001-3999]. Default to 3306.
  /// [weight] Read weight distribution. Read weights increase at a step of 100 up to 10,000. Enter weights in the following format: {"Instanceid":"Weight","Instanceid":"Weight"}. This parameter must be set when distribution_type is set to Custom.
  ReadWriteSplittingConnectionState({
    pulumi.Output<String>? connectionPrefix,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? distributionType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? maxDelayTime,
    pulumi.Output<int>? port,
    pulumi.Output<Map<String, String>>? weight,
  }) :
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      distributionType = pulumi.Input.asOptionalInput<String>(distributionType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      maxDelayTime = pulumi.Input.asOptionalInput<int>(maxDelayTime),
      port = pulumi.Input.asOptionalInput<int>(port),
      weight = pulumi.Input.asOptionalInput<Map<String, String>>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'connectionString': ?connectionString,
      'distributionType': ?distributionType,
      'instanceId': ?instanceId,
      'maxDelayTime': ?maxDelayTime,
      'port': ?port,
      'weight': ?weight,
    };
  }

  factory ReadWriteSplittingConnectionState.fromMap(Map<String, dynamic> map) {
    return ReadWriteSplittingConnectionState(
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      distributionType: map['distributionType'] == null ? null : pulumi.Output.create<String>(map['distributionType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      maxDelayTime: map['maxDelayTime'] == null ? null : pulumi.Output.create<int>(map['maxDelayTime'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      weight: map['weight'] == null ? null : pulumi.Output.create<Map<String, String>>((map['weight'] as Map).cast<String, String>()),
    );
  }
}

