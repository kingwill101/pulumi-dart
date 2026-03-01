import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_proxy_access_args.dart';
import 'enterprise_proxy_access_state.dart';

/// Provides a DMS Enterprise Proxy Access resource.
///
/// For information about DMS Enterprise Proxy Access and how to use it, see [What is Proxy Access](https://next.api.alibabacloud.com/document/dms-enterprise/2018-11-01/CreateProxyAccess).
///
/// > **NOTE:** Available since v1.195.0.
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
/// const dmsEnterpriseUsersDs = alicloud.dms.getEnterpriseUsers({
///     role: "USER",
///     status: "NORMAL",
/// });
/// const ids = alicloud.dms.getEnterpriseProxies({});
/// const _default = new alicloud.dms.EnterpriseProxyAccess("default", {
///     proxyId: ids.then(ids => ids.proxies?.[0]?.id),
///     userId: dmsEnterpriseUsersDs.then(dmsEnterpriseUsersDs => dmsEnterpriseUsersDs.users?.[0]?.userId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// dms_enterprise_users_ds = alicloud.dms.get_enterprise_users(role="USER",
///     status="NORMAL")
/// ids = alicloud.dms.get_enterprise_proxies()
/// default = alicloud.dms.EnterpriseProxyAccess("default",
///     proxy_id=ids.proxies[0].id,
///     user_id=dms_enterprise_users_ds.users[0].user_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dmsEnterpriseUsersDs = AliCloud.Dms.GetEnterpriseUsers.Invoke(new()
///     {
///         Role = "USER",
///         Status = "NORMAL",
///     });
///
///     var ids = AliCloud.Dms.GetEnterpriseProxies.Invoke();
///
///     var @default = new AliCloud.Dms.EnterpriseProxyAccess("default", new()
///     {
///         ProxyId = ids.Apply(getEnterpriseProxiesResult => getEnterpriseProxiesResult.Proxies[0]?.Id),
///         UserId = dmsEnterpriseUsersDs.Apply(getEnterpriseUsersResult => getEnterpriseUsersResult.Users[0]?.UserId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dmsEnterpriseUsersDs, err := dms.GetEnterpriseUsers(ctx, &dms.GetEnterpriseUsersArgs{
/// 			Role:   pulumi.StringRef("USER"),
/// 			Status: pulumi.StringRef("NORMAL"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := dms.GetEnterpriseProxies(ctx, &dms.GetEnterpriseProxiesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dms.NewEnterpriseProxyAccess(ctx, "default", &dms.EnterpriseProxyAccessArgs{
/// 			ProxyId: pulumi.String(ids.Proxies[0].Id),
/// 			UserId:  pulumi.String(dmsEnterpriseUsersDs.Users[0].UserId),
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
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetEnterpriseUsersArgs;
/// import com.pulumi.alicloud.dms.inputs.GetEnterpriseProxiesArgs;
/// import com.pulumi.alicloud.dms.EnterpriseProxyAccess;
/// import com.pulumi.alicloud.dms.EnterpriseProxyAccessArgs;
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
///         final var dmsEnterpriseUsersDs = DmsFunctions.getEnterpriseUsers(GetEnterpriseUsersArgs.builder()
///             .role("USER")
///             .status("NORMAL")
///             .build());
///
///         final var ids = DmsFunctions.getEnterpriseProxies(GetEnterpriseProxiesArgs.builder()
///             .build());
///
///         var default_ = new EnterpriseProxyAccess("default", EnterpriseProxyAccessArgs.builder()
///             .proxyId(ids.proxies()[0].id())
///             .userId(dmsEnterpriseUsersDs.users()[0].userId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:dms:EnterpriseProxyAccess
///     properties:
///       proxyId: ${ids.proxies[0].id}
///       userId: ${dmsEnterpriseUsersDs.users[0].userId}
/// variables:
///   dmsEnterpriseUsersDs:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseUsers
///       arguments:
///         role: USER
///         status: NORMAL
///   ids:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseProxies
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DMS Enterprise Proxy Access can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dms/enterpriseProxyAccess:EnterpriseProxyAccess example <id>
/// ```
class EnterpriseProxyAccess extends pulumi.CustomResource {
  /// The authorized account of the security agent.
  late final pulumi.Output<String> accessId;
  /// Secure access agent authorization password.
  late final pulumi.Output<String> accessSecret;
  late final pulumi.Output<String> createTime;
  /// Database account.
  late final pulumi.Output<String?> indepAccount;
  /// Database password.
  late final pulumi.Output<String?> indepPassword;
  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;
  /// The source information of the security access agent permission is enabled, and the return value is as follows:
  /// * **Owner Authorization**: The UID of the owner in parentheses.
  /// * **Work Order Authorization**: The ticket number in parentheses is the number of the user to apply for permission.
  late final pulumi.Output<String> originInfo;
  /// Security Protection authorization ID. After the target user is authorized by the security protection agent, the system automatically generates a security protection authorization ID, which is globally unique.
  late final pulumi.Output<String> proxyAccessId;
  /// The ID of the security agent.
  late final pulumi.Output<String> proxyId;
  /// The user ID.
  late final pulumi.Output<String> userId;
  /// User nickname.
  late final pulumi.Output<String> userName;
  /// User UID.
  late final pulumi.Output<String> userUid;

  /// Creates a new [EnterpriseProxyAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseProxyAccess]. {@macro pulumi_dms_enterprise_proxy_access_enterprise_proxy_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseProxyAccess(
    String name, {
    EnterpriseProxyAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseProxyAccess:EnterpriseProxyAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessId = registerOutput<String>('accessId');
    this.accessSecret = registerOutput<String>('accessSecret');
    this.createTime = registerOutput<String>('createTime');
    this.indepAccount = registerOutput<String?>('indepAccount');
    this.indepPassword = registerOutput<String?>('indepPassword');
    this.instanceId = registerOutput<String>('instanceId');
    this.originInfo = registerOutput<String>('originInfo');
    this.proxyAccessId = registerOutput<String>('proxyAccessId');
    this.proxyId = registerOutput<String>('proxyId');
    this.userId = registerOutput<String>('userId');
    this.userName = registerOutput<String>('userName');
    this.userUid = registerOutput<String>('userUid');
  }

  /// Gets an existing [EnterpriseProxyAccess] resource's state with the given [name] and [id].
  static EnterpriseProxyAccess get(
    String name,
    pulumi.Input<String> id, {
    EnterpriseProxyAccessState? state,
  }) {
    return EnterpriseProxyAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnterpriseProxyAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseProxyAccess:EnterpriseProxyAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessId = registerOutput<String>('accessId');
    this.accessSecret = registerOutput<String>('accessSecret');
    this.createTime = registerOutput<String>('createTime');
    this.indepAccount = registerOutput<String?>('indepAccount');
    this.indepPassword = registerOutput<String?>('indepPassword');
    this.instanceId = registerOutput<String>('instanceId');
    this.originInfo = registerOutput<String>('originInfo');
    this.proxyAccessId = registerOutput<String>('proxyAccessId');
    this.proxyId = registerOutput<String>('proxyId');
    this.userId = registerOutput<String>('userId');
    this.userName = registerOutput<String>('userName');
    this.userUid = registerOutput<String>('userUid');
  }
}
