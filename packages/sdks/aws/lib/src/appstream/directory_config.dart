import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_config_args.dart';
import 'directory_config_certificate_based_auth_properties.dart';
import 'directory_config_service_account_credentials.dart';
import 'directory_config_state.dart';

/// Provides an AppStream Directory Config.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appstream.DirectoryConfig("example", {
///     serviceAccountCredentials: {
///         accountName: "NAME OF ACCOUNT",
///         accountPassword: "PASSWORD OF ACCOUNT",
///     },
///     certificateBasedAuthProperties: {
///         certificateAuthorityArn: "ARN OF CERTIFICATE AUTHORITY",
///         status: "STATUS OF CERTIFICATE BASED AUTHENTICATION",
///     },
///     directoryName: "NAME OF DIRECTORY",
///     organizationalUnitDistinguishedNames: ["DISTINGUISHED NAME"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appstream.DirectoryConfig("example",
///     service_account_credentials={
///         "account_name": "NAME OF ACCOUNT",
///         "account_password": "PASSWORD OF ACCOUNT",
///     },
///     certificate_based_auth_properties={
///         "certificate_authority_arn": "ARN OF CERTIFICATE AUTHORITY",
///         "status": "STATUS OF CERTIFICATE BASED AUTHENTICATION",
///     },
///     directory_name="NAME OF DIRECTORY",
///     organizational_unit_distinguished_names=["DISTINGUISHED NAME"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppStream.DirectoryConfig("example", new()
///     {
///         ServiceAccountCredentials = new Aws.AppStream.Inputs.DirectoryConfigServiceAccountCredentialsArgs
///         {
///             AccountName = "NAME OF ACCOUNT",
///             AccountPassword = "PASSWORD OF ACCOUNT",
///         },
///         CertificateBasedAuthProperties = new Aws.AppStream.Inputs.DirectoryConfigCertificateBasedAuthPropertiesArgs
///         {
///             CertificateAuthorityArn = "ARN OF CERTIFICATE AUTHORITY",
///             Status = "STATUS OF CERTIFICATE BASED AUTHENTICATION",
///         },
///         DirectoryName = "NAME OF DIRECTORY",
///         OrganizationalUnitDistinguishedNames = new[]
///         {
///             "DISTINGUISHED NAME",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appstream.NewDirectoryConfig(ctx, "example", &appstream.DirectoryConfigArgs{
/// 			ServiceAccountCredentials: &appstream.DirectoryConfigServiceAccountCredentialsArgs{
/// 				AccountName:     pulumi.String("NAME OF ACCOUNT"),
/// 				AccountPassword: pulumi.String("PASSWORD OF ACCOUNT"),
/// 			},
/// 			CertificateBasedAuthProperties: &appstream.DirectoryConfigCertificateBasedAuthPropertiesArgs{
/// 				CertificateAuthorityArn: pulumi.String("ARN OF CERTIFICATE AUTHORITY"),
/// 				Status:                  pulumi.String("STATUS OF CERTIFICATE BASED AUTHENTICATION"),
/// 			},
/// 			DirectoryName: pulumi.String("NAME OF DIRECTORY"),
/// 			OrganizationalUnitDistinguishedNames: pulumi.StringArray{
/// 				pulumi.String("DISTINGUISHED NAME"),
/// 			},
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
/// resource "aws_appstream_directoryconfig" "example" {
///   service_account_credentials = {
///     account_name     = "NAME OF ACCOUNT"
///     account_password = "PASSWORD OF ACCOUNT"
///   }
///   certificate_based_auth_properties = {
///     certificate_authority_arn = "ARN OF CERTIFICATE AUTHORITY"
///     status                    = "STATUS OF CERTIFICATE BASED AUTHENTICATION"
///   }
///   directory_name                          = "NAME OF DIRECTORY"
///   organizational_unit_distinguished_names = ["DISTINGUISHED NAME"]
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
///         var example = new DirectoryConfig("example", DirectoryConfigArgs.builder()
///             .serviceAccountCredentials(DirectoryConfigServiceAccountCredentialsArgs.builder()
///                 .accountName("NAME OF ACCOUNT")
///                 .accountPassword("PASSWORD OF ACCOUNT")
///                 .build())
///             .certificateBasedAuthProperties(DirectoryConfigCertificateBasedAuthPropertiesArgs.builder()
///                 .certificateAuthorityArn("ARN OF CERTIFICATE AUTHORITY")
///                 .status("STATUS OF CERTIFICATE BASED AUTHENTICATION")
///                 .build())
///             .directoryName("NAME OF DIRECTORY")
///             .organizationalUnitDistinguishedNames("DISTINGUISHED NAME")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appstream:DirectoryConfig
///     properties:
///       serviceAccountCredentials:
///         accountName: NAME OF ACCOUNT
///         accountPassword: PASSWORD OF ACCOUNT
///       certificateBasedAuthProperties:
///         certificateAuthorityArn: ARN OF CERTIFICATE AUTHORITY
///         status: STATUS OF CERTIFICATE BASED AUTHENTICATION
///       directoryName: NAME OF DIRECTORY
///       organizationalUnitDistinguishedNames:
///         - DISTINGUISHED NAME
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.DirectoryConfig` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/directoryConfig:DirectoryConfig example directoryNameExample
/// ```
class DirectoryConfig extends pulumi.CustomResource {
  /// Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificateBasedAuthProperties` below.
  late final pulumi.Output<DirectoryConfigCertificateBasedAuthProperties?> certificateBasedAuthProperties;
  /// Date and time, in UTC and extended RFC 3339 format, when the directory config was created.
  late final pulumi.Output<String> createdTime;
  /// Fully qualified name of the directory.
  late final pulumi.Output<String> directoryName;
  /// Distinguished names of the organizational units for computer accounts.
  late final pulumi.Output<List<String>> organizationalUnitDistinguishedNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `serviceAccountCredentials` below.
  late final pulumi.Output<DirectoryConfigServiceAccountCredentials> serviceAccountCredentials;

  /// Creates a new [DirectoryConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DirectoryConfig]. {@macro pulumi_appstream_directory_config_directory_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DirectoryConfig(
    String name, {
    DirectoryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/directoryConfig:DirectoryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    certificateBasedAuthProperties = registerOutput<DirectoryConfigCertificateBasedAuthProperties?>('certificateBasedAuthProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryConfigCertificateBasedAuthProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTime = registerOutput<String>('createdTime');
    directoryName = registerOutput<String>('directoryName');
    organizationalUnitDistinguishedNames = registerOutput<List<String>>('organizationalUnitDistinguishedNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    serviceAccountCredentials = registerOutput<DirectoryConfigServiceAccountCredentials>('serviceAccountCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryConfigServiceAccountCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DirectoryConfig] resource's state with the given [name] and [id].
  static DirectoryConfig get(
    String name,
    pulumi.Input<String> id, {
    DirectoryConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DirectoryConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DirectoryConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/directoryConfig:DirectoryConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateBasedAuthProperties = registerOutput<DirectoryConfigCertificateBasedAuthProperties?>('certificateBasedAuthProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryConfigCertificateBasedAuthProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTime = registerOutput<String>('createdTime');
    directoryName = registerOutput<String>('directoryName');
    organizationalUnitDistinguishedNames = registerOutput<List<String>>('organizationalUnitDistinguishedNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    serviceAccountCredentials = registerOutput<DirectoryConfigServiceAccountCredentials>('serviceAccountCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryConfigServiceAccountCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DirectoryConfig] resource.
  DirectoryConfig.reference(String urn)
    : super(
        'aws:appstream/directoryConfig:DirectoryConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateBasedAuthProperties = registerOutput<DirectoryConfigCertificateBasedAuthProperties?>('certificateBasedAuthProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryConfigCertificateBasedAuthProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTime = registerOutput<String>('createdTime');
    directoryName = registerOutput<String>('directoryName');
    organizationalUnitDistinguishedNames = registerOutput<List<String>>('organizationalUnitDistinguishedNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    serviceAccountCredentials = registerOutput<DirectoryConfigServiceAccountCredentials>('serviceAccountCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryConfigServiceAccountCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
