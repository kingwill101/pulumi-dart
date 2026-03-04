import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_key_args.dart';
import 'client_key_state.dart';

/// Provides a KMS Client Key resource. Client key (of Application Access Point).
///
/// For information about KMS Client Key and how to use it, see [What is Client Key](https://www.alibabacloud.com/help/zh/key-management-service/latest/api-createclientkey).
///
/// &gt; **NOTE:** Available since v1.210.0.
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
/// const AAP0 = new alicloud.kms.ApplicationAccessPoint("AAP0", {
///     policies: ["aa"],
///     description: "aa",
///     applicationAccessPointName: name,
/// });
/// const _default = new alicloud.kms.ClientKey("default", {
///     aapName: AAP0.applicationAccessPointName,
///     password: "YouPassword123!",
///     notBefore: "2023-09-01T14:11:22Z",
///     notAfter: "2028-09-01T14:11:22Z",
///     privateKeyDataFile: "./private_key_data_file.txt",
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
/// aap0 = alicloud.kms.ApplicationAccessPoint("AAP0",
///     policies=["aa"],
///     description="aa",
///     application_access_point_name=name)
/// default = alicloud.kms.ClientKey("default",
///     aap_name=aap0.application_access_point_name,
///     password="YouPassword123!",
///     not_before="2023-09-01T14:11:22Z",
///     not_after="2028-09-01T14:11:22Z",
///     private_key_data_file="./private_key_data_file.txt")
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
///     var AAP0 = new AliCloud.Kms.ApplicationAccessPoint("AAP0", new()
///     {
///         Policies = new[]
///         {
///             "aa",
///         },
///         Description = "aa",
///         ApplicationAccessPointName = name,
///     });
///
///     var @default = new AliCloud.Kms.ClientKey("default", new()
///     {
///         AapName = AAP0.ApplicationAccessPointName,
///         Password = "YouPassword123!",
///         NotBefore = "2023-09-01T14:11:22Z",
///         NotAfter = "2028-09-01T14:11:22Z",
///         PrivateKeyDataFile = "./private_key_data_file.txt",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
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
/// 		AAP0, err := kms.NewApplicationAccessPoint(ctx, "AAP0", &kms.ApplicationAccessPointArgs{
/// 			Policies: pulumi.StringArray{
/// 				pulumi.String("aa"),
/// 			},
/// 			Description:                pulumi.String("aa"),
/// 			ApplicationAccessPointName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewClientKey(ctx, "default", &kms.ClientKeyArgs{
/// 			AapName:            AAP0.ApplicationAccessPointName,
/// 			Password:           pulumi.String("YouPassword123!"),
/// 			NotBefore:          pulumi.String("2023-09-01T14:11:22Z"),
/// 			NotAfter:           pulumi.String("2028-09-01T14:11:22Z"),
/// 			PrivateKeyDataFile: pulumi.String("./private_key_data_file.txt"),
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
/// import com.pulumi.alicloud.kms.ApplicationAccessPoint;
/// import com.pulumi.alicloud.kms.ApplicationAccessPointArgs;
/// import com.pulumi.alicloud.kms.ClientKey;
/// import com.pulumi.alicloud.kms.ClientKeyArgs;
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
///         var aAP0 = new ApplicationAccessPoint("AAP0", ApplicationAccessPointArgs.builder()
///             .policies("aa")
///             .description("aa")
///             .applicationAccessPointName(name)
///             .build());
///
///         var default_ = new ClientKey("default", ClientKeyArgs.builder()
///             .aapName(AAP0.applicationAccessPointName())
///             .password("YouPassword123!")
///             .notBefore("2023-09-01T14:11:22Z")
///             .notAfter("2028-09-01T14:11:22Z")
///             .privateKeyDataFile("./private_key_data_file.txt")
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
///   AAP0:
///     type: alicloud:kms:ApplicationAccessPoint
///     properties:
///       policies:
///         - aa
///       description: aa
///       applicationAccessPointName: ${name}
///   default:
///     type: alicloud:kms:ClientKey
///     properties:
///       aapName: ${AAP0.applicationAccessPointName}
///       password: YouPassword123!
///       notBefore: 2023-09-01T14:11:22Z
///       notAfter: 2028-09-01T14:11:22Z
///       privateKeyDataFile: ./private_key_data_file.txt
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS Client Key can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/clientKey:ClientKey example <id>
/// ```
///
/// Resource attributes such as `password`, `private_key_data_file` are not available for imported resources as this information cannot be read from the KMS API.
class ClientKey extends pulumi.CustomResource {
  /// ClientKey's parent Application Access Point name.
  late final pulumi.Output<String> aapName;

  /// Create timestamp, e.g. "2022-08-10T08:03:30Z".
  late final pulumi.Output<String> createTime;

  /// The ClientKey expiration time. Example: "2027-08-10 T08:03:30Z".
  late final pulumi.Output<String?> notAfter;

  /// The valid start time of the ClientKey. Example: "2022-08-10 T08:03:30Z".
  late final pulumi.Output<String?> notBefore;

  /// To enhance security, set a password for the downloaded Client Key,When an application accesses KMS, you must use the ClientKey content and this password to initialize the SDK client.
  late final pulumi.Output<String> password;

  /// The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  late final pulumi.Output<String?> privateKeyDataFile;

  /// Creates a new [ClientKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientKey]. {@macro pulumi_kms_client_key_client_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientKey(
    String name, {
    ClientKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:kms/clientKey:ClientKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aapName = registerOutput<String>('aapName');
    createTime = registerOutput<String>('createTime');
    notAfter = registerOutput<String?>('notAfter');
    notBefore = registerOutput<String?>('notBefore');
    password = registerOutput<String>('password');
    privateKeyDataFile = registerOutput<String?>('privateKeyDataFile');
  }

  /// Gets an existing [ClientKey] resource's state with the given [name] and [id].
  static ClientKey get(
    String name,
    pulumi.Input<String> id, {
    ClientKeyState? state,
  }) {
    return ClientKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClientKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:kms/clientKey:ClientKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aapName = registerOutput<String>('aapName');
    createTime = registerOutput<String>('createTime');
    notAfter = registerOutput<String?>('notAfter');
    notBefore = registerOutput<String?>('notBefore');
    password = registerOutput<String>('password');
    privateKeyDataFile = registerOutput<String?>('privateKeyDataFile');
  }
}
