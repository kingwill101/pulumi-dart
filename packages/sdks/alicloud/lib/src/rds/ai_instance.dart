import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_instance_args.dart';
import 'ai_instance_state.dart';

/// Provides a Rds Ai Instance resource.
///
///
///
/// For information about Rds Ai Instance and how to use it, see [What is Instance](https://next.api.alibabacloud.com/document/RdsAi/2025-05-07/CreateAppInstance).
///
/// &gt; **NOTE:** Available since v1.268.0.
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
/// const _default = alicloud.vpc.getSwitches({
///     zoneId: "cn-hangzhou-i",
/// });
/// const defaultInstance = new alicloud.rds.Instance("default", {
///     engine: "PostgreSQL",
///     engineVersion: "17.0",
///     dbInstanceStorageType: "general_essd",
///     instanceType: "pg.n2.1c.1m",
///     instanceStorage: 100,
///     vswitchId: _default.then(_default => _default.ids?.[0]),
///     instanceName: name,
/// });
/// const defaultAiInstance = new alicloud.rds.AiInstance("default", {
///     appName: name,
///     appType: "supabase",
///     dbInstanceName: defaultInstance.id,
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
/// default = alicloud.vpc.get_switches(zone_id="cn-hangzhou-i")
/// default_instance = alicloud.rds.Instance("default",
///     engine="PostgreSQL",
///     engine_version="17.0",
///     db_instance_storage_type="general_essd",
///     instance_type="pg.n2.1c.1m",
///     instance_storage=100,
///     vswitch_id=default.ids[0],
///     instance_name=name)
/// default_ai_instance = alicloud.rds.AiInstance("default",
///     app_name=name,
///     app_type="supabase",
///     db_instance_name=default_instance.id)
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
///     var @default = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         ZoneId = "cn-hangzhou-i",
///     });
///
///     var defaultInstance = new AliCloud.Rds.Instance("default", new()
///     {
///         Engine = "PostgreSQL",
///         EngineVersion = "17.0",
///         DbInstanceStorageType = "general_essd",
///         InstanceType = "pg.n2.1c.1m",
///         InstanceStorage = 100,
///         VswitchId = @default.Apply(@default => @default.Apply(getSwitchesResult => getSwitchesResult.Ids[0])),
///         InstanceName = name,
///     });
///
///     var defaultAiInstance = new AliCloud.Rds.AiInstance("default", new()
///     {
///         AppName = name,
///         AppType = "supabase",
///         DbInstanceName = defaultInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			ZoneId: pulumi.StringRef("cn-hangzhou-i"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("PostgreSQL"),
/// 			EngineVersion:         pulumi.String("17.0"),
/// 			DbInstanceStorageType: pulumi.String("general_essd"),
/// 			InstanceType:          pulumi.String("pg.n2.1c.1m"),
/// 			InstanceStorage:       pulumi.Int(100),
/// 			VswitchId:             pulumi.String(_default.Ids[0]),
/// 			InstanceName:          pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewAiInstance(ctx, "default", &rds.AiInstanceArgs{
/// 			AppName:        pulumi.String(name),
/// 			AppType:        pulumi.String("supabase"),
/// 			DbInstanceName: defaultInstance.ID(),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.AiInstance;
/// import com.pulumi.alicloud.rds.AiInstanceArgs;
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
///         final var default = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .zoneId("cn-hangzhou-i")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engine("PostgreSQL")
///             .engineVersion("17.0")
///             .dbInstanceStorageType("general_essd")
///             .instanceType("pg.n2.1c.1m")
///             .instanceStorage(100)
///             .vswitchId(default_.ids()[0])
///             .instanceName(name)
///             .build());
///
///         var defaultAiInstance = new AiInstance("defaultAiInstance", AiInstanceArgs.builder()
///             .appName(name)
///             .appType("supabase")
///             .dbInstanceName(defaultInstance.id())
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
///   defaultInstance:
///     type: alicloud:rds:Instance
///     name: default
///     properties:
///       engine: PostgreSQL
///       engineVersion: '17.0'
///       dbInstanceStorageType: general_essd
///       instanceType: pg.n2.1c.1m
///       instanceStorage: 100
///       vswitchId: ${default.ids[0]}
///       instanceName: ${name}
///   defaultAiInstance:
///     type: alicloud:rds:AiInstance
///     name: default
///     properties:
///       appName: ${name}
///       appType: supabase
///       dbInstanceName: ${defaultInstance.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         zoneId: cn-hangzhou-i
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Rds Ai Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/aiInstance:AiInstance example <id>
/// ```
class AiInstance extends pulumi.CustomResource {
  /// The name of the new AI application.
  late final pulumi.Output<String> appName;
  /// Application type. Currently, only `supabase` is supported.
  late final pulumi.Output<String> appType;
  /// Authentication information list. See `auth_config_list` below.
  late final pulumi.Output<List<Map<String, dynamic>>> authConfigLists;
  /// The type of the certificate. Currently, only `custom` is supported. A custom certificate is used.
  ///
  /// &gt; **NOTE:**  When `ssl_enabled` is set to `1`, this parameter must be configured.
  late final pulumi.Output<String?> caType;
  /// Supabase Dashboard password.
  /// The password must be 8 to 32 characters in length and contain three or more characters: uppercase letters, lowercase letters, numbers, and underscores (_).
  late final pulumi.Output<String?> dashboardPassword;
  /// The RDS Database access password.
  /// The password must be 8 to 32 characters in length and contain three or more characters: uppercase letters, lowercase letters, numbers, and underscores (_).
  late final pulumi.Output<String?> databasePassword;
  /// The ID of the RDS PostgreSQL database instance accessed by the AI application.
  /// supports only **newly purchased empty RDS PostgreSQL instances**. The major version is `17`, and the minor version is **20250630 or later**.&gt;
  late final pulumi.Output<String?> dbInstanceName;
  /// Whether to recover from existing PG data. Valid values:
  late final pulumi.Output<bool?> initializeWithExistingData;
  /// Whether to enable the public network connection address. Valid values:
  late final pulumi.Output<bool?> publicEndpointEnabled;
  /// Whether to enable the public network NAT gateway. Valid values:
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// Customize the certificate content.
  ///
  /// &gt; **NOTE:**  When `ca_type` is set to `custom`, this parameter must be configured.
  late final pulumi.Output<String?> serverCert;
  /// The certificate private key.
  ///
  /// &gt; **NOTE:**  When `ca_type` is set to `custom`, this parameter must be configured.
  late final pulumi.Output<String?> serverKey;
  /// Enable or disable SSL. Valid values:
  late final pulumi.Output<int?> sslEnabled;
  /// The status of the instance. Valid values: `Running`, `Stopped`.
  late final pulumi.Output<String> status;
  /// A list of storage configurations. See `storage_config_list` below.
  late final pulumi.Output<List<Map<String, dynamic>>> storageConfigLists;

  /// Creates a new [AiInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiInstance]. {@macro pulumi_rds_ai_instance_ai_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiInstance(
    String name, {
    AiInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/aiInstance:AiInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appName = registerOutput<String>('appName');
    appType = registerOutput<String>('appType');
    authConfigLists = registerOutput<List<Map<String, dynamic>>>('authConfigLists');
    caType = registerOutput<String?>('caType');
    dashboardPassword = registerOutput<String?>('dashboardPassword');
    databasePassword = registerOutput<String?>('databasePassword');
    dbInstanceName = registerOutput<String?>('dbInstanceName');
    initializeWithExistingData = registerOutput<bool?>('initializeWithExistingData');
    publicEndpointEnabled = registerOutput<bool?>('publicEndpointEnabled');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    serverCert = registerOutput<String?>('serverCert');
    serverKey = registerOutput<String?>('serverKey');
    sslEnabled = registerOutput<int?>('sslEnabled');
    status = registerOutput<String>('status');
    storageConfigLists = registerOutput<List<Map<String, dynamic>>>('storageConfigLists');
  }

  /// Gets an existing [AiInstance] resource's state with the given [name] and [id].
  static AiInstance get(
    String name,
    pulumi.Input<String> id, {
    AiInstanceState? state,
  }) {
    return AiInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/aiInstance:AiInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appName = registerOutput<String>('appName');
    appType = registerOutput<String>('appType');
    authConfigLists = registerOutput<List<Map<String, dynamic>>>('authConfigLists');
    caType = registerOutput<String?>('caType');
    dashboardPassword = registerOutput<String?>('dashboardPassword');
    databasePassword = registerOutput<String?>('databasePassword');
    dbInstanceName = registerOutput<String?>('dbInstanceName');
    initializeWithExistingData = registerOutput<bool?>('initializeWithExistingData');
    publicEndpointEnabled = registerOutput<bool?>('publicEndpointEnabled');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    serverCert = registerOutput<String?>('serverCert');
    serverKey = registerOutput<String?>('serverKey');
    sslEnabled = registerOutput<int?>('sslEnabled');
    status = registerOutput<String>('status');
    storageConfigLists = registerOutput<List<Map<String, dynamic>>>('storageConfigLists');
  }
}
