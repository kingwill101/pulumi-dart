import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_identity_verification_args.dart';

/// Represents a successful verification of an SES domain identity.
///
/// Most commonly, this resource is used together with `aws.route53.Record` and
/// `aws.ses.DomainIdentity` to request an SES domain identity,
/// deploy the required DNS verification records, and wait for verification to complete.
///
/// > **WARNING:** This resource implements a part of the verification workflow. It does not represent a real-world entity in AWS, therefore changing or deleting this resource on its own has no immediate effect.
class DomainIdentityVerification extends pulumi.CustomResource {
  /// The ARN of the domain identity.
  late final pulumi.Output<String> arn;

  /// The domain name of the SES domain identity to verify.
  late final pulumi.Output<String> domain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  DomainIdentityVerification(
    String name, {
    DomainIdentityVerificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/domainIdentityVerification:DomainIdentityVerification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domain = registerOutput<String>('domain');
    this.region = registerOutput<String>('region');
  }
}
