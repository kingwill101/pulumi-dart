import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_user_args.dart';
import 'enterprise_user_state.dart';

/// Provides a DMS Enterprise User resource. For information about Alidms Enterprise User and how to use it, see [What is Resource Alidms Enterprise User](https://www.alibabacloud.com/help/en/dms/developer-reference/api-dms-enterprise-2018-11-01-registeruser).
///
/// > **NOTE:** Available since v1.90.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfexamplename";
/// const _default = new alicloud.ram.User("default", {
///     name: name,
///     displayName: name,
///     mobile: "86-18688888888",
///     email: "hello.uuu@aaa.com",
///     comments: "example",
/// });
/// const defaultEnterpriseUser = new alicloud.dms.EnterpriseUser("default", {
///     uid: _default.id,
///     userName: name,
///     roleNames: ["DBA"],
///     mobile: "86-18688888888",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexamplename"
/// default = alicloud.ram.User("default",
///     name=name,
///     display_name=name,
///     mobile="86-18688888888",
///     email="hello.uuu@aaa.com",
///     comments="example")
/// default_enterprise_user = alicloud.dms.EnterpriseUser("default",
///     uid=default.id,
///     user_name=name,
///     role_names=["DBA"],
///     mobile="86-18688888888")
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
///     var name = config.Get("name") ?? "tfexamplename";
///     var @default = new AliCloud.Ram.User("default", new()
///     {
///         Name = name,
///         DisplayName = name,
///         Mobile = "86-18688888888",
///         Email = "hello.uuu@aaa.com",
///         Comments = "example",
///     });
///
///     var defaultEnterpriseUser = new AliCloud.Dms.EnterpriseUser("default", new()
///     {
///         Uid = @default.Id,
///         UserName = name,
///         RoleNames = new[]
///         {
///             "DBA",
///         },
///         Mobile = "86-18688888888",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexamplename"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := ram.NewUser(ctx, "default", &ram.UserArgs{
/// 			Name:        pulumi.String(name),
/// 			DisplayName: pulumi.String(name),
/// 			Mobile:      pulumi.String("86-18688888888"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dms.NewEnterpriseUser(ctx, "default", &dms.EnterpriseUserArgs{
/// 			Uid:      _default.ID(),
/// 			UserName: pulumi.String(name),
/// 			RoleNames: pulumi.StringArray{
/// 				pulumi.String("DBA"),
/// 			},
/// 			Mobile: pulumi.String("86-18688888888"),
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
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.dms.EnterpriseUser;
/// import com.pulumi.alicloud.dms.EnterpriseUserArgs;
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
///         final var name = config.get("name").orElse("tfexamplename");
///         var default_ = new User("default", UserArgs.builder()
///             .name(name)
///             .displayName(name)
///             .mobile("86-18688888888")
///             .email("hello.uuu@aaa.com")
///             .comments("example")
///             .build());
///
///         var defaultEnterpriseUser = new EnterpriseUser("defaultEnterpriseUser", EnterpriseUserArgs.builder()
///             .uid(default_.id())
///             .userName(name)
///             .roleNames("DBA")
///             .mobile("86-18688888888")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexamplename
/// resources:
///   default:
///     type: alicloud:ram:User
///     properties:
///       name: ${name}
///       displayName: ${name}
///       mobile: 86-18688888888
///       email: hello.uuu@aaa.com
///       comments: example
///   defaultEnterpriseUser:
///     type: alicloud:dms:EnterpriseUser
///     name: default
///     properties:
///       uid: ${default.id}
///       userName: ${name}
///       roleNames:
///         - DBA
///       mobile: 86-18688888888
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DMS Enterprise User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dms/enterpriseUser:EnterpriseUser example 24356xxx
/// ```
class EnterpriseUser extends pulumi.CustomResource {
  /// Maximum number of inquiries on the day.
  late final pulumi.Output<int?> maxExecuteCount;
  /// Query the maximum number of rows on the day.
  late final pulumi.Output<int?> maxResultCount;
  /// The DingTalk number or mobile number of the user.
  late final pulumi.Output<String?> mobile;
  /// It has been deprecated from 1.100.0 and use `user_name` instead.
  late final pulumi.Output<String> nickName;
  /// The roles that the user plays.
  late final pulumi.Output<List<String>?> roleNames;
  /// The state of DMS Enterprise User. Valid values: `NORMAL`, `DISABLE`.
  late final pulumi.Output<String?> status;
  /// The tenant ID.
  late final pulumi.Output<int?> tid;
  /// The Alibaba Cloud unique ID (UID) of the user to add.
  late final pulumi.Output<String> uid;
  /// The nickname of the user.
  late final pulumi.Output<String> userName;

  /// Creates a new [EnterpriseUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseUser]. {@macro pulumi_dms_enterprise_user_enterprise_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseUser(
    String name, {
    EnterpriseUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseUser:EnterpriseUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.maxExecuteCount = registerOutput<int?>('maxExecuteCount');
    this.maxResultCount = registerOutput<int?>('maxResultCount');
    this.mobile = registerOutput<String?>('mobile');
    this.nickName = registerOutput<String>('nickName');
    this.roleNames = registerOutput<List<String>?>('roleNames');
    this.status = registerOutput<String?>('status');
    this.tid = registerOutput<int?>('tid');
    this.uid = registerOutput<String>('uid');
    this.userName = registerOutput<String>('userName');
  }

  /// Gets an existing [EnterpriseUser] resource's state with the given [name] and [id].
  static EnterpriseUser get(
    String name,
    pulumi.Input<String> id, {
    EnterpriseUserState? state,
  }) {
    return EnterpriseUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnterpriseUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseUser:EnterpriseUser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.maxExecuteCount = registerOutput<int?>('maxExecuteCount');
    this.maxResultCount = registerOutput<int?>('maxResultCount');
    this.mobile = registerOutput<String?>('mobile');
    this.nickName = registerOutput<String>('nickName');
    this.roleNames = registerOutput<List<String>?>('roleNames');
    this.status = registerOutput<String?>('status');
    this.tid = registerOutput<int?>('tid');
    this.uid = registerOutput<String>('uid');
    this.userName = registerOutput<String>('userName');
  }
}
