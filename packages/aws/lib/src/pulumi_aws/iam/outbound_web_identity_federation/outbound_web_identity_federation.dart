import 'package:pulumi/pulumi.dart';

/// Manages an AWS IAM (Identity & Access Management) Outbound Web Identity Federation.
///
/// > **NOTE:** Creating this Terraform resource enables IAM Outbound Web Identity Federation and deleting this Terraform resource disables IAM Outbound Web Identity Federation.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Outbound Web Identity Federation resources using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:iam/outboundWebIdentityFederation:OutboundWebIdentityFederation example 123456789012
/// ```
class OutboundWebIdentityFederation extends CustomResource {
  /// A unique issuer URL for your AWS account that hosts the OpenID Connect (OIDC) discovery endpoints.
  late final Output<String> issuerIdentifier;

  OutboundWebIdentityFederation(
    String name, {
    Map<String, dynamic>? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/outboundWebIdentityFederation:OutboundWebIdentityFederation',
          name,
          Input.mapToInputs(args ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.issuerIdentifier = registerOutput<String>('issuerIdentifier');
  }
}
