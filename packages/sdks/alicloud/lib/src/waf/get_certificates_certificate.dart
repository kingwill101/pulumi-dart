// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatesCertificate {
  /// Certificate recording ID.
  final pulumi.Input<String> certificateId;
  /// Your certificate name.
  final pulumi.Input<String> certificateName;
  /// Certificate bound to the domain name.
  final pulumi.Input<String> commonName;
  /// WAF domain name.
  final pulumi.Input<String> domain;
  /// The ID of the Certificate.
  final pulumi.Input<String> id;
  /// WAF instance ID.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<bool> isUsing;
  final pulumi.Input<List<String>> sans;

  /// Creates a new [GetCertificatesCertificate].
  /// [certificateId] Certificate recording ID.
  /// [certificateName] Your certificate name.
  /// [commonName] Certificate bound to the domain name.
  /// [domain] WAF domain name.
  /// [id] The ID of the Certificate.
  /// [instanceId] WAF instance ID.
  /// [isUsing] Required.
  /// [sans] Required.
  GetCertificatesCertificate({
    required this.certificateId,
    required this.certificateName,
    required this.commonName,
    required this.domain,
    required this.id,
    required this.instanceId,
    required this.isUsing,
    required this.sans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'certificateName': certificateName,
      'commonName': commonName,
      'domain': domain,
      'id': id,
      'instanceId': instanceId,
      'isUsing': isUsing,
      'sans': sans,
    };
  }

  factory GetCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificate(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      isUsing: pulumi.Input.fromValue(map['isUsing'] as bool),
      sans: pulumi.Input.fromValue((map['sans'] as List).cast<String>()),
    );
  }
}

