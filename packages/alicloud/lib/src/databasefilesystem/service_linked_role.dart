import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_linked_role_args.dart';

/// Using this data source can create Dbfs service-linked roles(SLR). Dbfs may need to access another Alibaba Cloud service to implement a specific feature. In this case, Dbfs must assume a specific service-linked role, which is a Resource Access Management (RAM) role, to obtain permissions to access another Alibaba Cloud service.
///
/// For information about Dbfs service-linked roles(SLR) and how to use it, see [What is service-linked roles](https://www.alibabacloud.com/help/en/resource-management/resource-group/developer-reference/api-resourcemanager-2020-03-31-createservicelinkedrole-rg).
///
/// > **NOTE:** Available since v1.157.0.
///
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const serviceLinkedRole = new alicloud.databasefilesystem.ServiceLinkedRole("service_linked_role", {productName: "AliyunServiceRoleForDbfs"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// service_linked_role = alicloud.databasefilesystem.ServiceLinkedRole("service_linked_role", product_name="AliyunServiceRoleForDbfs")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceLinkedRole = new AliCloud.DatabaseFilesystem.ServiceLinkedRole("service_linked_role", new()
///     {
///         ProductName = "AliyunServiceRoleForDbfs",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasefilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databasefilesystem.NewServiceLinkedRole(ctx, "service_linked_role", &databasefilesystem.ServiceLinkedRoleArgs{
/// 			ProductName: pulumi.String("AliyunServiceRoleForDbfs"),
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
/// import com.pulumi.alicloud.databasefilesystem.ServiceLinkedRole;
/// import com.pulumi.alicloud.databasefilesystem.ServiceLinkedRoleArgs;
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
///         var serviceLinkedRole = new ServiceLinkedRole("serviceLinkedRole", ServiceLinkedRoleArgs.builder()
///             .productName("AliyunServiceRoleForDbfs")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceLinkedRole:
///     type: alicloud:databasefilesystem:ServiceLinkedRole
///     name: service_linked_role
///     properties:
///       productName: AliyunServiceRoleForDbfs
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Dbfs service-linked roles(SLR) can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:databasefilesystem/serviceLinkedRole:ServiceLinkedRole example <product_name>
/// ```
class ServiceLinkedRole extends pulumi.CustomResource {
  /// The product name for SLR. Dbfs can automatically create the following service-linked roles: `AliyunServiceRoleForDbfs`.
  late final pulumi.Output<String> productName;
  /// The status of the service Associated role. Valid Values: `true`: Created. `false`: not created.
  late final pulumi.Output<bool> status;

  /// Creates a new [ServiceLinkedRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceLinkedRole]. {@macro pulumi_databasefilesystem_service_linked_role_service_linked_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceLinkedRole(
    String name, {
    ServiceLinkedRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/serviceLinkedRole:ServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.productName = registerOutput<String>('productName');
    this.status = registerOutput<bool>('status');
  }
}
