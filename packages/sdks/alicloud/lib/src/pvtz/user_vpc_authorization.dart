import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_vpc_authorization_args.dart';
import 'user_vpc_authorization_state.dart';

/// Provides a Private Zone User Vpc Authorization resource.
///
/// &gt; **NOTE:** Available since v1.138.0.
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
/// const authorizedUserId = config.getNumber("authorizedUserId") || 123456789;
/// const example = new alicloud.pvtz.UserVpcAuthorization("example", {
///     authorizedUserId: authorizedUserId,
///     authChannel: "RESOURCE_DIRECTORY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// authorized_user_id = config.get_float("authorizedUserId")
/// if authorized_user_id is None:
///     authorized_user_id = 123456789
/// example = alicloud.pvtz.UserVpcAuthorization("example",
///     authorized_user_id=authorized_user_id,
///     auth_channel="RESOURCE_DIRECTORY")
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
///     var authorizedUserId = config.GetDouble("authorizedUserId") ?? 123456789;
///     var example = new AliCloud.Pvtz.UserVpcAuthorization("example", new()
///     {
///         AuthorizedUserId = authorizedUserId,
///         AuthChannel = "RESOURCE_DIRECTORY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		authorizedUserId := float64(123456789)
/// 		if param := cfg.GetFloat64("authorizedUserId"); param != 0 {
/// 			authorizedUserId = param
/// 		}
/// 		_, err := pvtz.NewUserVpcAuthorization(ctx, "example", &pvtz.UserVpcAuthorizationArgs{
/// 			AuthorizedUserId: pulumi.Float64(authorizedUserId),
/// 			AuthChannel:      pulumi.String("RESOURCE_DIRECTORY"),
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
/// import com.pulumi.alicloud.pvtz.UserVpcAuthorization;
/// import com.pulumi.alicloud.pvtz.UserVpcAuthorizationArgs;
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
///         final var authorizedUserId = config.get("authorizedUserId").orElse(123456789);
///         var example = new UserVpcAuthorization("example", UserVpcAuthorizationArgs.builder()
///             .authorizedUserId(authorizedUserId)
///             .authChannel("RESOURCE_DIRECTORY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   authorizedUserId:
///     type: number
///     default: 1.23456789e+08
/// resources:
///   example:
///     type: alicloud:pvtz:UserVpcAuthorization
///     properties:
///       authorizedUserId: ${authorizedUserId}
///       authChannel: RESOURCE_DIRECTORY
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Private Zone User Vpc Authorization can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pvtz/userVpcAuthorization:UserVpcAuthorization example <authorized_user_id>:<auth_type>
/// ```
class UserVpcAuthorization extends pulumi.CustomResource {
  /// The auth channel. Valid values: `RESOURCE_DIRECTORY`.
  late final pulumi.Output<String?> authChannel;

  /// The type of Authorization. Valid values: `NORMAL` and `CLOUD_PRODUCT`.
  late final pulumi.Output<String?> authType;

  /// The primary account ID of the user who authorizes the resource.
  late final pulumi.Output<String> authorizedUserId;

  /// Creates a new [UserVpcAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserVpcAuthorization]. {@macro pulumi_pvtz_user_vpc_authorization_user_vpc_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserVpcAuthorization(
    String name, {
    UserVpcAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:pvtz/userVpcAuthorization:UserVpcAuthorization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authChannel = registerOutput<String?>('authChannel');
    authType = registerOutput<String?>('authType');
    authorizedUserId = registerOutput<String>('authorizedUserId');
  }

  /// Gets an existing [UserVpcAuthorization] resource's state with the given [name] and [id].
  static UserVpcAuthorization get(
    String name,
    pulumi.Input<String> id, {
    UserVpcAuthorizationState? state,
  }) {
    return UserVpcAuthorization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserVpcAuthorization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:pvtz/userVpcAuthorization:UserVpcAuthorization',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authChannel = registerOutput<String?>('authChannel');
    authType = registerOutput<String?>('authType');
    authorizedUserId = registerOutput<String>('authorizedUserId');
  }
}
