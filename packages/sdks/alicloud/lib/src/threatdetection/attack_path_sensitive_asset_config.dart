import 'package:pulumi/pulumi.dart' as pulumi;
import 'attack_path_sensitive_asset_config_args.dart';
import 'attack_path_sensitive_asset_config_attack_path_asset_list.dart';
import 'attack_path_sensitive_asset_config_state.dart';

/// Provides a Threat Detection Attack Path Sensitive Asset Config resource.
///
/// Attack Path Sensitive Asset Configuration.
///
/// For information about Threat Detection Attack Path Sensitive Asset Config and how to use it, see [What is Attack Path Sensitive Asset Config](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createattackpathsensitiveassetconfig).
///
/// > **NOTE:** Available since v1.257.0.
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
/// const _default = alicloud.slb.getApplicationLoadBalancers({});
/// const defaultAttackPathSensitiveAssetConfig = new alicloud.threatdetection.AttackPathSensitiveAssetConfig("default", {attackPathAssetLists: [{
///     instanceId: _default.then(_default => _default.balancers?.[0]?.id),
///     vendor: 0,
///     assetType: 1,
///     assetSubType: 0,
///     regionId: "cn-hangzhou",
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.slb.get_application_load_balancers()
/// default_attack_path_sensitive_asset_config = alicloud.threatdetection.AttackPathSensitiveAssetConfig("default", attack_path_asset_lists=[{
///     "instance_id": default.balancers[0].id,
///     "vendor": 0,
///     "asset_type": 1,
///     "asset_sub_type": 0,
///     "region_id": "cn-hangzhou",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Slb.GetApplicationLoadBalancers.Invoke();
///
///     var defaultAttackPathSensitiveAssetConfig = new AliCloud.ThreatDetection.AttackPathSensitiveAssetConfig("default", new()
///     {
///         AttackPathAssetLists = new[]
///         {
///             new AliCloud.ThreatDetection.Inputs.AttackPathSensitiveAssetConfigAttackPathAssetListArgs
///             {
///                 InstanceId = @default.Apply(@default => @default.Apply(getApplicationLoadBalancersResult => getApplicationLoadBalancersResult.Balancers[0]?.Id)),
///                 Vendor = 0,
///                 AssetType = 1,
///                 AssetSubType = 0,
///                 RegionId = "cn-hangzhou",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := slb.GetApplicationLoadBalancers(ctx, &slb.GetApplicationLoadBalancersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = threatdetection.NewAttackPathSensitiveAssetConfig(ctx, "default", &threatdetection.AttackPathSensitiveAssetConfigArgs{
/// 			AttackPathAssetLists: threatdetection.AttackPathSensitiveAssetConfigAttackPathAssetListArray{
/// 				&threatdetection.AttackPathSensitiveAssetConfigAttackPathAssetListArgs{
/// 					InstanceId:   pulumi.String(_default.Balancers[0].Id),
/// 					Vendor:       pulumi.Int(0),
/// 					AssetType:    pulumi.Int(1),
/// 					AssetSubType: pulumi.Int(0),
/// 					RegionId:     pulumi.String("cn-hangzhou"),
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetApplicationLoadBalancersArgs;
/// import com.pulumi.alicloud.threatdetection.AttackPathSensitiveAssetConfig;
/// import com.pulumi.alicloud.threatdetection.AttackPathSensitiveAssetConfigArgs;
/// import com.pulumi.alicloud.threatdetection.inputs.AttackPathSensitiveAssetConfigAttackPathAssetListArgs;
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
///         final var default = SlbFunctions.getApplicationLoadBalancers(GetApplicationLoadBalancersArgs.builder()
///             .build());
///
///         var defaultAttackPathSensitiveAssetConfig = new AttackPathSensitiveAssetConfig("defaultAttackPathSensitiveAssetConfig", AttackPathSensitiveAssetConfigArgs.builder()
///             .attackPathAssetLists(AttackPathSensitiveAssetConfigAttackPathAssetListArgs.builder()
///                 .instanceId(default_.balancers()[0].id())
///                 .vendor(0)
///                 .assetType(1)
///                 .assetSubType(0)
///                 .regionId("cn-hangzhou")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultAttackPathSensitiveAssetConfig:
///     type: alicloud:threatdetection:AttackPathSensitiveAssetConfig
///     name: default
///     properties:
///       attackPathAssetLists:
///         - instanceId: ${default.balancers[0].id}
///           vendor: '0'
///           assetType: '1'
///           assetSubType: '0'
///           regionId: cn-hangzhou
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:slb:getApplicationLoadBalancers
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Attack Path Sensitive Asset Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/attackPathSensitiveAssetConfig:AttackPathSensitiveAssetConfig example <id>
/// ```
class AttackPathSensitiveAssetConfig extends pulumi.CustomResource {
  /// The attack path sensitive asset configuration list. See `attack_path_asset_list` below.
  late final pulumi.Output<List<AttackPathSensitiveAssetConfigAttackPathAssetList>> attackPathAssetLists;

  /// Creates a new [AttackPathSensitiveAssetConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttackPathSensitiveAssetConfig]. {@macro pulumi_threatdetection_attack_path_sensitive_asset_config_attack_path_sensitive_asset_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttackPathSensitiveAssetConfig(
    String name, {
    AttackPathSensitiveAssetConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/attackPathSensitiveAssetConfig:AttackPathSensitiveAssetConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attackPathAssetLists = registerOutput<List<AttackPathSensitiveAssetConfigAttackPathAssetList>>('attackPathAssetLists');
  }

  /// Gets an existing [AttackPathSensitiveAssetConfig] resource's state with the given [name] and [id].
  static AttackPathSensitiveAssetConfig get(
    String name,
    pulumi.Input<String> id, {
    AttackPathSensitiveAssetConfigState? state,
  }) {
    return AttackPathSensitiveAssetConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AttackPathSensitiveAssetConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/attackPathSensitiveAssetConfig:AttackPathSensitiveAssetConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attackPathAssetLists = registerOutput<List<AttackPathSensitiveAssetConfigAttackPathAssetList>>('attackPathAssetLists');
  }
}
