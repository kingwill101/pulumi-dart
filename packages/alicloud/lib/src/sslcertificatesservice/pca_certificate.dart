import 'package:pulumi/pulumi.dart' as pulumi;
import 'pca_certificate_args.dart';

/// Provides a SSL Certificates Pca Certificate resource.
///
///
///
/// For information about SSL Certificates Pca Certificate and how to use it, see [What is Pca Certificate](https://next.api.alibabacloud.com/document/cas/2020-06-30/CreateRootCACertificate).
///
/// > **NOTE:** Available since v1.257.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.sslcertificatesservicepca.Certificate("default", {
///     organization: "a",
///     years: 1,
///     locality: "a",
///     organizationUnit: "a",
///     state: "a",
///     countryCode: "cn",
///     commonName: "cbc.certqa.cn",
///     algorithm: "RSA_2048",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.sslcertificatesservicepca.Certificate("default",
///     organization="a",
///     years=1,
///     locality="a",
///     organization_unit="a",
///     state="a",
///     country_code="cn",
///     common_name="cbc.certqa.cn",
///     algorithm="RSA_2048")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.SslCertificatesServicePca.Certificate("default", new()
///     {
///         Organization = "a",
///         Years = 1,
///         Locality = "a",
///         OrganizationUnit = "a",
///         State = "a",
///         CountryCode = "cn",
///         CommonName = "cbc.certqa.cn",
///         Algorithm = "RSA_2048",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sslcertificatesservicepca"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sslcertificatesservicepca.NewCertificate(ctx, "default", &sslcertificatesservicepca.CertificateArgs{
/// 			Organization:     pulumi.String("a"),
/// 			Years:            pulumi.Int(1),
/// 			Locality:         pulumi.String("a"),
/// 			OrganizationUnit: pulumi.String("a"),
/// 			State:            pulumi.String("a"),
/// 			CountryCode:      pulumi.String("cn"),
/// 			CommonName:       pulumi.String("cbc.certqa.cn"),
/// 			Algorithm:        pulumi.String("RSA_2048"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.sslcertificatesservicepca.Certificate;
/// import com.pulumi.alicloud.sslcertificatesservicepca.CertificateArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .organization("a")
///             .years(1)
///             .locality("a")
///             .organizationUnit("a")
///             .state("a")
///             .countryCode("cn")
///             .commonName("cbc.certqa.cn")
///             .algorithm("RSA_2048")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:sslcertificatesservicepca:Certificate
///     properties:
///       organization: a
///       years: '1'
///       locality: a
///       organizationUnit: a
///       state: a
///       countryCode: cn
///       commonName: cbc.certqa.cn
///       algorithm: RSA_2048
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SSL Certificates Pca Certificate can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sslcertificatesservice/pcaCertificate:PcaCertificate example <id>
/// ```
class PcaCertificate extends pulumi.CustomResource {
  /// The key algorithm type of the CA certificate. The key algorithm is in the <encryption algorithm>_<key length> format. Valid values:
  /// - `RSA_1024`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `RSA_2048`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `RSA_4096`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `ECC_256`: The signature algorithm is Sha256WithECDSA.
  /// - `ECC_384`: The corresponding signature algorithm is Sha256WithECDSA.
  /// - `ECC_512`: The signature algorithm is Sha256WithECDSA.
  /// - `SM2_256`: The corresponding signature algorithm is SM3WithSM2.
  /// > **NOTE:** If `certificate_type` is set to `SUB_ROOT`, `algorithm` is required.
  late final pulumi.Output<String> algorithm;
  late final pulumi.Output<String?> aliasName;
  /// The type of the CA certificate. Default value: `ROOT`. Valid values:
  /// - `ROOT`: A root CA certificate.
  /// - `SUB_ROOT`: A subordinate CA certificate.
  late final pulumi.Output<String> certificateType;
  /// The common name or abbreviation of the organization. Support the use of Chinese, English characters.
  late final pulumi.Output<String> commonName;
  /// The code of the country or region in which the organization is located, using a two-digit capital abbreviation. For example, `CN` represents China and `US` represents the United States.
  late final pulumi.Output<String?> countryCode;
  /// The validity period for the CRL, in days. Valid values: `1` to `365`. **Note:** `crl_day` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  late final pulumi.Output<int> crlDay;
  /// This setting turns the Certificate Revocation List (CRL) service on or off. Valid values:
  late final pulumi.Output<bool?> enableCrl;
  /// The extended key usages. **Note:** `extended_key_usages` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  late final pulumi.Output<List<String>?> extendedKeyUsages;
  /// Name of the city where the organization is located. Support the use of Chinese, English characters.
  late final pulumi.Output<String> locality;
  /// The name of the organization (corresponding to your enterprise or company) associated with the CA certificate. Support the use of Chinese, English characters.
  late final pulumi.Output<String> organization;
  /// The name of the department or branch under the organization. Support the use of Chinese, English characters.
  late final pulumi.Output<String> organizationUnit;
  /// The unique identifier of the root CA certificate.
  /// > **NOTE:** If `certificate_type` is set to `SUB_ROOT`, `parent_identifier` is required.
  late final pulumi.Output<String?> parentIdentifier;
  /// The certificate path length. Default value: `0`. **Note:** `path_len_constraint` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  late final pulumi.Output<int?> pathLenConstraint;
  /// A resource property field representing the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The name of the province, municipality, or autonomous region in which the organization is located. Support the use of Chinese, English characters.
  late final pulumi.Output<String> state;
  /// The status of the CA certificate.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The validity period of the CA certificate, in years.
  /// > **NOTE:**  It is recommended to set to `5` to `10` years.
  late final pulumi.Output<int> years;

  /// Creates a new [PcaCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PcaCertificate]. {@macro pulumi_sslcertificatesservice_pca_certificate_pca_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PcaCertificate(
    String name, {
    PcaCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sslcertificatesservice/pcaCertificate:PcaCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.algorithm = registerOutput<String>('algorithm');
    this.aliasName = registerOutput<String?>('aliasName');
    this.certificateType = registerOutput<String>('certificateType');
    this.commonName = registerOutput<String>('commonName');
    this.countryCode = registerOutput<String?>('countryCode');
    this.crlDay = registerOutput<int>('crlDay');
    this.enableCrl = registerOutput<bool?>('enableCrl');
    this.extendedKeyUsages = registerOutput<List<String>?>('extendedKeyUsages');
    this.locality = registerOutput<String>('locality');
    this.organization = registerOutput<String>('organization');
    this.organizationUnit = registerOutput<String>('organizationUnit');
    this.parentIdentifier = registerOutput<String?>('parentIdentifier');
    this.pathLenConstraint = registerOutput<int?>('pathLenConstraint');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.years = registerOutput<int>('years');
  }
}
