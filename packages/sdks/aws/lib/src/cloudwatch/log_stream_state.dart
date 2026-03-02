// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogStream resources.
class LogStreamState {
  /// The Amazon Resource Name (ARN) specifying the log stream.
  final pulumi.Input<String>? arn;
  /// The name of the log group under which the log stream is to be created.
  final pulumi.Input<String>? logGroupName;
  /// The name of the log stream. Must not be longer than 512 characters and must not contain `:`
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogStreamState].
  /// [arn] The Amazon Resource Name (ARN) specifying the log stream.
  /// [logGroupName] The name of the log group under which the log stream is to be created.
  /// [name] The name of the log stream. Must not be longer than 512 characters and must not contain `:`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogStreamState({
    this.arn,
    this.logGroupName,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'logGroupName': ?logGroupName,
      'name': ?name,
      'region': ?region,
    };
  }

  factory LogStreamState.fromMap(Map<String, dynamic> map) {
    return LogStreamState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      logGroupName: map['logGroupName'] == null ? null : (map['logGroupName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

