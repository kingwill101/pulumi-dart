// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_acm_certificate_validation_certificate_validation_args_doc}
/// The set of arguments for CertificateValidation.
/// {@endtemplate}
/// {@macro pulumi_acm_certificate_validation_certificate_validation_args_doc}
class CertificateValidationArgs {
  /// ARN of the certificate that is being validated.
  final pulumi.Input<String> certificateArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of FQDNs that implement the validation. Only valid for DNS validation method ACM certificates. If this is set, the resource can implement additional sanity checks and has an explicit dependency on the resource that is implementing the validation
  final pulumi.Input<List<String>>? validationRecordFqdns;

  /// Creates a new [CertificateValidationArgs].
  /// [certificateArn] ARN of the certificate that is being validated.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [validationRecordFqdns] List of FQDNs that implement the validation. Only valid for DNS validation method ACM certificates. If this is set, the resource can implement additional sanity checks and has an explicit dependency on the resource that is implementing the validation
  CertificateValidationArgs({
    required String certificateArn,
    String? region,
    List<String>? validationRecordFqdns,
  })  : certificateArn = pulumi.Input.asInput<String>(certificateArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        validationRecordFqdns =
            pulumi.Input.asOptionalInput<List<String>>(validationRecordFqdns);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final validationRecordFqdnsValue = validationRecordFqdns;
    if (validationRecordFqdnsValue != null) {
      map['validationRecordFqdns'] = validationRecordFqdnsValue;
    }
    return map;
  }

  factory CertificateValidationArgs.fromMap(Map<String, dynamic> map) {
    return CertificateValidationArgs(
      certificateArn: map['certificateArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      validationRecordFqdns: map['validationRecordFqdns'] == null
          ? null
          : (map['validationRecordFqdns'] as List).cast<String>(),
    );
  }
}
