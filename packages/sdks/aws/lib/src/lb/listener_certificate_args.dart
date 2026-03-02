// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_listener_certificate_listener_certificate_args_doc}
/// The set of arguments for ListenerCertificate.
/// {@endtemplate}
/// {@macro pulumi_lb_listener_certificate_listener_certificate_args_doc}
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
      certificateArn: (map['certificateArn'] as String).input(),
      listenerArn: (map['listenerArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

