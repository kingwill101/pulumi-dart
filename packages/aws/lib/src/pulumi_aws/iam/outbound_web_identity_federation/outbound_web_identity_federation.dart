import 'package:pulumi/pulumi.dart' as pulumi;

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
class OutboundWebIdentityFederation extends pulumi.CustomResource {
  /// A unique issuer URL for your AWS account that hosts the OpenID Connect (OIDC) discovery endpoints.
  late final pulumi.Output<String> issuerIdentifier;

  OutboundWebIdentityFederation(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/outboundWebIdentityFederation:OutboundWebIdentityFederation',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.issuerIdentifier = registerOutput<String>('issuerIdentifier');
  }
}
