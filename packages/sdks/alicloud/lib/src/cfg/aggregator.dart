import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregator_args.dart';
import 'aggregator_state.dart';

/// Provides a Cloud Config (Config) Aggregator resource.
///
///
///
/// For information about Cloud Config (Config) Aggregator and how to use it, see [What is Aggregator](https://www.alibabacloud.com/help/en/cloud-config/latest/api-config-2020-09-07-createaggregator).
///
/// &gt; **NOTE:** Available since v1.124.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.resourcemanager.getAccounts({
///     status: "CreateSuccess",
/// });
/// const last = _default.then(_default => _default.accounts).length.apply(length => length - 1);
/// const defaultAggregator = new alicloud.cfg.Aggregator("default", {
///     aggregatorAccounts: [{
///         accountId: _default.then(_default => _default.accounts[last].accountId),
///         accountName: _default.then(_default => _default.accounts[last].displayName),
///         accountType: "ResourceDirectory",
///     }],
///     aggregatorName: name,
///     description: name,
///     aggregatorType: "CUSTOM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.resourcemanager.get_accounts(status="CreateSuccess")
/// last = len(default.accounts).apply(lambda length: length - 1)
/// default_aggregator = alicloud.cfg.Aggregator("default",
///     aggregator_accounts=[{
///         "account_id": default.accounts[last].account_id,
///         "account_name": default.accounts[last].display_name,
///         "account_type": "ResourceDirectory",
///     }],
///     aggregator_name=name,
///     description=name,
///     aggregator_type="CUSTOM")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke(new()
///     {
///         Status = "CreateSuccess",
///     });
///
///     var last = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)).Length.Apply(length => length - 1);
///
///     var defaultAggregator = new AliCloud.Cfg.Aggregator("default", new()
///     {
///         AggregatorAccounts = new[]
///         {
///             new AliCloud.Cfg.Inputs.AggregatorAggregatorAccountArgs
///             {
///                 AccountId = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)[last].AccountId),
///                 AccountName = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)[last].DisplayName),
///                 AccountType = "ResourceDirectory",
///             },
///         },
///         AggregatorName = name,
///         Description = name,
///         AggregatorType = "CUSTOM",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{
/// 			Status: pulumi.StringRef("CreateSuccess"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		last := len(_default.Accounts).ApplyT(func(length int) (float64, error) {
/// 			return float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output)), nil
/// 		}).(pulumi.Float64Output)
/// 		_, err = cfg.NewAggregator(ctx, "default", &cfg.AggregatorArgs{
/// 			AggregatorAccounts: cfg.AggregatorAggregatorAccountArray{
/// 				&cfg.AggregatorAggregatorAccountArgs{
/// 					AccountId:   pulumi.String(_default.Accounts[last].AccountId),
/// 					AccountName: pulumi.String(_default.Accounts[last].DisplayName),
/// 					AccountType: pulumi.String("ResourceDirectory"),
/// 				},
/// 			},
/// 			AggregatorName: pulumi.String(name),
/// 			Description:    pulumi.String(name),
/// 			AggregatorType: pulumi.String("CUSTOM"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountsArgs;
/// import com.pulumi.alicloud.cfg.Aggregator;
/// import com.pulumi.alicloud.cfg.AggregatorArgs;
/// import com.pulumi.alicloud.cfg.inputs.AggregatorAggregatorAccountArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .status("CreateSuccess")
///             .build());
///
///         final var last = default_.accounts().length().applyValue(_length -> _length - 1);
///
///         var defaultAggregator = new Aggregator("defaultAggregator", AggregatorArgs.builder()
///             .aggregatorAccounts(AggregatorAggregatorAccountArgs.builder()
///                 .accountId(default_.accounts()[last].accountId())
///                 .accountName(default_.accounts()[last].displayName())
///                 .accountType("ResourceDirectory")
///                 .build())
///             .aggregatorName(name)
///             .description(name)
///             .aggregatorType("CUSTOM")
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Config (Config) Aggregator can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/aggregator:Aggregator example <id>
/// ```
class Aggregator extends pulumi.CustomResource {
  /// The member accounts of the account group. See `aggregator_accounts` below.
  /// &gt; **NOTE:** If `aggregator_type` is set to `CUSTOM`, `aggregator_accounts` is required.
  late final pulumi.Output<List<Map<String, dynamic>>> aggregatorAccounts;
  /// The name of the account group.
  late final pulumi.Output<String> aggregatorName;
  /// The type of the account group. Default value: `CUSTOM`. Valid values:
  /// - `RD`: Global account group.
  /// - `FOLDER`: Folder account group.
  /// - `CUSTOM`: Custom account group.
  late final pulumi.Output<String> aggregatorType;
  /// (Available since v1.262.0) The timestamp when the account group was created.
  late final pulumi.Output<int> createTime;
  /// The description of the account group.
  late final pulumi.Output<String> description;
  /// The ID of the attached folder. You can specify multiple folder IDs. Separate the IDs with commas (,). **NOTE:** If `aggregator_type` is set to `FOLDER`, `folder_id` is required.
  late final pulumi.Output<String?> folderId;
  /// The status of the account group.
  late final pulumi.Output<String> status;

  /// Creates a new [Aggregator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Aggregator]. {@macro pulumi_cfg_aggregator_aggregator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Aggregator(
    String name, {
    AggregatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/aggregator:Aggregator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregatorAccounts = registerOutput<List<Map<String, dynamic>>>('aggregatorAccounts');
    aggregatorName = registerOutput<String>('aggregatorName');
    aggregatorType = registerOutput<String>('aggregatorType');
    createTime = registerOutput<int>('createTime');
    description = registerOutput<String>('description');
    folderId = registerOutput<String?>('folderId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [Aggregator] resource's state with the given [name] and [id].
  static Aggregator get(
    String name,
    pulumi.Input<String> id, {
    AggregatorState? state,
  }) {
    return Aggregator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Aggregator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/aggregator:Aggregator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregatorAccounts = registerOutput<List<Map<String, dynamic>>>('aggregatorAccounts');
    aggregatorName = registerOutput<String>('aggregatorName');
    aggregatorType = registerOutput<String>('aggregatorType');
    createTime = registerOutput<int>('createTime');
    description = registerOutput<String>('description');
    folderId = registerOutput<String?>('folderId');
    status = registerOutput<String>('status');
  }
}
