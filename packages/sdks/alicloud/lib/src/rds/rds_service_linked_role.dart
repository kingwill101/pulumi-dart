import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_service_linked_role_args.dart';
import 'rds_service_linked_role_state.dart';

/// Provides a RDS Service Linked Role.
///
/// For information about RDS Service Linked Role and how to use it, see [What is Service Linked Role.](https://www.alibabacloud.com/help/en/doc-detail/171226.htm).
///
/// &gt; **NOTE:** Available since v1.189.0.
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
/// const _default = new alicloud.rds.RdsServiceLinkedRole("default", {serviceName: "AliyunServiceRoleForRdsPgsqlOnEcs"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.rds.RdsServiceLinkedRole("default", service_name="AliyunServiceRoleForRdsPgsqlOnEcs")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Rds.RdsServiceLinkedRole("default", new()
///     {
///         ServiceName = "AliyunServiceRoleForRdsPgsqlOnEcs",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewRdsServiceLinkedRole(ctx, "default", &rds.RdsServiceLinkedRoleArgs{
/// 			ServiceName: pulumi.String("AliyunServiceRoleForRdsPgsqlOnEcs"),
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
/// import com.pulumi.alicloud.rds.RdsServiceLinkedRole;
/// import com.pulumi.alicloud.rds.RdsServiceLinkedRoleArgs;
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
///         var default_ = new RdsServiceLinkedRole("default", RdsServiceLinkedRoleArgs.builder()
///             .serviceName("AliyunServiceRoleForRdsPgsqlOnEcs")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:rds:RdsServiceLinkedRole
///     properties:
///       serviceName: AliyunServiceRoleForRdsPgsqlOnEcs
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Service Linked Role can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/rdsServiceLinkedRole:RdsServiceLinkedRole default <service_name>
/// ```
class RdsServiceLinkedRole extends pulumi.CustomResource {
  /// The Alibaba Cloud Resource Name (ARN) of the role.
  late final pulumi.Output<String> arn;
  /// The ID of the role.
  late final pulumi.Output<String> roleId;
  /// The name of the role.
  late final pulumi.Output<String> roleName;
  /// The product name for SLR. RDS can automatically create the following service-linked roles: `AliyunServiceRoleForRdsPgsqlOnEcs`, `AliyunServiceRoleForRDSProxyOnEcs`.
  late final pulumi.Output<String> serviceName;

  /// Creates a new [RdsServiceLinkedRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsServiceLinkedRole]. {@macro pulumi_rds_rds_service_linked_role_rds_service_linked_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsServiceLinkedRole(
    String name, {
    RdsServiceLinkedRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsServiceLinkedRole:RdsServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    roleId = registerOutput<String>('roleId');
    roleName = registerOutput<String>('roleName');
    serviceName = registerOutput<String>('serviceName');
  }

  /// Gets an existing [RdsServiceLinkedRole] resource's state with the given [name] and [id].
  static RdsServiceLinkedRole get(
    String name,
    pulumi.Input<String> id, {
    RdsServiceLinkedRoleState? state,
  }) {
    return RdsServiceLinkedRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RdsServiceLinkedRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsServiceLinkedRole:RdsServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    roleId = registerOutput<String>('roleId');
    roleName = registerOutput<String>('roleName');
    serviceName = registerOutput<String>('serviceName');
  }
}
