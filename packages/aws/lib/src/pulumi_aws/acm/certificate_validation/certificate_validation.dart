import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_validation_args.dart';

/// This resource represents a successful validation of an ACM certificate in concert
/// with other resources.
///
/// Most commonly, this resource is used together with `aws.route53.Record` and
/// `aws.acm.Certificate` to request a DNS validated certificate,
/// deploy the required validation records and wait for validation to complete.
///
/// > **WARNING:** This resource implements a part of the validation workflow. It does not represent a real-world entity in AWS, therefore changing or deleting this resource on its own has no immediate effect.
///
/// ## Example Usage
///
/// ### DNS Validation with Route 53
///
///
///
/// ### Alternative Domains DNS Validation with Route 53
///
///
///
/// ### Email Validation
///
/// In this situation, the resource is simply a waiter for manual email approval of ACM certificates.
class CertificateValidation extends pulumi.CustomResource {
  /// ARN of the certificate that is being validated.
  late final pulumi.Output<String> certificateArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of FQDNs that implement the validation. Only valid for DNS validation method ACM certificates. If this is set, the resource can implement additional sanity checks and has an explicit dependency on the resource that is implementing the validation
  late final pulumi.Output<List<String>?> validationRecordFqdns;

  CertificateValidation(
    String name, {
    CertificateValidationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acm/certificateValidation:CertificateValidation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateArn = registerOutput<String>('certificateArn');
    this.region = registerOutput<String>('region');
    this.validationRecordFqdns =
        registerOutput<List<String>?>('validationRecordFqdns');
  }
}
