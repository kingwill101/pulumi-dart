import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegate_account_args.dart';
import 'delegate_account_state.dart';

/// Provides a Cloud SSO Delegate Account resource.
///
/// Delegated Administrator Account.
///
/// For information about Cloud SSO Delegate Account and how to use it, see [What is Delegate Account](https://next.api.alibabacloud.com/document/cloudsso/2021-05-15/EnableDelegateAccount).
///
/// > **NOTE:** Available since v1.259.0.
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
/// const _default = alicloud.resourcemanager.getAccounts({
///     status: "CreateSuccess",
/// });
/// const defaultDelegatedAdministrator = new alicloud.resourcemanager.DelegatedAdministrator("default", {
///     accountId: _default.then(_default => _default.accounts?.[0]?.accountId),
///     servicePrincipal: "cloudsso.aliyuncs.com",
/// });
/// const defaultDelegateAccount = new alicloud.cloudsso.DelegateAccount("default", {accountId: defaultDelegatedAdministrator.accountId});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_accounts(status="CreateSuccess")
/// default_delegated_administrator = alicloud.resourcemanager.DelegatedAdministrator("default",
///     account_id=default.accounts[0].account_id,
///     service_principal="cloudsso.aliyuncs.com")
/// default_delegate_account = alicloud.cloudsso.DelegateAccount("default", account_id=default_delegated_administrator.account_id)
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
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke(new()
///     {
///         Status = "CreateSuccess",
///     });
///
///     var defaultDelegatedAdministrator = new AliCloud.ResourceManager.DelegatedAdministrator("default", new()
///     {
///         AccountId = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.AccountId)),
///         ServicePrincipal = "cloudsso.aliyuncs.com",
///     });
///
///     var defaultDelegateAccount = new AliCloud.CloudSso.DelegateAccount("default", new()
///     {
///         AccountId = defaultDelegatedAdministrator.AccountId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{
/// 			Status: pulumi.StringRef("CreateSuccess"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDelegatedAdministrator, err := resourcemanager.NewDelegatedAdministrator(ctx, "default", &resourcemanager.DelegatedAdministratorArgs{
/// 			AccountId:        pulumi.String(_default.Accounts[0].AccountId),
/// 			ServicePrincipal: pulumi.String("cloudsso.aliyuncs.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsso.NewDelegateAccount(ctx, "default", &cloudsso.DelegateAccountArgs{
/// 			AccountId: defaultDelegatedAdministrator.AccountId,
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
/// import com.pulumi.alicloud.resourcemanager.DelegatedAdministrator;
/// import com.pulumi.alicloud.resourcemanager.DelegatedAdministratorArgs;
/// import com.pulumi.alicloud.cloudsso.DelegateAccount;
/// import com.pulumi.alicloud.cloudsso.DelegateAccountArgs;
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
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .status("CreateSuccess")
///             .build());
///
///         var defaultDelegatedAdministrator = new DelegatedAdministrator("defaultDelegatedAdministrator", DelegatedAdministratorArgs.builder()
///             .accountId(default_.accounts()[0].accountId())
///             .servicePrincipal("cloudsso.aliyuncs.com")
///             .build());
///
///         var defaultDelegateAccount = new DelegateAccount("defaultDelegateAccount", DelegateAccountArgs.builder()
///             .accountId(defaultDelegatedAdministrator.accountId())
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
///   defaultDelegatedAdministrator:
///     type: alicloud:resourcemanager:DelegatedAdministrator
///     name: default
///     properties:
///       accountId: ${default.accounts[0].accountId}
///       servicePrincipal: cloudsso.aliyuncs.com
///   defaultDelegateAccount:
///     type: alicloud:cloudsso:DelegateAccount
///     name: default
///     properties:
///       accountId: ${defaultDelegatedAdministrator.accountId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getAccounts
///       arguments:
///         status: CreateSuccess
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud SSO Delegate Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudsso/delegateAccount:DelegateAccount example <id>
/// ```
class DelegateAccount extends pulumi.CustomResource {
  /// Delegate administrator account Id
  late final pulumi.Output<String> accountId;

  /// Creates a new [DelegateAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DelegateAccount]. {@macro pulumi_cloudsso_delegate_account_delegate_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DelegateAccount(
    String name, {
    DelegateAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/delegateAccount:DelegateAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
  }

  /// Gets an existing [DelegateAccount] resource's state with the given [name] and [id].
  static DelegateAccount get(
    String name,
    pulumi.Input<String> id, {
    DelegateAccountState? state,
  }) {
    return DelegateAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DelegateAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/delegateAccount:DelegateAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
  }
}
