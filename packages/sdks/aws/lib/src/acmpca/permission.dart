import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_args.dart';
import 'permission_state.dart';

/// Provides a resource to manage an AWS Certificate Manager Private Certificate Authorities Permission.
/// Currently, this is only required in order to allow the ACM service to automatically renew certificates issued by a PCA.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleCertificateAuthority = new aws.acmpca.CertificateAuthority("example", {certificateAuthorityConfiguration: {
///     subject: {
///         commonName: "example.com",
///     },
///     keyAlgorithm: "RSA_4096",
///     signingAlgorithm: "SHA512WITHRSA",
/// }});
/// const example = new aws.acmpca.Permission("example", {
///     certificateAuthorityArn: exampleCertificateAuthority.arn,
///     actions: [
///         "IssueCertificate",
///         "GetCertificate",
///         "ListPermissions",
///     ],
///     principal: "acm.amazonaws.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_certificate_authority = aws.acmpca.CertificateAuthority("example", certificate_authority_configuration={
///     "subject": {
///         "common_name": "example.com",
///     },
///     "key_algorithm": "RSA_4096",
///     "signing_algorithm": "SHA512WITHRSA",
/// })
/// example = aws.acmpca.Permission("example",
///     certificate_authority_arn=example_certificate_authority.arn,
///     actions=[
///         "IssueCertificate",
///         "GetCertificate",
///         "ListPermissions",
///     ],
///     principal="acm.amazonaws.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCertificateAuthority = new Aws.Acmpca.CertificateAuthority("example", new()
///     {
///         CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
///         {
///             Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
///             {
///                 CommonName = "example.com",
///             },
///             KeyAlgorithm = "RSA_4096",
///             SigningAlgorithm = "SHA512WITHRSA",
///         },
///     });
///
///     var example = new Aws.Acmpca.Permission("example", new()
///     {
///         CertificateAuthorityArn = exampleCertificateAuthority.Arn,
///         Actions = new[]
///         {
///             "IssueCertificate",
///             "GetCertificate",
///             "ListPermissions",
///         },
///         Principal = "acm.amazonaws.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleCertificateAuthority, err := acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
/// 			CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// 				Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// 					CommonName: pulumi.String("example.com"),
/// 				},
/// 				KeyAlgorithm:     pulumi.String("RSA_4096"),
/// 				SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acmpca.NewPermission(ctx, "example", &acmpca.PermissionArgs{
/// 			CertificateAuthorityArn: exampleCertificateAuthority.Arn,
/// 			Actions: pulumi.StringArray{
/// 				pulumi.String("IssueCertificate"),
/// 				pulumi.String("GetCertificate"),
/// 				pulumi.String("ListPermissions"),
/// 			},
/// 			Principal: pulumi.String("acm.amazonaws.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_acmpca_permission" "example" {
///   certificate_authority_arn = aws_acmpca_certificateauthority.example.arn
///   actions                   = ["IssueCertificate", "GetCertificate", "ListPermissions"]
///   principal                 = "acm.amazonaws.com"
/// }
/// resource "aws_acmpca_certificateauthority" "example" {
///   certificate_authority_configuration = {
///     subject = {
///       common_name = "example.com"
///     }
///     key_algorithm     = "RSA_4096"
///     signing_algorithm = "SHA512WITHRSA"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.acmpca.CertificateAuthority;
/// import com.pulumi.aws.acmpca.CertificateAuthorityArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs;
/// import com.pulumi.aws.acmpca.Permission;
/// import com.pulumi.aws.acmpca.PermissionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleCertificateAuthority = new CertificateAuthority("exampleCertificateAuthority", CertificateAuthorityArgs.builder()
///             .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
///                 .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
///                     .commonName("example.com")
///                     .build())
///                 .keyAlgorithm("RSA_4096")
///                 .signingAlgorithm("SHA512WITHRSA")
///                 .build())
///             .build());
///
///         var example = new Permission("example", PermissionArgs.builder()
///             .certificateAuthorityArn(exampleCertificateAuthority.arn())
///             .actions(
///                 "IssueCertificate",
///                 "GetCertificate",
///                 "ListPermissions")
///             .principal("acm.amazonaws.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:acmpca:Permission
///     properties:
///       certificateAuthorityArn: ${exampleCertificateAuthority.arn}
///       actions:
///         - IssueCertificate
///         - GetCertificate
///         - ListPermissions
///       principal: acm.amazonaws.com
///   exampleCertificateAuthority:
///     type: aws:acmpca:CertificateAuthority
///     name: example
///     properties:
///       certificateAuthorityConfiguration:
///         subject:
///           commonName: example.com
///         keyAlgorithm: RSA_4096
///         signingAlgorithm: SHA512WITHRSA
/// ```
class Permission extends pulumi.CustomResource {
  /// Actions that the specified AWS service principal can use. These include `IssueCertificate`, `GetCertificate`, and `ListPermissions`. Note that in order for ACM to automatically rotate certificates issued by a PCA, it must be granted permission on all 3 actions, as per the example above.
  late final pulumi.Output<List<String>> actions;
  /// ARN of the CA that grants the permissions.
  late final pulumi.Output<String> certificateAuthorityArn;
  /// IAM policy that is associated with the permission.
  late final pulumi.Output<String> policy;
  /// AWS service or identity that receives the permission. At this time, the only valid principal is `acm.amazonaws.com`.
  late final pulumi.Output<String> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the calling account
  late final pulumi.Output<String> sourceAccount;

  /// Creates a new [Permission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Permission]. {@macro pulumi_acmpca_permission_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Permission(
    String name, {
    PermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/permission:Permission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    actions = registerOutput<List<String>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    policy = registerOutput<String>('policy');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    sourceAccount = registerOutput<String>('sourceAccount');
  }

  /// Gets an existing [Permission] resource's state with the given [name] and [id].
  static Permission get(
    String name,
    pulumi.Input<String> id, {
    PermissionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Permission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Permission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/permission:Permission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<String>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    policy = registerOutput<String>('policy');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    sourceAccount = registerOutput<String>('sourceAccount');
  }

  /// Creates a typed reference to an existing [Permission] resource.
  Permission.reference(String urn)
    : super(
        'aws:acmpca/permission:Permission',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<String>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    policy = registerOutput<String>('policy');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    sourceAccount = registerOutput<String>('sourceAccount');
  }
}
