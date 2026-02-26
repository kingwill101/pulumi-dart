import 'package:pulumi/pulumi.dart';
import 'backend_authentication_config_args.dart';

/// BackendAuthenticationConfig groups the TrustConfig together with other settings that control how the load balancer authenticates, and expresses its identity to the backend.
///
///
/// To get more information about BackendAuthenticationConfig, see:
/// * How-to Guides
/// * [Backend mTLS](https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#backend-authentication-config)
///
/// ## Example Usage
///
/// ### Network Security Backend Authentication Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.BackendAuthenticationConfig("default", {
/// name: "my-backend-authentication-config",
/// labels: {
/// foo: "bar",
/// },
/// description: "my description",
/// wellKnownRoots: "PUBLIC_ROOTS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.BackendAuthenticationConfig("default",
/// name="my-backend-authentication-config",
/// labels={
/// "foo": "bar",
/// },
/// description="my description",
/// well_known_roots="PUBLIC_ROOTS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.BackendAuthenticationConfig("default", new()
/// {
/// Name = "my-backend-authentication-config",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Description = "my description",
/// WellKnownRoots = "PUBLIC_ROOTS",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networksecurity.NewBackendAuthenticationConfig(ctx, "default", &networksecurity.BackendAuthenticationConfigArgs{
/// Name: pulumi.String("my-backend-authentication-config"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Description:    pulumi.String("my description"),
/// WellKnownRoots: pulumi.String("PUBLIC_ROOTS"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfig;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new BackendAuthenticationConfig("default", BackendAuthenticationConfigArgs.builder()
/// .name("my-backend-authentication-config")
/// .labels(Map.of("foo", "bar"))
/// .description("my description")
/// .wellKnownRoots("PUBLIC_ROOTS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:BackendAuthenticationConfig
/// properties:
/// name: my-backend-authentication-config
/// labels:
/// foo: bar
/// description: my description
/// wellKnownRoots: PUBLIC_ROOTS
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Security Backend Authentication Config Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const certificate = new gcp.certificatemanager.Certificate("certificate", {
/// name: "my-certificate",
/// labels: {
/// foo: "bar",
/// },
/// location: "global",
/// selfManaged: {
/// pemCertificate: std.file({
/// input: "test-fixtures/cert.pem",
/// }).then(invoke => invoke.result),
/// pemPrivateKey: std.file({
/// input: "test-fixtures/key.pem",
/// }).then(invoke => invoke.result),
/// },
/// scope: "CLIENT_AUTH",
/// });
/// const trustConfig = new gcp.certificatemanager.TrustConfig("trust_config", {
/// name: "my-trust-config",
/// description: "sample description for the trust config",
/// location: "global",
/// trustStores: [{
/// trustAnchors: [{
/// pemCertificate: std.file({
/// input: "test-fixtures/cert.pem",
/// }).then(invoke => invoke.result),
/// }],
/// intermediateCas: [{
/// pemCertificate: std.file({
/// input: "test-fixtures/cert.pem",
/// }).then(invoke => invoke.result),
/// }],
/// }],
/// labels: {
/// foo: "bar",
/// },
/// });
/// const _default = new gcp.networksecurity.BackendAuthenticationConfig("default", {
/// name: "my-backend-authentication-config",
/// labels: {
/// bar: "foo",
/// },
/// location: "global",
/// description: "my description",
/// wellKnownRoots: "PUBLIC_ROOTS",
/// clientCertificate: certificate.id,
/// trustConfig: trustConfig.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// certificate = gcp.certificatemanager.Certificate("certificate",
/// name="my-certificate",
/// labels={
/// "foo": "bar",
/// },
/// location="global",
/// self_managed={
/// "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
/// "pem_private_key": std.file(input="test-fixtures/key.pem").result,
/// },
/// scope="CLIENT_AUTH")
/// trust_config = gcp.certificatemanager.TrustConfig("trust_config",
/// name="my-trust-config",
/// description="sample description for the trust config",
/// location="global",
/// trust_stores=[{
/// "trust_anchors": [{
/// "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
/// }],
/// "intermediate_cas": [{
/// "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
/// }],
/// }],
/// labels={
/// "foo": "bar",
/// })
/// default = gcp.networksecurity.BackendAuthenticationConfig("default",
/// name="my-backend-authentication-config",
/// labels={
/// "bar": "foo",
/// },
/// location="global",
/// description="my description",
/// well_known_roots="PUBLIC_ROOTS",
/// client_certificate=certificate.id,
/// trust_config=trust_config.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var certificate = new Gcp.CertificateManager.Certificate("certificate", new()
/// {
/// Name = "my-certificate",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Location = "global",
/// SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/cert.pem",
/// }).Apply(invoke => invoke.Result),
/// PemPrivateKey = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/key.pem",
/// }).Apply(invoke => invoke.Result),
/// },
/// Scope = "CLIENT_AUTH",
/// });
///
/// var trustConfig = new Gcp.CertificateManager.TrustConfig("trust_config", new()
/// {
/// Name = "my-trust-config",
/// Description = "sample description for the trust config",
/// Location = "global",
/// TrustStores = new[]
/// {
/// new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreArgs
/// {
/// TrustAnchors = new[]
/// {
/// new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreTrustAnchorArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/cert.pem",
/// }).Apply(invoke => invoke.Result),
/// },
/// },
/// IntermediateCas = new[]
/// {
/// new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreIntermediateCaArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/cert.pem",
/// }).Apply(invoke => invoke.Result),
/// },
/// },
/// },
/// },
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// var @default = new Gcp.NetworkSecurity.BackendAuthenticationConfig("default", new()
/// {
/// Name = "my-backend-authentication-config",
/// Labels =
/// {
/// { "bar", "foo" },
/// },
/// Location = "global",
/// Description = "my description",
/// WellKnownRoots = "PUBLIC_ROOTS",
/// ClientCertificate = certificate.Id,
/// TrustConfig = trustConfig.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/cert.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile1, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/key.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// certificate, err := certificatemanager.NewCertificate(ctx, "certificate", &certificatemanager.CertificateArgs{
/// Name: pulumi.String("my-certificate"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Location: pulumi.String("global"),
/// SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// PemCertificate: pulumi.String(invokeFile.Result),
/// PemPrivateKey:  pulumi.String(invokeFile1.Result),
/// },
/// Scope: pulumi.String("CLIENT_AUTH"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile2, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/cert.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile3, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/cert.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// trustConfig, err := certificatemanager.NewTrustConfig(ctx, "trust_config", &certificatemanager.TrustConfigArgs{
/// Name:        pulumi.String("my-trust-config"),
/// Description: pulumi.String("sample description for the trust config"),
/// Location:    pulumi.String("global"),
/// TrustStores: certificatemanager.TrustConfigTrustStoreArray{
/// &certificatemanager.TrustConfigTrustStoreArgs{
/// TrustAnchors: certificatemanager.TrustConfigTrustStoreTrustAnchorArray{
/// &certificatemanager.TrustConfigTrustStoreTrustAnchorArgs{
/// PemCertificate: pulumi.String(invokeFile2.Result),
/// },
/// },
/// IntermediateCas: certificatemanager.TrustConfigTrustStoreIntermediateCaArray{
/// &certificatemanager.TrustConfigTrustStoreIntermediateCaArgs{
/// PemCertificate: pulumi.String(invokeFile3.Result),
/// },
/// },
/// },
/// },
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewBackendAuthenticationConfig(ctx, "default", &networksecurity.BackendAuthenticationConfigArgs{
/// Name: pulumi.String("my-backend-authentication-config"),
/// Labels: pulumi.StringMap{
/// "bar": pulumi.String("foo"),
/// },
/// Location:          pulumi.String("global"),
/// Description:       pulumi.String("my description"),
/// WellKnownRoots:    pulumi.String("PUBLIC_ROOTS"),
/// ClientCertificate: certificate.ID(),
/// TrustConfig:       trustConfig.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.certificatemanager.TrustConfig;
/// import com.pulumi.gcp.certificatemanager.TrustConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreArgs;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfig;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var certificate = new Certificate("certificate", CertificateArgs.builder()
/// .name("my-certificate")
/// .labels(Map.of("foo", "bar"))
/// .location("global")
/// .selfManaged(CertificateSelfManagedArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/cert.pem")
/// .build()).result())
/// .pemPrivateKey(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/key.pem")
/// .build()).result())
/// .build())
/// .scope("CLIENT_AUTH")
/// .build());
///
/// var trustConfig = new TrustConfig("trustConfig", TrustConfigArgs.builder()
/// .name("my-trust-config")
/// .description("sample description for the trust config")
/// .location("global")
/// .trustStores(TrustConfigTrustStoreArgs.builder()
/// .trustAnchors(TrustConfigTrustStoreTrustAnchorArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/cert.pem")
/// .build()).result())
/// .build())
/// .intermediateCas(TrustConfigTrustStoreIntermediateCaArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/cert.pem")
/// .build()).result())
/// .build())
/// .build())
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// var default_ = new BackendAuthenticationConfig("default", BackendAuthenticationConfigArgs.builder()
/// .name("my-backend-authentication-config")
/// .labels(Map.of("bar", "foo"))
/// .location("global")
/// .description("my description")
/// .wellKnownRoots("PUBLIC_ROOTS")
/// .clientCertificate(certificate.id())
/// .trustConfig(trustConfig.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// certificate:
/// type: gcp:certificatemanager:Certificate
/// properties:
/// name: my-certificate
/// labels:
/// foo: bar
/// location: global
/// selfManaged:
/// pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/cert.pem
/// return: result
/// pemPrivateKey:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/key.pem
/// return: result
/// scope: CLIENT_AUTH
/// trustConfig:
/// type: gcp:certificatemanager:TrustConfig
/// name: trust_config
/// properties:
/// name: my-trust-config
/// description: sample description for the trust config
/// location: global
/// trustStores:
/// - trustAnchors:
/// - pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/cert.pem
/// return: result
/// intermediateCas:
/// - pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/cert.pem
/// return: result
/// labels:
/// foo: bar
/// default:
/// type: gcp:networksecurity:BackendAuthenticationConfig
/// properties:
/// name: my-backend-authentication-config
/// labels:
/// bar: foo
/// location: global
/// description: my description
/// wellKnownRoots: PUBLIC_ROOTS
/// clientCertificate: ${certificate.id}
/// trustConfig: ${trustConfig.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Backend Service Tls Settings
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
/// name: "health-check",
/// httpHealthCheck: {
/// port: 80,
/// },
/// });
/// const defaultBackendAuthenticationConfig = new gcp.networksecurity.BackendAuthenticationConfig("default", {
/// name: "authentication",
/// wellKnownRoots: "PUBLIC_ROOTS",
/// });
/// const _default = new gcp.compute.BackendService("default", {
/// name: "backend-service",
/// healthChecks: defaultHealthCheck.id,
/// loadBalancingScheme: "EXTERNAL_MANAGED",
/// protocol: "HTTPS",
/// tlsSettings: {
/// sni: "example.com",
/// subjectAltNames: [
/// {
/// dnsName: "example.com",
/// },
/// {
/// uniformResourceIdentifier: "https://example.com",
/// },
/// ],
/// authenticationConfig: pulumi.interpolate`//networksecurity.googleapis.com/${defaultBackendAuthenticationConfig.id}`,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
/// name="health-check",
/// http_health_check={
/// "port": 80,
/// })
/// default_backend_authentication_config = gcp.networksecurity.BackendAuthenticationConfig("default",
/// name="authentication",
/// well_known_roots="PUBLIC_ROOTS")
/// default = gcp.compute.BackendService("default",
/// name="backend-service",
/// health_checks=default_health_check.id,
/// load_balancing_scheme="EXTERNAL_MANAGED",
/// protocol="HTTPS",
/// tls_settings={
/// "sni": "example.com",
/// "subject_alt_names": [
/// {
/// "dns_name": "example.com",
/// },
/// {
/// "uniform_resource_identifier": "https://example.com",
/// },
/// ],
/// "authentication_config": default_backend_authentication_config.id.apply(lambda id: f"//networksecurity.googleapis.com/{id}"),
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
/// {
/// Name = "health-check",
/// HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var defaultBackendAuthenticationConfig = new Gcp.NetworkSecurity.BackendAuthenticationConfig("default", new()
/// {
/// Name = "authentication",
/// WellKnownRoots = "PUBLIC_ROOTS",
/// });
///
/// var @default = new Gcp.Compute.BackendService("default", new()
/// {
/// Name = "backend-service",
/// HealthChecks = defaultHealthCheck.Id,
/// LoadBalancingScheme = "EXTERNAL_MANAGED",
/// Protocol = "HTTPS",
/// TlsSettings = new Gcp.Compute.Inputs.BackendServiceTlsSettingsArgs
/// {
/// Sni = "example.com",
/// SubjectAltNames = new[]
/// {
/// new Gcp.Compute.Inputs.BackendServiceTlsSettingsSubjectAltNameArgs
/// {
/// DnsName = "example.com",
/// },
/// new Gcp.Compute.Inputs.BackendServiceTlsSettingsSubjectAltNameArgs
/// {
/// UniformResourceIdentifier = "https://example.com",
/// },
/// },
/// AuthenticationConfig = defaultBackendAuthenticationConfig.Id.Apply(id => $"//networksecurity.googleapis.com/{id}"),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// Name: pulumi.String("health-check"),
/// HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultBackendAuthenticationConfig, err := networksecurity.NewBackendAuthenticationConfig(ctx, "default", &networksecurity.BackendAuthenticationConfigArgs{
/// Name:           pulumi.String("authentication"),
/// WellKnownRoots: pulumi.String("PUBLIC_ROOTS"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// Name:                pulumi.String("backend-service"),
/// HealthChecks:        defaultHealthCheck.ID(),
/// LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// Protocol:            pulumi.String("HTTPS"),
/// TlsSettings: &compute.BackendServiceTlsSettingsArgs{
/// Sni: pulumi.String("example.com"),
/// SubjectAltNames: compute.BackendServiceTlsSettingsSubjectAltNameArray{
/// &compute.BackendServiceTlsSettingsSubjectAltNameArgs{
/// DnsName: pulumi.String("example.com"),
/// },
/// &compute.BackendServiceTlsSettingsSubjectAltNameArgs{
/// UniformResourceIdentifier: pulumi.String("https://example.com"),
/// },
/// },
/// AuthenticationConfig: defaultBackendAuthenticationConfig.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//networksecurity.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfig;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfigArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceTlsSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
/// .name("health-check")
/// .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var defaultBackendAuthenticationConfig = new BackendAuthenticationConfig("defaultBackendAuthenticationConfig", BackendAuthenticationConfigArgs.builder()
/// .name("authentication")
/// .wellKnownRoots("PUBLIC_ROOTS")
/// .build());
///
/// var default_ = new BackendService("default", BackendServiceArgs.builder()
/// .name("backend-service")
/// .healthChecks(defaultHealthCheck.id())
/// .loadBalancingScheme("EXTERNAL_MANAGED")
/// .protocol("HTTPS")
/// .tlsSettings(BackendServiceTlsSettingsArgs.builder()
/// .sni("example.com")
/// .subjectAltNames(
/// BackendServiceTlsSettingsSubjectAltNameArgs.builder()
/// .dnsName("example.com")
/// .build(),
/// BackendServiceTlsSettingsSubjectAltNameArgs.builder()
/// .uniformResourceIdentifier("https://example.com")
/// .build())
/// .authenticationConfig(defaultBackendAuthenticationConfig.id().applyValue(_id -> String.format("//networksecurity.googleapis.com/%s", _id)))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:BackendService
/// properties:
/// name: backend-service
/// healthChecks: ${defaultHealthCheck.id}
/// loadBalancingScheme: EXTERNAL_MANAGED
/// protocol: HTTPS
/// tlsSettings:
/// sni: example.com
/// subjectAltNames:
/// - dnsName: example.com
/// - uniformResourceIdentifier: https://example.com
/// authenticationConfig: //networksecurity.googleapis.com/${defaultBackendAuthenticationConfig.id}
/// defaultHealthCheck:
/// type: gcp:compute:HealthCheck
/// name: default
/// properties:
/// name: health-check
/// httpHealthCheck:
/// port: 80
/// defaultBackendAuthenticationConfig:
/// type: gcp:networksecurity:BackendAuthenticationConfig
/// name: default
/// properties:
/// name: authentication
/// wellKnownRoots: PUBLIC_ROOTS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// BackendAuthenticationConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backendAuthenticationConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BackendAuthenticationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/backendAuthenticationConfig:BackendAuthenticationConfig default projects/{{project}}/locations/{{location}}/backendAuthenticationConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/backendAuthenticationConfig:BackendAuthenticationConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/backendAuthenticationConfig:BackendAuthenticationConfig default {{location}}/{{name}}
/// ```
class BackendAuthenticationConfig extends CustomResource {
  /// Reference to a Certificate resource from the certificatemanager.googleapis.com namespace.
  /// Used by a BackendService to negotiate mTLS when the backend connection uses TLS and the backend requests a client certificate. Must have a CLIENT_AUTH scope.
  late final Output<String?> clientCertificate;

  /// Time the BackendAuthenticationConfig was created in UTC.
  late final Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the BackendAuthenticationConfig resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the backend authentication config.
  /// The default value is <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  late final Output<String?> location;

  /// Name of the BackendAuthenticationConfig resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Reference to a TrustConfig resource from the certificatemanager.googleapis.com namespace.
  /// A BackendService uses the chain of trust represented by this TrustConfig, if specified, to validate the server certificates presented by the backend. Required unless wellKnownRoots is set to PUBLIC_ROOTS.
  late final Output<String?> trustConfig;

  /// Time the BackendAuthenticationConfig was updated in UTC.
  late final Output<String> updateTime;

  /// Well known roots to use for server certificate validation. If set to NONE, the BackendService will only validate server certificates against roots specified in TrustConfig.
  /// If set to PUBLIC_ROOTS, the BackendService uses a set of well-known public roots, in addition to any roots specified in the trustConfig field, when validating the server certificates presented by the backend.
  /// Validation with these roots is only considered when the TlsSettings.sni field in the BackendService is set. The well-known roots are a set of root CAs managed by Google. CAs in this set can be added or removed without notice.
  /// Possible values are: `NONE`, `PUBLIC_ROOTS`.
  late final Output<String?> wellKnownRoots;

  BackendAuthenticationConfig(
    String name, {
    BackendAuthenticationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/backendAuthenticationConfig:BackendAuthenticationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientCertificate = registerOutput<String?>('clientCertificate');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.trustConfig = registerOutput<String?>('trustConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.wellKnownRoots = registerOutput<String?>('wellKnownRoots');
  }
}
