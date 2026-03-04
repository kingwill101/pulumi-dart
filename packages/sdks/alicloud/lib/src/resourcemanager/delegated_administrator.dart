import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegated_administrator_args.dart';
import 'delegated_administrator_state.dart';

/// Provides a Resource Manager Delegated Administrator resource.
///
///
///
/// For information about Resource Manager Delegated Administrator and how to use it, see [What is Delegated Administrator](https://www.alibabacloud.com/help/en/resource-management/latest/registerdelegatedadministrator#doc-api-ResourceManager-RegisterDelegatedAdministrator).
///
/// &gt; **NOTE:** Available since v1.181.0.
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
/// const _default = alicloud.resourcemanager.getAccounts({
///     status: "CreateSuccess",
/// });
/// const defaultDelegatedAdministrator = new alicloud.resourcemanager.DelegatedAdministrator("default", {
///     accountId: _default.then(_default => _default.accounts?.[0]?.accountId),
///     servicePrincipal: "cloudfw.aliyuncs.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_accounts(status="CreateSuccess")
/// default_delegated_administrator = alicloud.resourcemanager.DelegatedAdministrator("default",
///     account_id=default.accounts[0].account_id,
///     service_principal="cloudfw.aliyuncs.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke(new()
///     {
///         Status = "CreateSuccess",
///     });
///
///     var defaultDelegatedAdministrator = new AliCloud.ResourceManager.DelegatedAdministrator("default", new()
///     {
///         AccountId = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.AccountId)),
///         ServicePrincipal = "cloudfw.aliyuncs.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{
/// 			Status: pulumi.StringRef("CreateSuccess"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewDelegatedAdministrator(ctx, "default", &resourcemanager.DelegatedAdministratorArgs{
/// 			AccountId:        pulumi.String(_default.Accounts[0].AccountId),
/// 			ServicePrincipal: pulumi.String("cloudfw.aliyuncs.com"),
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
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .status("CreateSuccess")
///             .build());
///
///         var defaultDelegatedAdministrator = new DelegatedAdministrator("defaultDelegatedAdministrator", DelegatedAdministratorArgs.builder()
///             .accountId(default_.accounts()[0].accountId())
///             .servicePrincipal("cloudfw.aliyuncs.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultDelegatedAdministrator:
///     type: alicloud:resourcemanager:DelegatedAdministrator
///     name: default
///     properties:
///       accountId: ${default.accounts[0].accountId}
///       servicePrincipal: cloudfw.aliyuncs.com
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
/// Resource Manager Delegated Administrator can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/delegatedAdministrator:DelegatedAdministrator example <account_id>:<service_principal>
/// ```
class DelegatedAdministrator extends pulumi.CustomResource {
  /// The Alibaba Cloud account ID of the member in the resource directory.
  late final pulumi.Output<String> accountId;

  /// The identifier of the trusted service.
  late final pulumi.Output<String> servicePrincipal;

  /// Creates a new [DelegatedAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DelegatedAdministrator]. {@macro pulumi_resourcemanager_delegated_administrator_delegated_administrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DelegatedAdministrator(
    String name, {
    DelegatedAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/delegatedAdministrator:DelegatedAdministrator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    servicePrincipal = registerOutput<String>('servicePrincipal');
  }

  /// Gets an existing [DelegatedAdministrator] resource's state with the given [name] and [id].
  static DelegatedAdministrator get(
    String name,
    pulumi.Input<String> id, {
    DelegatedAdministratorState? state,
  }) {
    return DelegatedAdministrator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DelegatedAdministrator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/delegatedAdministrator:DelegatedAdministrator',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    servicePrincipal = registerOutput<String>('servicePrincipal');
  }
}
