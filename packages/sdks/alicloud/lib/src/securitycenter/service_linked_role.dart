import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_linked_role_state.dart';

/// Using this resource can create SecurityCenter service-linked role : `AliyunServiceRolePolicyForSas`.  This Role is a Resource Access Management (RAM) role, which to obtain permissions to access another Alibaba Cloud service.
///
///
/// For information about Security Center Service Role and how to use it, see [What is Security Center](https://www.alibabacloud.com/help/en/doc-detail/42302.htm).
///
/// &gt; **NOTE:** Available since v1.142.0.
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
/// const serviceLinkedRole = new alicloud.securitycenter.ServiceLinkedRole("service_linked_role", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// service_linked_role = alicloud.securitycenter.ServiceLinkedRole("service_linked_role")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceLinkedRole = new AliCloud.SecurityCenter.ServiceLinkedRole("service_linked_role");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewServiceLinkedRole(ctx, "service_linked_role", nil)
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
/// import com.pulumi.alicloud.securitycenter.ServiceLinkedRole;
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
///         var serviceLinkedRole = new ServiceLinkedRole("serviceLinkedRole");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceLinkedRole:
///     type: alicloud:securitycenter:ServiceLinkedRole
///     name: service_linked_role
/// ```
///
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SecurityCenter service-linked roles(SLR) can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:securitycenter/serviceLinkedRole:ServiceLinkedRole example <product_name>
/// ```
class ServiceLinkedRole extends pulumi.CustomResource {
  /// The status of the service Associated role. Valid Values: `true`: Created. `false`: not created.
  late final pulumi.Output<bool> status;

  /// Creates a new [ServiceLinkedRole].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  ServiceLinkedRole(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:securitycenter/serviceLinkedRole:ServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    status = registerOutput<bool>('status');
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
          'alicloud:securitycenter/serviceLinkedRole:ServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    status = registerOutput<bool>('status');
  }
}
