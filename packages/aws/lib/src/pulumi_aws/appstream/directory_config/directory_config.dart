import 'package:pulumi/pulumi.dart';
import '../directory_config_certificate_based_auth_properties/directory_config_certificate_based_auth_properties.dart';
import '../directory_config_service_account_credentials/directory_config_service_account_credentials.dart';
import 'directory_config_args.dart';

/// Provides an AppStream Directory Config.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appstream.DirectoryConfig("example", {
/// directoryName: "NAME OF DIRECTORY",
/// organizationalUnitDistinguishedNames: ["DISTINGUISHED NAME"],
/// serviceAccountCredentials: {
/// accountName: "NAME OF ACCOUNT",
/// accountPassword: "PASSWORD OF ACCOUNT",
/// },
/// certificateBasedAuthProperties: {
/// certificateAuthorityArn: "ARN OF CERTIFICATE AUTHORITY",
/// status: "STATUS OF CERTIFICATE BASED AUTHENTICATION",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appstream.DirectoryConfig("example",
/// directory_name="NAME OF DIRECTORY",
/// organizational_unit_distinguished_names=["DISTINGUISHED NAME"],
/// service_account_credentials={
/// "account_name": "NAME OF ACCOUNT",
/// "account_password": "PASSWORD OF ACCOUNT",
/// },
/// certificate_based_auth_properties={
/// "certificate_authority_arn": "ARN OF CERTIFICATE AUTHORITY",
/// "status": "STATUS OF CERTIFICATE BASED AUTHENTICATION",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppStream.DirectoryConfig("example", new()
/// {
/// DirectoryName = "NAME OF DIRECTORY",
/// OrganizationalUnitDistinguishedNames = new[]
/// {
/// "DISTINGUISHED NAME",
/// },
/// ServiceAccountCredentials = new Aws.AppStream.Inputs.DirectoryConfigServiceAccountCredentialsArgs
/// {
/// AccountName = "NAME OF ACCOUNT",
/// AccountPassword = "PASSWORD OF ACCOUNT",
/// },
/// CertificateBasedAuthProperties = new Aws.AppStream.Inputs.DirectoryConfigCertificateBasedAuthPropertiesArgs
/// {
/// CertificateAuthorityArn = "ARN OF CERTIFICATE AUTHORITY",
/// Status = "STATUS OF CERTIFICATE BASED AUTHENTICATION",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appstream.NewDirectoryConfig(ctx, "example", &appstream.DirectoryConfigArgs{
/// DirectoryName: pulumi.String("NAME OF DIRECTORY"),
/// OrganizationalUnitDistinguishedNames: pulumi.StringArray{
/// pulumi.String("DISTINGUISHED NAME"),
/// },
/// ServiceAccountCredentials: &appstream.DirectoryConfigServiceAccountCredentialsArgs{
/// AccountName:     pulumi.String("NAME OF ACCOUNT"),
/// AccountPassword: pulumi.String("PASSWORD OF ACCOUNT"),
/// },
/// CertificateBasedAuthProperties: &appstream.DirectoryConfigCertificateBasedAuthPropertiesArgs{
/// CertificateAuthorityArn: pulumi.String("ARN OF CERTIFICATE AUTHORITY"),
/// Status:                  pulumi.String("STATUS OF CERTIFICATE BASED AUTHENTICATION"),
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
/// import com.pulumi.aws.appstream.DirectoryConfig;
/// import com.pulumi.aws.appstream.DirectoryConfigArgs;
/// import com.pulumi.aws.appstream.inputs.DirectoryConfigServiceAccountCredentialsArgs;
/// import com.pulumi.aws.appstream.inputs.DirectoryConfigCertificateBasedAuthPropertiesArgs;
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
/// var example = new DirectoryConfig("example", DirectoryConfigArgs.builder()
/// .directoryName("NAME OF DIRECTORY")
/// .organizationalUnitDistinguishedNames("DISTINGUISHED NAME")
/// .serviceAccountCredentials(DirectoryConfigServiceAccountCredentialsArgs.builder()
/// .accountName("NAME OF ACCOUNT")
/// .accountPassword("PASSWORD OF ACCOUNT")
/// .build())
/// .certificateBasedAuthProperties(DirectoryConfigCertificateBasedAuthPropertiesArgs.builder()
/// .certificateAuthorityArn("ARN OF CERTIFICATE AUTHORITY")
/// .status("STATUS OF CERTIFICATE BASED AUTHENTICATION")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appstream:DirectoryConfig
/// properties:
/// directoryName: NAME OF DIRECTORY
/// organizationalUnitDistinguishedNames:
/// - DISTINGUISHED NAME
/// serviceAccountCredentials:
/// accountName: NAME OF ACCOUNT
/// accountPassword: PASSWORD OF ACCOUNT
/// certificateBasedAuthProperties:
/// certificateAuthorityArn: ARN OF CERTIFICATE AUTHORITY
/// status: STATUS OF CERTIFICATE BASED AUTHENTICATION
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.appstream.DirectoryConfig`" pulumi-lang-dotnet="`aws.appstream.DirectoryConfig`" pulumi-lang-go="`appstream.DirectoryConfig`" pulumi-lang-python="`appstream.DirectoryConfig`" pulumi-lang-yaml="`aws.appstream.DirectoryConfig`" pulumi-lang-java="`aws.appstream.DirectoryConfig`">`aws.appstream.DirectoryConfig`</span> using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/directoryConfig:DirectoryConfig example directoryNameExample
/// ```
class DirectoryConfig extends CustomResource {
  /// Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See <span pulumi-lang-nodejs="`certificateBasedAuthProperties`" pulumi-lang-dotnet="`CertificateBasedAuthProperties`" pulumi-lang-go="`certificateBasedAuthProperties`" pulumi-lang-python="`certificate_based_auth_properties`" pulumi-lang-yaml="`certificateBasedAuthProperties`" pulumi-lang-java="`certificateBasedAuthProperties`">`certificate_based_auth_properties`</span> below.
  late final Output<DirectoryConfigCertificateBasedAuthProperties?>
      certificateBasedAuthProperties;

  /// Date and time, in UTC and extended RFC 3339 format, when the directory config was created.
  late final Output<String> createdTime;

  /// Fully qualified name of the directory.
  late final Output<String> directoryName;

  /// Distinguished names of the organizational units for computer accounts.
  late final Output<List<String>> organizationalUnitDistinguishedNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See <span pulumi-lang-nodejs="`serviceAccountCredentials`" pulumi-lang-dotnet="`ServiceAccountCredentials`" pulumi-lang-go="`serviceAccountCredentials`" pulumi-lang-python="`service_account_credentials`" pulumi-lang-yaml="`serviceAccountCredentials`" pulumi-lang-java="`serviceAccountCredentials`">`service_account_credentials`</span> below.
  late final Output<DirectoryConfigServiceAccountCredentials>
      serviceAccountCredentials;

  DirectoryConfig(
    String name, {
    DirectoryConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/directoryConfig:DirectoryConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateBasedAuthProperties =
        registerOutput<DirectoryConfigCertificateBasedAuthProperties?>(
            'certificateBasedAuthProperties');
    this.createdTime = registerOutput<String>('createdTime');
    this.directoryName = registerOutput<String>('directoryName');
    this.organizationalUnitDistinguishedNames =
        registerOutput<List<String>>('organizationalUnitDistinguishedNames');
    this.region = registerOutput<String>('region');
    this.serviceAccountCredentials =
        registerOutput<DirectoryConfigServiceAccountCredentials>(
            'serviceAccountCredentials');
  }
}
