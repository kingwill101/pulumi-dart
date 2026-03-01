// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ListenerCertificate resources.
class ListenerCertificateState {
  /// The ARN of the certificate to attach to the listener.
  final pulumi.Input<String>? certificateArn;
  /// The ARN of the listener to which to attach the certificate.
  final pulumi.Input<String>? listenerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ListenerCertificateState].
  /// [certificateArn] The ARN of the certificate to attach to the listener.
  /// [listenerArn] The ARN of the listener to which to attach the certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ListenerCertificateState({
    pulumi.Output<String>? certificateArn,
    pulumi.Output<String>? listenerArn,
    pulumi.Output<String>? region,
  }) :
      certificateArn = pulumi.Input.asOptionalInput<String>(certificateArn),
      listenerArn = pulumi.Input.asOptionalInput<String>(listenerArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'listenerArn': ?listenerArn,
      'region': ?region,
    };
  }

  factory ListenerCertificateState.fromMap(Map<String, dynamic> map) {
    return ListenerCertificateState(
      certificateArn: map['certificateArn'] == null ? null : pulumi.Output.create<String>(map['certificateArn'] as String),
      listenerArn: map['listenerArn'] == null ? null : pulumi.Output.create<String>(map['listenerArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

