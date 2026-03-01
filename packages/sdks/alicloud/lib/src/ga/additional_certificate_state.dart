// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AdditionalCertificate resources.
class AdditionalCertificateState {
  /// The ID of the GA instance.
  final pulumi.Input<String>? acceleratorId;
  /// The Certificate ID. **NOTE:** From version 1.209.1, `certificate_id` can be modified.
  final pulumi.Input<String>? certificateId;
  /// The domain name specified by the certificate. **NOTE:** You can associate each domain name with only one additional certificate.
  final pulumi.Input<String>? domain;
  /// The ID of the listener. **NOTE:** Only HTTPS listeners support this parameter.
  final pulumi.Input<String>? listenerId;

  /// Creates a new [AdditionalCertificateState].
  /// [acceleratorId] The ID of the GA instance.
  /// [certificateId] The Certificate ID. **NOTE:** From version 1.209.1, `certificate_id` can be modified.
  /// [domain] The domain name specified by the certificate. **NOTE:** You can associate each domain name with only one additional certificate.
  /// [listenerId] The ID of the listener. **NOTE:** Only HTTPS listeners support this parameter.
  AdditionalCertificateState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? certificateId,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? listenerId,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'certificateId': ?certificateId,
      'domain': ?domain,
      'listenerId': ?listenerId,
    };
  }

  factory AdditionalCertificateState.fromMap(Map<String, dynamic> map) {
    return AdditionalCertificateState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
    );
  }
}

