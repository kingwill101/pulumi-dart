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
    this.certificateArn,
    this.listenerArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'listenerArn': ?listenerArn,
      'region': ?region,
    };
  }

  factory ListenerCertificateState.fromMap(Map<String, dynamic> map) {
    return ListenerCertificateState(
      certificateArn: map['certificateArn'] == null ? null : ((map['certificateArn'] as String).input()).input(),
      listenerArn: map['listenerArn'] == null ? null : ((map['listenerArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

