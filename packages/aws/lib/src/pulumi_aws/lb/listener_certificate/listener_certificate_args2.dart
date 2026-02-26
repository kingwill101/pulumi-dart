// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ListenerCertificate.
class ListenerCertificateArgs2 {
  /// The ARN of the certificate to attach to the listener.
  final Input<String> certificateArn;

  /// The ARN of the listener to which to attach the certificate.
  final Input<String> listenerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ListenerCertificateArgs2({
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

  factory ListenerCertificateArgs2.fromMap(Map<String, dynamic> map) {
    return ListenerCertificateArgs2(
      certificateArn: Input.asInput<String>(map['certificateArn']),
      listenerArn: Input.asInput<String>(map['listenerArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
