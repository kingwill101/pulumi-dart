// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StaticIp resources.
class StaticIpState {
  /// ARN of the Lightsail static IP.
  final pulumi.Input<String>? arn;
  /// Allocated static IP address.
  final pulumi.Input<String>? ipAddress;
  /// Name for the allocated static IP.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Support code for the static IP. Include this code in your email to support when you have questions about a static IP in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  final pulumi.Input<String>? supportCode;

  /// Creates a new [StaticIpState].
  /// [arn] ARN of the Lightsail static IP.
  /// [ipAddress] Allocated static IP address.
  /// [name] Name for the allocated static IP.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportCode] Support code for the static IP. Include this code in your email to support when you have questions about a static IP in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  StaticIpState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? supportCode,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      supportCode = pulumi.Input.asOptionalInput<String>(supportCode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'region': ?region,
      'supportCode': ?supportCode,
    };
  }

  factory StaticIpState.fromMap(Map<String, dynamic> map) {
    return StaticIpState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      supportCode: map['supportCode'] == null ? null : pulumi.Output.create<String>(map['supportCode'] as String),
    );
  }
}

