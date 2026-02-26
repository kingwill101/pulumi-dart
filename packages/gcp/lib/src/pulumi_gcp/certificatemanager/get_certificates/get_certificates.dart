import 'package:pulumi/pulumi.dart';
import 'get_certificates_args.dart';
import 'get_certificates_result.dart';

/// List all certificates within Google Certificate Manager for a given project, region or filter.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getCertificates({});
/// export const certificatesNames = _default.then(_default => .map(cert => (cert.name)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_certificates()
/// pulumi.export("certificatesNames", [cert.name for cert in default.certificates])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.CertificateManager.GetCertificates.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["certificatesNames"] = @default.Apply(@default => .Select(cert =>
/// {
/// return cert.Name;
/// }).ToList()),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With A Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getCertificates({
/// filter: "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*",
/// });
/// export const certificatesNames = _default.then(_default => .map(cert => (cert.name)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_certificates(filter="name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*")
/// pulumi.export("certificatesNames", [cert.name for cert in default.certificates])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.CertificateManager.GetCertificates.Invoke(new()
/// {
/// Filter = "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["certificatesNames"] = @default.Apply(@default => .Select(cert =>
/// {
/// return cert.Name;
/// }).ToList()),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Regional Certificates With A Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getCertificates({
/// region: "REGION",
/// filter: "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*",
/// });
/// export const certificatesNames = _default.then(_default => .map(cert => (cert.name)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_certificates(region="REGION",
/// filter="name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*")
/// pulumi.export("certificatesNames", [cert.name for cert in default.certificates])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.CertificateManager.GetCertificates.Invoke(new()
/// {
/// Region = "REGION",
/// Filter = "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["certificatesNames"] = @default.Apply(@default => .Select(cert =>
/// {
/// return cert.Name;
/// }).ToList()),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCertificatesResult> getCertificates(
  GetCertificatesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificatemanager/getCertificates:getCertificates',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificatesResult.fromMap(result);
}
