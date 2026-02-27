import 'package:pulumi/pulumi.dart';
import 'listener_certificate_args2.dart';

/// Provides a Load Balancer Listener Certificate resource.
///
/// This resource is for additional certificates and does not replace the default certificate on the listener.
///
/// > **Note:** `aws.alb.ListenerCertificate` is known as `aws.lb.ListenerCertificate`. The functionality is identical.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Listener Certificates using the listener arn and certificate arn, separated by an underscore (`_`). For example:
///
/// ```sh
/// $ pulumi import aws:lb/listenerCertificate:ListenerCertificate example arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/test/8e4497da625e2d8a/9ab28ade35828f96/67b3d2d36dd7c26b_arn:aws:iam::123456789012:server-certificate/tf-acc-test-6453083910015726063
/// ```
class ListenerCertificate2 extends CustomResource {
  /// The ARN of the certificate to attach to the listener.
  late final Output<String> certificateArn;

  /// The ARN of the listener to which to attach the certificate.
  late final Output<String> listenerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ListenerCertificate2(
    String name, {
    ListenerCertificateArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lb/listenerCertificate:ListenerCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateArn = registerOutput<String>('certificateArn');
    this.listenerArn = registerOutput<String>('listenerArn');
    this.region = registerOutput<String>('region');
  }
}
