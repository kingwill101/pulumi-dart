import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Provides a Resource Manager Account resource.
///
///
///
/// For information about Resource Manager Account and how to use it, see [What is Account](https://www.alibabacloud.com/help/en/doc-detail/111231.htm).
///
/// > **NOTE:** Available since v1.83.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const displayName = config.get("displayName") || "EAccount";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const example = alicloud.resourcemanager.getFolders({});
/// const exampleAccount = new alicloud.resourcemanager.Account("example", {
///     displayName: `${displayName}-${_default.result}`,
///     folderId: example.then(example => example.ids?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// display_name = config.get("displayName")
/// if display_name is None:
///     display_name = "EAccount"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.resourcemanager.get_folders()
/// example_account = alicloud.resourcemanager.Account("example",
///     display_name=f"{display_name}-{default['result']}",
///     folder_id=example.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var displayName = config.Get("displayName") ?? "EAccount";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var example = AliCloud.ResourceManager.GetFolders.Invoke();
///
///     var exampleAccount = new AliCloud.ResourceManager.Account("example", new()
///     {
///         DisplayName = $"{displayName}-{@default.Result}",
///         FolderId = example.Apply(getFoldersResult => getFoldersResult.Ids[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		displayName := "EAccount"
/// 		if param := cfg.Get("displayName"); param != "" {
/// 			displayName = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := resourcemanager.GetFolders(ctx, &resourcemanager.GetFoldersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewAccount(ctx, "example", &resourcemanager.AccountArgs{
/// 			DisplayName: pulumi.Sprintf("%v-%v", displayName, _default.Result),
/// 			FolderId:    pulumi.String(example.Ids[0]),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetFoldersArgs;
/// import com.pulumi.alicloud.resourcemanager.Account;
/// import com.pulumi.alicloud.resourcemanager.AccountArgs;
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
///         final var displayName = config.get("displayName").orElse("EAccount");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var example = ResourcemanagerFunctions.getFolders(GetFoldersArgs.builder()
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .displayName(String.format("%s-%s", displayName,default_.result()))
///             .folderId(example.ids()[0])
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
///   displayName:
///     type: string
///     default: EAccount
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   exampleAccount:
///     type: alicloud:resourcemanager:Account
///     name: example
///     properties:
///       displayName: ${displayName}-${default.result}
///       folderId: ${example.ids[0]}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getFolders
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/account:Account example <id>
/// ```
class Account extends pulumi.CustomResource {
  /// . Field 'abandon_able_check_id' has been deprecated from provider version 1.249.0. New field 'abandonable_check_id' instead.
  late final pulumi.Output<List<String>?> abandonAbleCheckIds;
  /// The ID of the check item that can choose to abandon and continue to perform member deletion.
  /// The ID is obtained from the return parameter AbandonableChecks of GetAccountDeletionCheckResult.
  late final pulumi.Output<List<String>?> abandonableCheckIds;
  /// Account name prefix. Empty the system randomly generated.
  /// Format: English letters, numbers, and special characters_.-can be entered. It must start and end with an English letter or number, and continuous special characters_.-cannot be entered '_.-'.
  /// The format of the full account name is @< ResourceDirectoryId>.aliyunid.com, for example: 'alice @ rd-3G ****.aliyunid.com'
  /// The account name must be unique in the resource directory.
  late final pulumi.Output<String?> accountNamePrefix;
  /// Member name
  late final pulumi.Output<String> displayName;
  /// The ID of the parent folder
  late final pulumi.Output<String> folderId;
  /// Whether to force delete the account.
  late final pulumi.Output<bool?> forceDelete;
  /// Ways for members to join the resource directory.  invited, created
  late final pulumi.Output<String> joinMethod;
  /// The time when the member joined the resource directory
  late final pulumi.Output<String> joinTime;
  /// The modification time of the invitation
  late final pulumi.Output<String> modifyTime;
  /// The settlement account ID. If it is left blank, the newly created member will be used for self-settlement.
  late final pulumi.Output<String?> payerAccountId;
  /// The identity type of the member. Valid values:
  /// - resell: The member is an account for a reseller. This is the default value. A relationship is automatically established between the member and the reseller. The management account of the resource directory must be used as the billing account of the member.
  /// - non_resell: The member is not an account for a reseller. The member is an account that is not associated with a reseller. You can directly use the account to purchase Alibaba Cloud resources. The member is used as its own billing account.
  ///
  /// > **NOTE:**  This parameter is available only for resellers at the international site (alibabacloud.com).
  late final pulumi.Output<String?> resellAccountType;
  /// Resource directory ID
  late final pulumi.Output<String> resourceDirectoryId;
  /// Member joining status.  CreateSuccess,CreateVerifying,CreateFailed,CreateExpired,CreateCancelled,PromoteVerifying,PromoteFailed,PromoteExpired,PromoteCancelled,PromoteSuccess,InviteSuccess,Removed
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Member type. The value of ResourceAccount indicates the resource account
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_resourcemanager_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abandonAbleCheckIds = registerOutput<List<String>?>('abandonAbleCheckIds');
    this.abandonableCheckIds = registerOutput<List<String>?>('abandonableCheckIds');
    this.accountNamePrefix = registerOutput<String?>('accountNamePrefix');
    this.displayName = registerOutput<String>('displayName');
    this.folderId = registerOutput<String>('folderId');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.joinMethod = registerOutput<String>('joinMethod');
    this.joinTime = registerOutput<String>('joinTime');
    this.modifyTime = registerOutput<String>('modifyTime');
    this.payerAccountId = registerOutput<String?>('payerAccountId');
    this.resellAccountType = registerOutput<String?>('resellAccountType');
    this.resourceDirectoryId = registerOutput<String>('resourceDirectoryId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abandonAbleCheckIds = registerOutput<List<String>?>('abandonAbleCheckIds');
    this.abandonableCheckIds = registerOutput<List<String>?>('abandonableCheckIds');
    this.accountNamePrefix = registerOutput<String?>('accountNamePrefix');
    this.displayName = registerOutput<String>('displayName');
    this.folderId = registerOutput<String>('folderId');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.joinMethod = registerOutput<String>('joinMethod');
    this.joinTime = registerOutput<String>('joinTime');
    this.modifyTime = registerOutput<String>('modifyTime');
    this.payerAccountId = registerOutput<String?>('payerAccountId');
    this.resellAccountType = registerOutput<String?>('resellAccountType');
    this.resourceDirectoryId = registerOutput<String>('resourceDirectoryId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
