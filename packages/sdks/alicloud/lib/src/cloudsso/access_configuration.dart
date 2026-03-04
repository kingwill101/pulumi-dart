import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_configuration_args.dart';
import 'access_configuration_state.dart';

/// Provides a Cloud SSO Access Configuration resource.
///
/// For information about Cloud SSO Access Configuration and how to use it, see [What is Access Configuration](https://www.alibabacloud.com/help/en/cloudsso/latest/api-cloudsso-2021-05-15-createaccessconfiguration).
///
/// &gt; **NOTE:** Available since v1.145.0.
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
/// const defaultAccessConfiguration = new alicloud.cloudsso.AccessConfiguration("default", {
///     directoryId: _default.then(_default => _default.directories?.[0]?.id),
///     accessConfigurationName: name,
///     permissionPolicies: [{
///         permissionPolicyType: "Inline",
///         permissionPolicyName: name,
///         permissionPolicyDocument: `    {
///         \\"Statement\\":[
///       {
///         \\"Action\\":\\"ecs:Get*\\",
///         \\"Effect\\":\\"Allow\\",
///         \\"Resource\\":[
///             \\"*\\"
///         ]
///       }
///       ],
///         \\"Version\\": \\"1\\"
///     }
/// `,
///     }],
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
/// default_access_configuration = alicloud.cloudsso.AccessConfiguration("default",
///     directory_id=default.directories[0].id,
///     access_configuration_name=name,
///     permission_policies=[{
///         "permission_policy_type": "Inline",
///         "permission_policy_name": name,
///         "permission_policy_document": """    {
///         \"Statement\":[
///       {
///         \"Action\":\"ecs:Get*\",
///         \"Effect\":\"Allow\",
///         \"Resource\":[
///             \"*\"
///         ]
///       }
///       ],
///         \"Version\": \"1\"
///     }
/// """,
///     }])
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
///     var defaultAccessConfiguration = new AliCloud.CloudSso.AccessConfiguration("default", new()
///     {
///         DirectoryId = @default.Apply(@default => @default.Apply(getDirectoriesResult => getDirectoriesResult.Directories[0]?.Id)),
///         AccessConfigurationName = name,
///         PermissionPolicies = new[]
///         {
///             new AliCloud.CloudSso.Inputs.AccessConfigurationPermissionPolicyArgs
///             {
///                 PermissionPolicyType = "Inline",
///                 PermissionPolicyName = name,
///                 PermissionPolicyDocument = @"    {
///         \""Statement\"":[
///       {
///         \""Action\"":\""ecs:Get*\"",
///         \""Effect\"":\""Allow\"",
///         \""Resource\"":[
///             \""*\""
///         ]
///       }
///       ],
///         \""Version\"": \""1\""
///     }
/// ",
///             },
///         },
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
/// 		_, err = cloudsso.NewAccessConfiguration(ctx, "default", &cloudsso.AccessConfigurationArgs{
/// 			DirectoryId:             pulumi.String(_default.Directories[0].Id),
/// 			AccessConfigurationName: pulumi.String(name),
/// 			PermissionPolicies: cloudsso.AccessConfigurationPermissionPolicyArray{
/// 				&cloudsso.AccessConfigurationPermissionPolicyArgs{
/// 					PermissionPolicyType: pulumi.String("Inline"),
/// 					PermissionPolicyName: pulumi.String(name),
/// 					PermissionPolicyDocument: pulumi.String(`    {
///         \"Statement\":[
///       {
///         \"Action\":\"ecs:Get*\",
///         \"Effect\":\"Allow\",
///         \"Resource\":[
///             \"*\"
///         ]
///       }
///       ],
///         \"Version\": \"1\"
///     }
/// `),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.cloudsso.AccessConfiguration;
/// import com.pulumi.alicloud.cloudsso.AccessConfigurationArgs;
/// import com.pulumi.alicloud.cloudsso.inputs.AccessConfigurationPermissionPolicyArgs;
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
///         var defaultAccessConfiguration = new AccessConfiguration("defaultAccessConfiguration", AccessConfigurationArgs.builder()
///             .directoryId(default_.directories()[0].id())
///             .accessConfigurationName(name)
///             .permissionPolicies(AccessConfigurationPermissionPolicyArgs.builder()
///                 .permissionPolicyType("Inline")
///                 .permissionPolicyName(name)
///                 .permissionPolicyDocument("""
///     {
///         \"Statement\":[
///       {
///         \"Action\":\"ecs:Get*\",
///         \"Effect\":\"Allow\",
///         \"Resource\":[
///             \"*\"
///         ]
///       }
///       ],
///         \"Version\": \"1\"
///     }
///                 """)
///                 .build())
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
///   defaultAccessConfiguration:
///     type: alicloud:cloudsso:AccessConfiguration
///     name: default
///     properties:
///       directoryId: ${default.directories[0].id}
///       accessConfigurationName: ${name}
///       permissionPolicies:
///         - permissionPolicyType: Inline
///           permissionPolicyName: ${name}
///           permissionPolicyDocument: |2
///                 {
///                     \"Statement\":[
///                   {
///                     \"Action\":\"ecs:Get*\",
///                     \"Effect\":\"Allow\",
///                     \"Resource\":[
///                         \"*\"
///                     ]
///                   }
///                   ],
///                     \"Version\": \"1\"
///                 }
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
/// Cloud SSO Access Configuration can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudsso/accessConfiguration:AccessConfiguration example <directory_id>:<access_configuration_id>
/// ```
class AccessConfiguration extends pulumi.CustomResource {
  /// The ID of the Access Configuration.
  late final pulumi.Output<String> accessConfigurationId;

  /// The name of the access configuration. The name can be up to `32` characters long and can contain letters, digits, and hyphens (-).
  late final pulumi.Output<String> accessConfigurationName;

  /// The description of the access configuration. The description can be up to `1024` characters in length.
  late final pulumi.Output<String?> description;

  /// The ID of the Directory.
  late final pulumi.Output<String> directoryId;

  /// This parameter is used to force deletion `permission_policies`. Valid Value: `true`, `false`.
  ///
  /// * **NOTE:** The `permission_policies` will be removed automatically when the resource is deleted, please operate with caution. If there are left more permission policies in the access configuration, please remove them before deleting the access configuration.
  late final pulumi.Output<bool?> forceRemovePermissionPolicies;

  /// The Policy List. See `permission_policies` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissionPolicies;

  /// The RelayState of the Access Configuration, Cloud SSO users use this access configuration to access the RD account, the initial access page address. Must be the Alibaba Cloud console page, the default is the console home page.
  late final pulumi.Output<String?> relayState;

  /// The SessionDuration of the Access Configuration. Unit: Seconds. Valid values: `900` to `43200`.
  late final pulumi.Output<int> sessionDuration;

  /// Creates a new [AccessConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessConfiguration]. {@macro pulumi_cloudsso_access_configuration_access_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessConfiguration(
    String name, {
    AccessConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudsso/accessConfiguration:AccessConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessConfigurationId = registerOutput<String>('accessConfigurationId');
    accessConfigurationName = registerOutput<String>('accessConfigurationName');
    description = registerOutput<String?>('description');
    directoryId = registerOutput<String>('directoryId');
    forceRemovePermissionPolicies = registerOutput<bool?>(
      'forceRemovePermissionPolicies',
    );
    permissionPolicies = registerOutput<List<Map<String, dynamic>>?>(
      'permissionPolicies',
    );
    relayState = registerOutput<String?>('relayState');
    sessionDuration = registerOutput<int>('sessionDuration');
  }

  /// Gets an existing [AccessConfiguration] resource's state with the given [name] and [id].
  static AccessConfiguration get(
    String name,
    pulumi.Input<String> id, {
    AccessConfigurationState? state,
  }) {
    return AccessConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudsso/accessConfiguration:AccessConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessConfigurationId = registerOutput<String>('accessConfigurationId');
    accessConfigurationName = registerOutput<String>('accessConfigurationName');
    description = registerOutput<String?>('description');
    directoryId = registerOutput<String>('directoryId');
    forceRemovePermissionPolicies = registerOutput<bool?>(
      'forceRemovePermissionPolicies',
    );
    permissionPolicies = registerOutput<List<Map<String, dynamic>>?>(
      'permissionPolicies',
    );
    relayState = registerOutput<String?>('relayState');
    sessionDuration = registerOutput<int>('sessionDuration');
  }
}
