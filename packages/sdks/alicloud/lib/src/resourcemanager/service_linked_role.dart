import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_linked_role_args.dart';
import 'service_linked_role_state.dart';

/// Provides a Resource Manager Service Linked Role.
///
/// For information about Resource Manager Service Linked Role and how to use it, see [What is Service Linked Role.](https://www.alibabacloud.com/help/en/doc-detail/171226.htm).
///
/// &gt; **NOTE:** Available since v1.157.0.
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
/// const _default = new alicloud.resourcemanager.ServiceLinkedRole("default", {serviceName: "ops.elasticsearch.aliyuncs.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.ServiceLinkedRole("default", service_name="ops.elasticsearch.aliyuncs.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.ResourceManager.ServiceLinkedRole("default", new()
///     {
///         ServiceName = "ops.elasticsearch.aliyuncs.com",
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
/// 		_, err := resourcemanager.NewServiceLinkedRole(ctx, "default", &resourcemanager.ServiceLinkedRoleArgs{
/// 			ServiceName: pulumi.String("ops.elasticsearch.aliyuncs.com"),
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
/// import com.pulumi.alicloud.resourcemanager.ServiceLinkedRole;
/// import com.pulumi.alicloud.resourcemanager.ServiceLinkedRoleArgs;
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
///         var default_ = new ServiceLinkedRole("default", ServiceLinkedRoleArgs.builder()
///             .serviceName("ops.elasticsearch.aliyuncs.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:resourcemanager:ServiceLinkedRole
///     properties:
///       serviceName: ops.elasticsearch.aliyuncs.com
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Service Linked Role can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/serviceLinkedRole:ServiceLinkedRole default <service_name>:<role_name>
/// ```
class ServiceLinkedRole extends pulumi.CustomResource {
  /// The Alibaba Cloud Resource Name (ARN) of the role.
  late final pulumi.Output<String> arn;
  /// The suffix of the role name. Only a few service linked roles support custom suffixes. The role name (including its suffix) must be 1 to 64 characters in length and can contain letters, digits, periods (.), and hyphens (-). For example, if the suffix is Example, the role name is ServiceLinkedRoleName_Example.
  late final pulumi.Output<String?> customSuffix;
  /// The description of the service linked role.  This parameter must be specified for only the service linked roles that support custom suffixes. Otherwise, the preset value is used and cannot be modified. The description must be 1 to 1,024 characters in length.
  late final pulumi.Output<String?> description;
  /// The ID of the role.
  late final pulumi.Output<String> roleId;
  /// The name of the role.
  late final pulumi.Output<String> roleName;
  /// The service name. For more information about the service name, see [Cloud services that support service linked roles](https://www.alibabacloud.com/help/en/doc-detail/160674.htm)
  late final pulumi.Output<String> serviceName;

  /// Creates a new [ServiceLinkedRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceLinkedRole]. {@macro pulumi_resourcemanager_service_linked_role_service_linked_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceLinkedRole(
    String name, {
    ServiceLinkedRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/serviceLinkedRole:ServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    customSuffix = registerOutput<String?>('customSuffix');
    description = registerOutput<String?>('description');
    roleId = registerOutput<String>('roleId');
    roleName = registerOutput<String>('roleName');
    serviceName = registerOutput<String>('serviceName');
  }

  /// Gets an existing [ServiceLinkedRole] resource's state with the given [name] and [id].
  static ServiceLinkedRole get(
    String name,
    pulumi.Input<String> id, {
    ServiceLinkedRoleState? state,
  }) {
    return ServiceLinkedRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceLinkedRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/serviceLinkedRole:ServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    customSuffix = registerOutput<String?>('customSuffix');
    description = registerOutput<String?>('description');
    roleId = registerOutput<String>('roleId');
    roleName = registerOutput<String>('roleName');
    serviceName = registerOutput<String>('serviceName');
  }
}
