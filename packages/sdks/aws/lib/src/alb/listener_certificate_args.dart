// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_listener_certificate_listener_certificate_args_doc}
/// The set of arguments for ListenerCertificate.
/// {@endtemplate}
/// {@macro pulumi_alb_listener_certificate_listener_certificate_args_doc}
class ListenerCertificateArgs {
  /// The ARN of the certificate to attach to the listener.
  final pulumi.Input<String> certificateArn;

  /// The ARN of the listener to which to attach the certificate.
  final pulumi.Input<String> listenerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ListenerCertificateArgs].
  /// [certificateArn] The ARN of the certificate to attach to the listener.
  /// [listenerArn] The ARN of the listener to which to attach the certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ListenerCertificateArgs({
    required this.certificateArn,
    required this.listenerArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
      'listenerArn': listenerArn,
      'region': ?region,
    };
  }

  factory ListenerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ListenerCertificateArgs(
      certificateArn: pulumi.Input.fromValue(map['certificateArn'] as String),
      listenerArn: pulumi.Input.fromValue(map['listenerArn'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
