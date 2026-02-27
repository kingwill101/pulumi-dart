// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ListenerCertificate.
class ListenerCertificateLbArgs {
  /// The ARN of the certificate to attach to the listener.
  final pulumi.Input<String> certificateArn;

  /// The ARN of the listener to which to attach the certificate.
  final pulumi.Input<String> listenerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ListenerCertificateLbArgs({
    required this.certificateArn,
    required this.listenerArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    map['listenerArn'] = listenerArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ListenerCertificateLbArgs.fromMap(Map<String, dynamic> map) {
    return ListenerCertificateLbArgs(
      certificateArn: pulumi.Input.asInput<String>(map['certificateArn']),
      listenerArn: pulumi.Input.asInput<String>(map['listenerArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
