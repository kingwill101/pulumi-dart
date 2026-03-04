import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_args.dart';
import 'cert_state.dart';

/// Provides a SSL Certificates Pca Cert resource.
///
///
///
/// For information about SSL Certificates Pca Cert and how to use it, see [What is Pca Cert](https://next.api.alibabacloud.com/document/cas/2020-06-30/CreateClientCertificate).
///
/// &gt; **NOTE:** Available since v1.270.0.
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
/// const root = new alicloud.sslcertificatesservicepca.Certificate("root", {
///     organization: "a",
///     years: 1,
///     locality: "a",
///     organizationUnit: "a",
///     state: "a",
///     commonName: "cbc.certqa.cn",
/// });
/// const sub = new alicloud.sslcertificatesservicepca.Certificate("sub", {
///     parentIdentifier: root.id,
///     organization: "a",
///     years: 1,
///     locality: "a",
///     organizationUnit: "a",
///     state: "a",
///     commonName: "cbc.certqa.cn",
///     algorithm: "RSA_2048",
///     certificateType: "SUB_ROOT",
///     enableCrl: true,
/// });
/// const _default = new alicloud.sslcertificatesservicepca.Cert("default", {
///     immediately: 0,
///     organization: "terraform",
///     years: 1,
///     uploadFlag: 0,
///     locality: "terraform",
///     months: 1,
///     customIdentifier: "181",
///     algorithm: "RSA_2048",
///     parentIdentifier: sub.id,
///     sanValue: "somebody@example.com",
///     enableCrl: 1,
///     organizationUnit: "aliyun",
///     state: "Beijing",
///     beforeTime: 1767948807,
///     days: 1,
///     sanType: "1",
///     afterTime: 1768035207,
///     countryCode: "cn",
///     commonName: "exampleTerraform",
///     aliasName: "AliasName",
///     status: "ISSUE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// root = alicloud.sslcertificatesservicepca.Certificate("root",
///     organization="a",
///     years=1,
///     locality="a",
///     organization_unit="a",
///     state="a",
///     common_name="cbc.certqa.cn")
/// sub = alicloud.sslcertificatesservicepca.Certificate("sub",
///     parent_identifier=root.id,
///     organization="a",
///     years=1,
///     locality="a",
///     organization_unit="a",
///     state="a",
///     common_name="cbc.certqa.cn",
///     algorithm="RSA_2048",
///     certificate_type="SUB_ROOT",
///     enable_crl=True)
/// default = alicloud.sslcertificatesservicepca.Cert("default",
///     immediately=0,
///     organization="terraform",
///     years=1,
///     upload_flag=0,
///     locality="terraform",
///     months=1,
///     custom_identifier="181",
///     algorithm="RSA_2048",
///     parent_identifier=sub.id,
///     san_value="somebody@example.com",
///     enable_crl=1,
///     organization_unit="aliyun",
///     state="Beijing",
///     before_time=1767948807,
///     days=1,
///     san_type="1",
///     after_time=1768035207,
///     country_code="cn",
///     common_name="exampleTerraform",
///     alias_name="AliasName",
///     status="ISSUE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var root = new AliCloud.SslCertificatesServicePca.Certificate("root", new()
///     {
///         Organization = "a",
///         Years = 1,
///         Locality = "a",
///         OrganizationUnit = "a",
///         State = "a",
///         CommonName = "cbc.certqa.cn",
///     });
///
///     var sub = new AliCloud.SslCertificatesServicePca.Certificate("sub", new()
///     {
///         ParentIdentifier = root.Id,
///         Organization = "a",
///         Years = 1,
///         Locality = "a",
///         OrganizationUnit = "a",
///         State = "a",
///         CommonName = "cbc.certqa.cn",
///         Algorithm = "RSA_2048",
///         CertificateType = "SUB_ROOT",
///         EnableCrl = true,
///     });
///
///     var @default = new AliCloud.SslCertificatesServicePca.Cert("default", new()
///     {
///         Immediately = 0,
///         Organization = "terraform",
///         Years = 1,
///         UploadFlag = 0,
///         Locality = "terraform",
///         Months = 1,
///         CustomIdentifier = "181",
///         Algorithm = "RSA_2048",
///         ParentIdentifier = sub.Id,
///         SanValue = "somebody@example.com",
///         EnableCrl = 1,
///         OrganizationUnit = "aliyun",
///         State = "Beijing",
///         BeforeTime = 1767948807,
///         Days = 1,
///         SanType = "1",
///         AfterTime = 1768035207,
///         CountryCode = "cn",
///         CommonName = "exampleTerraform",
///         AliasName = "AliasName",
///         Status = "ISSUE",
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
/// 		root, err := sslcertificatesservicepca.NewCertificate(ctx, "root", &sslcertificatesservicepca.CertificateArgs{
/// 			Organization:     pulumi.String("a"),
/// 			Years:            pulumi.Int(1),
/// 			Locality:         pulumi.String("a"),
/// 			OrganizationUnit: pulumi.String("a"),
/// 			State:            pulumi.String("a"),
/// 			CommonName:       pulumi.String("cbc.certqa.cn"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sub, err := sslcertificatesservicepca.NewCertificate(ctx, "sub", &sslcertificatesservicepca.CertificateArgs{
/// 			ParentIdentifier: root.ID(),
/// 			Organization:     pulumi.String("a"),
/// 			Years:            pulumi.Int(1),
/// 			Locality:         pulumi.String("a"),
/// 			OrganizationUnit: pulumi.String("a"),
/// 			State:            pulumi.String("a"),
/// 			CommonName:       pulumi.String("cbc.certqa.cn"),
/// 			Algorithm:        pulumi.String("RSA_2048"),
/// 			CertificateType:  pulumi.String("SUB_ROOT"),
/// 			EnableCrl:        pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sslcertificatesservicepca.NewCert(ctx, "default", &sslcertificatesservicepca.CertArgs{
/// 			Immediately:      pulumi.Int(0),
/// 			Organization:     pulumi.String("terraform"),
/// 			Years:            pulumi.Int(1),
/// 			UploadFlag:       pulumi.Int(0),
/// 			Locality:         pulumi.String("terraform"),
/// 			Months:           pulumi.Int(1),
/// 			CustomIdentifier: pulumi.String("181"),
/// 			Algorithm:        pulumi.String("RSA_2048"),
/// 			ParentIdentifier: sub.ID(),
/// 			SanValue:         pulumi.String("somebody@example.com"),
/// 			EnableCrl:        pulumi.Int(1),
/// 			OrganizationUnit: pulumi.String("aliyun"),
/// 			State:            pulumi.String("Beijing"),
/// 			BeforeTime:       pulumi.Int(1767948807),
/// 			Days:             pulumi.Int(1),
/// 			SanType:          pulumi.String("1"),
/// 			AfterTime:        pulumi.Int(1768035207),
/// 			CountryCode:      pulumi.String("cn"),
/// 			CommonName:       pulumi.String("exampleTerraform"),
/// 			AliasName:        pulumi.String("AliasName"),
/// 			Status:           pulumi.String("ISSUE"),
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
/// import com.pulumi.alicloud.sslcertificatesservicepca.Cert;
/// import com.pulumi.alicloud.sslcertificatesservicepca.CertArgs;
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
///         var root = new Certificate("root", CertificateArgs.builder()
///             .organization("a")
///             .years(1)
///             .locality("a")
///             .organizationUnit("a")
///             .state("a")
///             .commonName("cbc.certqa.cn")
///             .build());
///
///         var sub = new Certificate("sub", CertificateArgs.builder()
///             .parentIdentifier(root.id())
///             .organization("a")
///             .years(1)
///             .locality("a")
///             .organizationUnit("a")
///             .state("a")
///             .commonName("cbc.certqa.cn")
///             .algorithm("RSA_2048")
///             .certificateType("SUB_ROOT")
///             .enableCrl(true)
///             .build());
///
///         var default_ = new Cert("default", CertArgs.builder()
///             .immediately(0)
///             .organization("terraform")
///             .years(1)
///             .uploadFlag(0)
///             .locality("terraform")
///             .months(1)
///             .customIdentifier("181")
///             .algorithm("RSA_2048")
///             .parentIdentifier(sub.id())
///             .sanValue("somebody@example.com")
///             .enableCrl(1)
///             .organizationUnit("aliyun")
///             .state("Beijing")
///             .beforeTime(1767948807)
///             .days(1)
///             .sanType("1")
///             .afterTime(1768035207)
///             .countryCode("cn")
///             .commonName("exampleTerraform")
///             .aliasName("AliasName")
///             .status("ISSUE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   root:
///     type: alicloud:sslcertificatesservicepca:Certificate
///     properties:
///       organization: a
///       years: '1'
///       locality: a
///       organizationUnit: a
///       state: a
///       commonName: cbc.certqa.cn
///   sub:
///     type: alicloud:sslcertificatesservicepca:Certificate
///     properties:
///       parentIdentifier: ${root.id}
///       organization: a
///       years: '1'
///       locality: a
///       organizationUnit: a
///       state: a
///       commonName: cbc.certqa.cn
///       algorithm: RSA_2048
///       certificateType: SUB_ROOT
///       enableCrl: true
///   default:
///     type: alicloud:sslcertificatesservicepca:Cert
///     properties:
///       immediately: '0'
///       organization: terraform
///       years: '1'
///       uploadFlag: '0'
///       locality: terraform
///       months: '1'
///       customIdentifier: '181'
///       algorithm: RSA_2048
///       parentIdentifier: ${sub.id}
///       sanValue: somebody@example.com
///       enableCrl: '1'
///       organizationUnit: aliyun
///       state: Beijing
///       beforeTime: '1767948807'
///       days: '1'
///       sanType: '1'
///       afterTime: '1768035207'
///       countryCode: cn
///       commonName: exampleTerraform
///       aliasName: AliasName
///       status: ISSUE
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SSL Certificates Pca Cert can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sslcertificatesservicepca/cert:Cert example <id>
/// ```
class Cert extends pulumi.CustomResource {
  /// The service expiration time of the client certificate, specified as a Unix timestamp in seconds.
  ///
  /// &gt; **NOTE:**  The `before_time` and `after_time` parameters must either both be empty or both be specified.
  ///
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> afterTime;

  /// The key algorithm of the client certificate. The key algorithm is specified in the format `_`. Valid values:
  /// - `RSA_1024`: corresponds to the signature algorithm Sha256WithRSA.
  /// - `RSA_2048`: corresponds to the signature algorithm Sha256WithRSA.
  /// - `RSA_4096`: corresponds to the signature algorithm Sha256WithRSA.
  /// - `ECC_256`: corresponds to the signature algorithm Sha256WithECDSA.
  /// - `ECC_384`: corresponds to the signature algorithm Sha256WithECDSA.
  /// - `ECC_512`: corresponds to the signature algorithm Sha256WithECDSA.
  /// - `SM2_256`: corresponds to the signature algorithm SM3WithSM2.
  ///
  /// The encryption algorithm of the client certificate must match that of the subordinate CA certificate, but the key length may differ. For example, if the key algorithm of the subordinate CA certificate is RSA_2048, the key algorithm of the client certificate must be one of RSA_1024, RSA_2048, or RSA_4096.
  ///
  /// &gt; **NOTE:** You can call [DescribeCACertificate](https://help.aliyun.com/document_detail/465954.html) to query the key algorithm of the subordinate CA certificate.
  late final pulumi.Output<String> algorithm;

  /// The name assigned to the issued certificate.
  late final pulumi.Output<String?> aliasName;

  /// The issuance time of the client certificate, in timestamp format. By default, it is set to the time when you call this API. Unit: seconds.
  ///
  /// &gt; **NOTE:**  The `before_time` and `after_time` parameters must either both be empty or both be specified.
  late final pulumi.Output<int?> beforeTime;

  /// Name of the certificate subject. For a Client Authentication (ClientAuth) certificate, the subject is typically an individual, company, organization, or application. We recommend using the common name of the subject—for example, Zhang San, Alibaba, Alibaba Cloud KMS, or Tmall Genie.
  late final pulumi.Output<String?> commonName;

  /// Country code of the organization associated with the subordinate CA certificate that issued this certificate.
  /// For the meanings of different country codes, see the **International Codes** section in [Manage Company Information](https://help.aliyun.com/document_detail/198289.html).
  late final pulumi.Output<String?> countryCode;

  /// A user-defined unique identifier.
  late final pulumi.Output<String?> customIdentifier;

  /// Validity period of the client certificate, in days.
  ///
  /// The `days`, `before_time`, and `after_time` parameters cannot all be empty. Additionally, `before_time` and `after_time` must either both be set or both remain unset. The specific rules are as follows:
  /// - If you set the `days` parameter, you may optionally also set `before_time` and `after_time`.
  /// - If you do not set the `days` parameter, you must set both `before_time` and `after_time`.
  ///
  /// &gt; **NOTE:** - If you set `days`, `before_time`, and `after_time` simultaneously, the validity period of the client certificate is determined by the value of `days`.
  /// - The validity period of the client certificate cannot exceed that of the issuing subordinate CA certificate. You can call [DescribeCACertificate](https://help.aliyun.com/document_detail/465954.html) to check the validity period of the subordinate CA certificate.
  late final pulumi.Output<int> days;

  /// Whether to include the CRL URL. Valid values:
  late final pulumi.Output<int?> enableCrl;

  /// Specifies whether to return the digital certificate immediately. Valid values:
  late final pulumi.Output<int?> immediately;

  /// The name of the city where the organization associated with the certificate is located. Chinese characters, English letters, and other characters are supported.
  /// By default, this value is the same as the city name of the organization associated with the issuing subordinate CA certificate.
  late final pulumi.Output<String?> locality;

  /// The duration for which the certificate is purchased, in months.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> months;

  /// Name of the organization associated with the subordinate CA certificate that issued this certificate.
  late final pulumi.Output<String?> organization;

  /// Department name. Default: Aliyun CDN.
  late final pulumi.Output<String?> organizationUnit;

  /// The unique identifier of the subordinate CA certificate that issued this certificate.
  late final pulumi.Output<String> parentIdentifier;

  /// The resource group ID. You can obtain this ID by calling the [ListResources](https://help.aliyun.com/document_detail/2716559.html) operation.
  late final pulumi.Output<String> resourceGroupId;

  /// The Subject Alternative Name (SAN) type supported by the client certificate. Valid values:
  late final pulumi.Output<String?> sanType;

  /// Specific extension information for the client certificate. You can enter multiple extensions. If you need to specify multiple extensions, separate them with commas (,).
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> sanValue;

  /// The name of the province, municipality, or autonomous region where the certificate's organization is located. Chinese and English characters are supported. By default, this value is the same as the province, municipality, or autonomous region of the organization associated with the subordinate CA certificate that issued this certificate.
  /// The name of the state or province where the certificate's organization is located. Chinese and English characters are supported. By default, this value is the same as the state or province of the organization associated with the subordinate CA certificate that issued this certificate.
  late final pulumi.Output<String?> state;

  /// The status of the certificate. Valid values:
  /// - `REVOKE`: indicates that the certificate has been revoked.
  /// &gt; **NOTE:** If you want to destroy `alicloud.sslcertificatesservicepca.Cert`, `status` must be set to `REVOKE`
  late final pulumi.Output<String> status;

  /// Information about the queried instances and their associated tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Indicates whether the certificate has been uploaded to the SSL certificate management platform.
  late final pulumi.Output<int?> uploadFlag;

  /// The duration for which the certificate is purchased, in years.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> years;

  /// Creates a new [Cert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cert]. {@macro pulumi_sslcertificatesservicepca_cert_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cert(String name, {CertArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:sslcertificatesservicepca/cert:Cert',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    afterTime = registerOutput<int?>('afterTime');
    algorithm = registerOutput<String>('algorithm');
    aliasName = registerOutput<String?>('aliasName');
    beforeTime = registerOutput<int?>('beforeTime');
    commonName = registerOutput<String?>('commonName');
    countryCode = registerOutput<String?>('countryCode');
    customIdentifier = registerOutput<String?>('customIdentifier');
    days = registerOutput<int>('days');
    enableCrl = registerOutput<int?>('enableCrl');
    immediately = registerOutput<int?>('immediately');
    locality = registerOutput<String?>('locality');
    months = registerOutput<int?>('months');
    organization = registerOutput<String?>('organization');
    organizationUnit = registerOutput<String?>('organizationUnit');
    parentIdentifier = registerOutput<String>('parentIdentifier');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    sanType = registerOutput<String?>('sanType');
    sanValue = registerOutput<String?>('sanValue');
    state = registerOutput<String?>('state');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    uploadFlag = registerOutput<int?>('uploadFlag');
    years = registerOutput<int?>('years');
  }

  /// Gets an existing [Cert] resource's state with the given [name] and [id].
  static Cert get(String name, pulumi.Input<String> id, {CertState? state}) {
    return Cert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sslcertificatesservicepca/cert:Cert',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    afterTime = registerOutput<int?>('afterTime');
    algorithm = registerOutput<String>('algorithm');
    aliasName = registerOutput<String?>('aliasName');
    beforeTime = registerOutput<int?>('beforeTime');
    commonName = registerOutput<String?>('commonName');
    countryCode = registerOutput<String?>('countryCode');
    customIdentifier = registerOutput<String?>('customIdentifier');
    days = registerOutput<int>('days');
    enableCrl = registerOutput<int?>('enableCrl');
    immediately = registerOutput<int?>('immediately');
    locality = registerOutput<String?>('locality');
    months = registerOutput<int?>('months');
    organization = registerOutput<String?>('organization');
    organizationUnit = registerOutput<String?>('organizationUnit');
    parentIdentifier = registerOutput<String>('parentIdentifier');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    sanType = registerOutput<String?>('sanType');
    sanValue = registerOutput<String?>('sanValue');
    this.state = registerOutput<String?>('state');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    uploadFlag = registerOutput<int?>('uploadFlag');
    years = registerOutput<int?>('years');
  }
}
