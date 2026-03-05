import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_args.dart';
import 'directory_login_preference.dart';
import 'directory_mfa_authentication_setting_info.dart';
import 'directory_password_policy.dart';
import 'directory_saml_identity_provider_configuration.dart';
import 'directory_saml_service_provider.dart';
import 'directory_state.dart';
import 'directory_user_provisioning_configuration.dart';

/// Provides a Cloud SSO Directory resource.
///
///
///
/// For information about Cloud SSO Directory and how to use it, see [What is Directory](https://www.alibabacloud.com/help/en/cloudsso/latest/api-cloudsso-2021-05-15-createdirectory).
///
/// &gt; **NOTE:** Available since v1.135.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new alicloud.cloudsso.Directory("default", {directoryName: name});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.cloudsso.Directory("default", directory_name=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new AliCloud.CloudSso.Directory("default", new()
///     {
///         DirectoryName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := cloudsso.NewDirectory(ctx, "default", &cloudsso.DirectoryArgs{
/// 			DirectoryName: pulumi.String(name),
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
/// import com.pulumi.alicloud.cloudsso.Directory;
/// import com.pulumi.alicloud.cloudsso.DirectoryArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         var default_ = new Directory("default", DirectoryArgs.builder()
///             .directoryName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   default:
///     type: alicloud:cloudsso:Directory
///     properties:
///       directoryName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud SSO Directory can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudsso/directory:Directory example <id>
/// ```
class Directory extends pulumi.CustomResource {
  /// CreateTime
  late final pulumi.Output<String> createTime;
  /// Directory Global Acceleration activation status
  late final pulumi.Output<String> directoryGlobalAccessStatus;
  /// DirectoryName
  late final pulumi.Output<String?> directoryName;
  /// Login preferences See `login_preference` below.
  late final pulumi.Output<DirectoryLoginPreference> loginPreference;
  /// Global MFA verification configuration. See `mfa_authentication_setting_info` below.
  late final pulumi.Output<DirectoryMfaAuthenticationSettingInfo> mfaAuthenticationSettingInfo;
  /// MFA Authentication Status
  late final pulumi.Output<String> mfaAuthenticationStatus;
  /// Password policy See `password_policy` below.
  late final pulumi.Output<DirectoryPasswordPolicy> passwordPolicy;
  /// Identity Provider (IDP) See `saml_identity_provider_configuration` below.
  late final pulumi.Output<DirectorySamlIdentityProviderConfiguration> samlIdentityProviderConfiguration;
  /// SP information. See `saml_service_provider` below.
  late final pulumi.Output<DirectorySamlServiceProvider> samlServiceProvider;
  /// SCIM Synchronization Status
  late final pulumi.Output<String> scimSynchronizationStatus;
  /// User Provisioning configuration See `user_provisioning_configuration` below.
  late final pulumi.Output<DirectoryUserProvisioningConfiguration> userProvisioningConfiguration;

  /// Creates a new [Directory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Directory]. {@macro pulumi_cloudsso_directory_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Directory(
    String name, {
    DirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/directory:Directory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    directoryGlobalAccessStatus = registerOutput<String>('directoryGlobalAccessStatus');
    directoryName = registerOutput<String?>('directoryName');
    loginPreference = registerOutput<DirectoryLoginPreference>('loginPreference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryLoginPreference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaAuthenticationSettingInfo = registerOutput<DirectoryMfaAuthenticationSettingInfo>('mfaAuthenticationSettingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryMfaAuthenticationSettingInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaAuthenticationStatus = registerOutput<String>('mfaAuthenticationStatus');
    passwordPolicy = registerOutput<DirectoryPasswordPolicy>('passwordPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryPasswordPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samlIdentityProviderConfiguration = registerOutput<DirectorySamlIdentityProviderConfiguration>('samlIdentityProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectorySamlIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samlServiceProvider = registerOutput<DirectorySamlServiceProvider>('samlServiceProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectorySamlServiceProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scimSynchronizationStatus = registerOutput<String>('scimSynchronizationStatus');
    userProvisioningConfiguration = registerOutput<DirectoryUserProvisioningConfiguration>('userProvisioningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryUserProvisioningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Directory] resource's state with the given [name] and [id].
  static Directory get(
    String name,
    pulumi.Input<String> id, {
    DirectoryState? state,
  }) {
    return Directory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Directory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/directory:Directory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    directoryGlobalAccessStatus = registerOutput<String>('directoryGlobalAccessStatus');
    directoryName = registerOutput<String?>('directoryName');
    loginPreference = registerOutput<DirectoryLoginPreference>('loginPreference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryLoginPreference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaAuthenticationSettingInfo = registerOutput<DirectoryMfaAuthenticationSettingInfo>('mfaAuthenticationSettingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryMfaAuthenticationSettingInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaAuthenticationStatus = registerOutput<String>('mfaAuthenticationStatus');
    passwordPolicy = registerOutput<DirectoryPasswordPolicy>('passwordPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryPasswordPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samlIdentityProviderConfiguration = registerOutput<DirectorySamlIdentityProviderConfiguration>('samlIdentityProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectorySamlIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samlServiceProvider = registerOutput<DirectorySamlServiceProvider>('samlServiceProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectorySamlServiceProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scimSynchronizationStatus = registerOutput<String>('scimSynchronizationStatus');
    userProvisioningConfiguration = registerOutput<DirectoryUserProvisioningConfiguration>('userProvisioningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryUserProvisioningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
