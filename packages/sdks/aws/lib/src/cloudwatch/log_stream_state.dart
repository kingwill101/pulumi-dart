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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? logGroupName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      logGroupName = pulumi.Input.asOptionalInput<String>(logGroupName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      logGroupName: map['logGroupName'] == null ? null : pulumi.Output.create<String>(map['logGroupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

