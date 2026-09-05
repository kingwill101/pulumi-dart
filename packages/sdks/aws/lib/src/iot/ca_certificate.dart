import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_certificate_args.dart';
import 'ca_certificate_registration_config.dart';
import 'ca_certificate_state.dart';
import 'ca_certificate_validity.dart';

/// Creates and manages an AWS IoT CA Certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as tls from "@pulumi/tls";
///
/// const caPrivateKey = new tls.PrivateKey("ca", {algorithm: "RSA"});
/// const ca = new tls.SelfSignedCert("ca", {
///     subject: [{
///         commonName: "example.com",
///         organization: "ACME Examples, Inc",
///     }],
///     privateKeyPem: caPrivateKey.privateKeyPem,
///     validityPeriodHours: 12,
///     allowedUses: [
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ],
///     isCaCertificate: true,
/// });
/// const verificationPrivateKey = new tls.PrivateKey("verification", {algorithm: "RSA"});
/// const example = aws.iot.getRegistrationCode({});
/// const verification = new tls.CertRequest("verification", {
///     subject: [{
///         commonName: example.then(example => example.registrationCode),
///     }],
///     privateKeyPem: verificationPrivateKey.privateKeyPem,
/// });
/// const verificationLocallySignedCert = new tls.LocallySignedCert("verification", {
///     certRequestPem: verification.certRequestPem,
///     caPrivateKeyPem: caPrivateKey.privateKeyPem,
///     caCertPem: ca.certPem,
///     validityPeriodHours: 12,
///     allowedUses: [
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ],
/// });
/// const exampleCaCertificate = new aws.iot.CaCertificate("example", {
///     active: true,
///     caCertificatePem: ca.certPem,
///     verificationCertificatePem: verificationLocallySignedCert.certPem,
///     allowAutoRegistration: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_tls as tls
///
/// ca_private_key = tls.PrivateKey("ca", algorithm="RSA")
/// ca = tls.SelfSignedCert("ca",
///     subject=[{
///         "commonName": "example.com",
///         "organization": "ACME Examples, Inc",
///     }],
///     private_key_pem=ca_private_key.private_key_pem,
///     validity_period_hours=12,
///     allowed_uses=[
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ],
///     is_ca_certificate=True)
/// verification_private_key = tls.PrivateKey("verification", algorithm="RSA")
/// example = aws.iot.get_registration_code()
/// verification = tls.CertRequest("verification",
///     subject=[{
///         "commonName": example.registration_code,
///     }],
///     private_key_pem=verification_private_key.private_key_pem)
/// verification_locally_signed_cert = tls.LocallySignedCert("verification",
///     cert_request_pem=verification.cert_request_pem,
///     ca_private_key_pem=ca_private_key.private_key_pem,
///     ca_cert_pem=ca.cert_pem,
///     validity_period_hours=12,
///     allowed_uses=[
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ])
/// example_ca_certificate = aws.iot.CaCertificate("example",
///     active=True,
///     ca_certificate_pem=ca.cert_pem,
///     verification_certificate_pem=verification_locally_signed_cert.cert_pem,
///     allow_auto_registration=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var caPrivateKey = new Tls.PrivateKey("ca", new()
///     {
///         Algorithm = "RSA",
///     });
///
///     var ca = new Tls.SelfSignedCert("ca", new()
///     {
///         Subject = new[]
///         {
///
///             {
///                 { "commonName", "example.com" },
///                 { "organization", "ACME Examples, Inc" },
///             },
///         },
///         PrivateKeyPem = caPrivateKey.PrivateKeyPem,
///         ValidityPeriodHours = 12,
///         AllowedUses = new[]
///         {
///             "key_encipherment",
///             "digital_signature",
///             "server_auth",
///         },
///         IsCaCertificate = true,
///     });
///
///     var verificationPrivateKey = new Tls.PrivateKey("verification", new()
///     {
///         Algorithm = "RSA",
///     });
///
///     var example = Aws.Iot.GetRegistrationCode.Invoke();
///
///     var verification = new Tls.CertRequest("verification", new()
///     {
///         Subject = new[]
///         {
///
///             {
///                 { "commonName", example.Apply(getRegistrationCodeResult => getRegistrationCodeResult.RegistrationCode) },
///             },
///         },
///         PrivateKeyPem = verificationPrivateKey.PrivateKeyPem,
///     });
///
///     var verificationLocallySignedCert = new Tls.LocallySignedCert("verification", new()
///     {
///         CertRequestPem = verification.CertRequestPem,
///         CaPrivateKeyPem = caPrivateKey.PrivateKeyPem,
///         CaCertPem = ca.CertPem,
///         ValidityPeriodHours = 12,
///         AllowedUses = new[]
///         {
///             "key_encipherment",
///             "digital_signature",
///             "server_auth",
///         },
///     });
///
///     var exampleCaCertificate = new Aws.Iot.CaCertificate("example", new()
///     {
///         Active = true,
///         CaCertificatePem = ca.CertPem,
///         VerificationCertificatePem = verificationLocallySignedCert.CertPem,
///         AllowAutoRegistration = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		caPrivateKey, err := tls.NewPrivateKey(ctx, "ca", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("RSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ca, err := tls.NewSelfSignedCert(ctx, "ca", &tls.SelfSignedCertArgs{
/// 			Subject: tls.SelfSignedCertSubjectArgs{
/// 				map[string]string{
/// 					"commonName":   "example.com",
/// 					"organization": "ACME Examples, Inc",
/// 				},
/// 			},
/// 			PrivateKeyPem:       caPrivateKey.PrivateKeyPem,
/// 			ValidityPeriodHours: pulumi.Int(12),
/// 			AllowedUses: pulumi.StringArray{
/// 				pulumi.String("key_encipherment"),
/// 				pulumi.String("digital_signature"),
/// 				pulumi.String("server_auth"),
/// 			},
/// 			IsCaCertificate: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		verificationPrivateKey, err := tls.NewPrivateKey(ctx, "verification", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("RSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iot.GetRegistrationCode(ctx, &iot.GetRegistrationCodeArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		verification, err := tls.NewCertRequest(ctx, "verification", &tls.CertRequestArgs{
/// 			Subject: tls.CertRequestSubjectArgs{
/// 				map[string]interface{}{
/// 					"commonName": example.RegistrationCode,
/// 				},
/// 			},
/// 			PrivateKeyPem: verificationPrivateKey.PrivateKeyPem,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		verificationLocallySignedCert, err := tls.NewLocallySignedCert(ctx, "verification", &tls.LocallySignedCertArgs{
/// 			CertRequestPem:      verification.CertRequestPem,
/// 			CaPrivateKeyPem:     caPrivateKey.PrivateKeyPem,
/// 			CaCertPem:           ca.CertPem,
/// 			ValidityPeriodHours: pulumi.Int(12),
/// 			AllowedUses: pulumi.StringArray{
/// 				pulumi.String("key_encipherment"),
/// 				pulumi.String("digital_signature"),
/// 				pulumi.String("server_auth"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewCaCertificate(ctx, "example", &iot.CaCertificateArgs{
/// 			Active:                     pulumi.Bool(true),
/// 			CaCertificatePem:           ca.CertPem,
/// 			VerificationCertificatePem: verificationLocallySignedCert.CertPem,
/// 			AllowAutoRegistration:      pulumi.Bool(true),
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
///     tls = {
///       source = "pulumi/tls"
///     }
///   }
/// }
///
/// data "aws_iot_getregistrationcode" "example" {
/// }
///
/// resource "tls_selfsignedcert" "ca" {
///   subject = [{
///     "commonName"   = "example.com"
///     "organization" = "ACME Examples, Inc"
///   }]
///   private_key_pem       = tls_privatekey.ca.private_key_pem
///   validity_period_hours = 12
///   allowed_uses          = ["key_encipherment", "digital_signature", "server_auth"]
///   is_ca_certificate     = true
/// }
/// resource "tls_privatekey" "ca" {
///   algorithm = "RSA"
/// }
/// resource "tls_certrequest" "verification" {
///   subject = [{
///     "commonName" = data.aws_iot_getregistrationcode.example.registration_code
///   }]
///   private_key_pem = tls_privatekey.verification.private_key_pem
/// }
/// resource "tls_privatekey" "verification" {
///   algorithm = "RSA"
/// }
/// resource "tls_locallysignedcert" "verification" {
///   cert_request_pem      = tls_certrequest.verification.cert_request_pem
///   ca_private_key_pem    = tls_privatekey.ca.private_key_pem
///   ca_cert_pem           = tls_selfsignedcert.ca.cert_pem
///   validity_period_hours = 12
///   allowed_uses          = ["key_encipherment", "digital_signature", "server_auth"]
/// }
/// resource "aws_iot_cacertificate" "example" {
///   active                       = true
///   ca_certificate_pem           = tls_selfsignedcert.ca.cert_pem
///   verification_certificate_pem = tls_locallysignedcert.verification.cert_pem
///   allow_auto_registration      = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.SelfSignedCert;
/// import com.pulumi.tls.SelfSignedCertArgs;
/// import com.pulumi.aws.iot.IotFunctions;
/// import com.pulumi.aws.iot.inputs.GetRegistrationCodeArgs;
/// import com.pulumi.tls.CertRequest;
/// import com.pulumi.tls.CertRequestArgs;
/// import com.pulumi.tls.LocallySignedCert;
/// import com.pulumi.tls.LocallySignedCertArgs;
/// import com.pulumi.aws.iot.CaCertificate;
/// import com.pulumi.aws.iot.CaCertificateArgs;
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
///         var caPrivateKey = new PrivateKey("caPrivateKey", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .build());
///
///         var ca = new SelfSignedCert("ca", SelfSignedCertArgs.builder()
///             .subject(com.pulumi.tls.inputs.SelfSignedCertSubjectArgs.builder()
///                 .commonName("example.com")
///                 .organization("ACME Examples, Inc")
///                 .build())
///             .privateKeyPem(caPrivateKey.privateKeyPem())
///             .validityPeriodHours(12)
///             .allowedUses(
///                 "key_encipherment",
///                 "digital_signature",
///                 "server_auth")
///             .isCaCertificate(true)
///             .build());
///
///         var verificationPrivateKey = new PrivateKey("verificationPrivateKey", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .build());
///
///         final var example = IotFunctions.getRegistrationCode(GetRegistrationCodeArgs.builder()
///             .build());
///
///         var verification = new CertRequest("verification", CertRequestArgs.builder()
///             .subject(com.pulumi.tls.inputs.CertRequestSubjectArgs.builder()
///                 .commonName(example.registrationCode())
///                 .build())
///             .privateKeyPem(verificationPrivateKey.privateKeyPem())
///             .build());
///
///         var verificationLocallySignedCert = new LocallySignedCert("verificationLocallySignedCert", LocallySignedCertArgs.builder()
///             .certRequestPem(verification.certRequestPem())
///             .caPrivateKeyPem(caPrivateKey.privateKeyPem())
///             .caCertPem(ca.certPem())
///             .validityPeriodHours(12)
///             .allowedUses(
///                 "key_encipherment",
///                 "digital_signature",
///                 "server_auth")
///             .build());
///
///         var exampleCaCertificate = new CaCertificate("exampleCaCertificate", CaCertificateArgs.builder()
///             .active(true)
///             .caCertificatePem(ca.certPem())
///             .verificationCertificatePem(verificationLocallySignedCert.certPem())
///             .allowAutoRegistration(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ca:
///     type: tls:SelfSignedCert
///     properties:
///       subject:
///         - commonName: example.com
///           organization: ACME Examples, Inc
///       privateKeyPem: ${caPrivateKey.privateKeyPem}
///       validityPeriodHours: 12
///       allowedUses:
///         - key_encipherment
///         - digital_signature
///         - server_auth
///       isCaCertificate: true
///   caPrivateKey:
///     type: tls:PrivateKey
///     name: ca
///     properties:
///       algorithm: RSA
///   verification:
///     type: tls:CertRequest
///     properties:
///       subject:
///         - commonName: ${example.registrationCode}
///       privateKeyPem: ${verificationPrivateKey.privateKeyPem}
///   verificationPrivateKey:
///     type: tls:PrivateKey
///     name: verification
///     properties:
///       algorithm: RSA
///   verificationLocallySignedCert:
///     type: tls:LocallySignedCert
///     name: verification
///     properties:
///       certRequestPem: ${verification.certRequestPem}
///       caPrivateKeyPem: ${caPrivateKey.privateKeyPem}
///       caCertPem: ${ca.certPem}
///       validityPeriodHours: 12
///       allowedUses:
///         - key_encipherment
///         - digital_signature
///         - server_auth
///   exampleCaCertificate:
///     type: aws:iot:CaCertificate
///     name: example
///     properties:
///       active: true
///       caCertificatePem: ${ca.certPem}
///       verificationCertificatePem: ${verificationLocallySignedCert.certPem}
///       allowAutoRegistration: true
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iot:getRegistrationCode
///       arguments: {}
/// ```
class CaCertificate extends pulumi.CustomResource {
  /// Boolean flag to indicate if the certificate should be active for device authentication.
  late final pulumi.Output<bool> active;
  /// Boolean flag to indicate if the certificate should be active for device regisration.
  late final pulumi.Output<bool> allowAutoRegistration;
  /// The ARN of the created CA certificate.
  late final pulumi.Output<String> arn;
  /// PEM encoded CA certificate.
  late final pulumi.Output<String> caCertificatePem;
  /// The certificate mode in which the CA will be registered. Valid values: `DEFAULT` and `SNI_ONLY`. Default: `DEFAULT`.
  late final pulumi.Output<String?> certificateMode;
  /// The customer version of the CA certificate.
  late final pulumi.Output<int> customerVersion;
  /// The generation ID of the CA certificate.
  late final pulumi.Output<String> generationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Information about the registration configuration. See below.
  late final pulumi.Output<CaCertificateRegistrationConfig?> registrationConfig;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// When the CA certificate is valid.
  late final pulumi.Output<List<CaCertificateValidity>> validities;
  /// PEM encoded verification certificate containing the common name of a registration code. Review
  /// [CreateVerificationCSR](https://docs.aws.amazon.com/iot/latest/developerguide/register-CA-cert.html). Required if `certificateMode` is `DEFAULT`.
  late final pulumi.Output<String?> verificationCertificatePem;

  /// Creates a new [CaCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaCertificate]. {@macro pulumi_iot_ca_certificate_ca_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaCertificate(
    String name, {
    CaCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/caCertificate:CaCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['caCertificatePem', 'verificationCertificatePem'],
        ) {
    active = registerOutput<bool>('active');
    allowAutoRegistration = registerOutput<bool>('allowAutoRegistration');
    arn = registerOutput<String>('arn');
    caCertificatePem = registerOutput<String>('caCertificatePem', isSecret: true);
    certificateMode = registerOutput<String?>('certificateMode');
    customerVersion = registerOutput<int>('customerVersion');
    generationId = registerOutput<String>('generationId');
    region = registerOutput<String>('region');
    registrationConfig = registerOutput<CaCertificateRegistrationConfig?>('registrationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaCertificateRegistrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validities = registerOutput<List<CaCertificateValidity>>('validities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CaCertificateValidity>(guardedValue, (value) => CaCertificateValidity.fromMap((value as Map).cast<String, dynamic>())); });
    verificationCertificatePem = registerOutput<String?>('verificationCertificatePem', isSecret: true);
  }

  /// Gets an existing [CaCertificate] resource's state with the given [name] and [id].
  static CaCertificate get(
    String name,
    pulumi.Input<String> id, {
    CaCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CaCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CaCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/caCertificate:CaCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool>('active');
    allowAutoRegistration = registerOutput<bool>('allowAutoRegistration');
    arn = registerOutput<String>('arn');
    caCertificatePem = registerOutput<String>('caCertificatePem', isSecret: true);
    certificateMode = registerOutput<String?>('certificateMode');
    customerVersion = registerOutput<int>('customerVersion');
    generationId = registerOutput<String>('generationId');
    region = registerOutput<String>('region');
    registrationConfig = registerOutput<CaCertificateRegistrationConfig?>('registrationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaCertificateRegistrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validities = registerOutput<List<CaCertificateValidity>>('validities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CaCertificateValidity>(guardedValue, (value) => CaCertificateValidity.fromMap((value as Map).cast<String, dynamic>())); });
    verificationCertificatePem = registerOutput<String?>('verificationCertificatePem', isSecret: true);
  }

  /// Creates a typed reference to an existing [CaCertificate] resource.
  CaCertificate.reference(String urn)
    : super(
        'aws:iot/caCertificate:CaCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['caCertificatePem', 'verificationCertificatePem'],
        isResourceReference: true,
      ) {
    active = registerOutput<bool>('active');
    allowAutoRegistration = registerOutput<bool>('allowAutoRegistration');
    arn = registerOutput<String>('arn');
    caCertificatePem = registerOutput<String>('caCertificatePem', isSecret: true);
    certificateMode = registerOutput<String?>('certificateMode');
    customerVersion = registerOutput<int>('customerVersion');
    generationId = registerOutput<String>('generationId');
    region = registerOutput<String>('region');
    registrationConfig = registerOutput<CaCertificateRegistrationConfig?>('registrationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaCertificateRegistrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validities = registerOutput<List<CaCertificateValidity>>('validities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CaCertificateValidity>(guardedValue, (value) => CaCertificateValidity.fromMap((value as Map).cast<String, dynamic>())); });
    verificationCertificatePem = registerOutput<String?>('verificationCertificatePem', isSecret: true);
  }
}
