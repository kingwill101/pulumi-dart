import 'package:pulumi/pulumi.dart' as pulumi;
import 'scim_server_credential_args.dart';

/// Provides a Cloud SSO SCIM Server Credential resource.
///
/// For information about Cloud SSO SCIM Server Credential and how to use it, see [What is Cloud SSO SCIM Server Credential](https://www.alibabacloud.com/help/en/cloudsso/latest/api-cloudsso-2021-05-15-createscimservercredential).
///
/// > **NOTE:** Available since v1.138.0.
///
/// > **NOTE:** Cloud SSO Only Support `cn-shanghai` And `us-west-1` Region
///
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.cloudsso.getDirectories({});
/// const defaultScimServerCredential = new alicloud.cloudsso.ScimServerCredential("default", {
///     directoryId: _default.then(_default => _default.directories?.[0]?.id),
///     credentialSecretFile: "./credential_secret_file.txt",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cloudsso.get_directories()
/// default_scim_server_credential = alicloud.cloudsso.ScimServerCredential("default",
///     directory_id=default.directories[0].id,
///     credential_secret_file="./credential_secret_file.txt")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.CloudSso.GetDirectories.Invoke();
///
///     var defaultScimServerCredential = new AliCloud.CloudSso.ScimServerCredential("default", new()
///     {
///         DirectoryId = @default.Apply(@default => @default.Apply(getDirectoriesResult => getDirectoriesResult.Directories[0]?.Id)),
///         CredentialSecretFile = "./credential_secret_file.txt",
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
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := cloudsso.GetDirectories(ctx, &cloudsso.GetDirectoriesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsso.NewScimServerCredential(ctx, "default", &cloudsso.ScimServerCredentialArgs{
/// 			DirectoryId:          pulumi.String(_default.Directories[0].Id),
/// 			CredentialSecretFile: pulumi.String("./credential_secret_file.txt"),
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
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetDirectoriesArgs;
/// import com.pulumi.alicloud.cloudsso.ScimServerCredential;
/// import com.pulumi.alicloud.cloudsso.ScimServerCredentialArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = CloudssoFunctions.getDirectories(GetDirectoriesArgs.builder()
///             .build());
///
///         var defaultScimServerCredential = new ScimServerCredential("defaultScimServerCredential", ScimServerCredentialArgs.builder()
///             .directoryId(default_.directories()[0].id())
///             .credentialSecretFile("./credential_secret_file.txt")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultScimServerCredential:
///     type: alicloud:cloudsso:ScimServerCredential
///     name: default
///     properties:
///       directoryId: ${default.directories[0].id}
///       credentialSecretFile: ./credential_secret_file.txt
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudsso:getDirectories
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud SSO SCIM Server Credential can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudsso/scimServerCredential:ScimServerCredential example <directory_id>:<credential_id>
/// ```
class ScimServerCredential extends pulumi.CustomResource {
  /// (Available since v1.245.0) The time when the SCIM credential was created.
  late final pulumi.Output<String> createTime;
  /// The ID of the SCIM credential.
  late final pulumi.Output<String> credentialId;
  /// The name of file that can save Credential ID and Credential Secret. Strongly suggest you to specified it when you creating credential, otherwise, you wouldn't get its secret ever.
  late final pulumi.Output<String?> credentialSecretFile;
  /// (Available since v1.245.0) The type of the SCIM credential.
  late final pulumi.Output<String> credentialType;
  /// The ID of the Directory.
  late final pulumi.Output<String> directoryId;
  /// (Available since v1.245.0) The time when the SCIM credential expires.
  late final pulumi.Output<String> expireTime;
  /// The status of the SCIM Server Credential. Valid values: `Enabled`, `Disabled`.
  late final pulumi.Output<String> status;

  /// Creates a new [ScimServerCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScimServerCredential]. {@macro pulumi_cloudsso_scim_server_credential_scim_server_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScimServerCredential(
    String name, {
    ScimServerCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/scimServerCredential:ScimServerCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.credentialId = registerOutput<String>('credentialId');
    this.credentialSecretFile = registerOutput<String?>('credentialSecretFile');
    this.credentialType = registerOutput<String>('credentialType');
    this.directoryId = registerOutput<String>('directoryId');
    this.expireTime = registerOutput<String>('expireTime');
    this.status = registerOutput<String>('status');
  }
}
