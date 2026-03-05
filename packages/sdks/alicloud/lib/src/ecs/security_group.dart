import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_args.dart';
import 'security_group_state.dart';

/// Provides a ECS Security Group resource.
///
///
///
/// For information about ECS Security Group and how to use it, see [What is Security Group](https://www.alibabacloud.com/help/en/ecs/developer-reference/api-createsecuritygroup).
///
/// &gt; **NOTE:** Available since v1.0.0.
///
/// &gt; **NOTE:** `alicloud.ecs.SecurityGroup` is used to build and manage a security group, and `alicloud.ecs.SecurityGroupRule` can define ingress or egress rules for it.
///
/// &gt; **NOTE:** From version 1.7.2, `alicloud.ecs.SecurityGroup` has supported to segregate different ECS instance in which the same security group.
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
/// const _default = new alicloud.ecs.SecurityGroup("default", {securityGroupName: "terraform-example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.SecurityGroup("default", security_group_name="terraform-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = "terraform-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String("terraform-example"),
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
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
///         var default_ = new SecurityGroup("default", SecurityGroupArgs.builder()
///             .securityGroupName("terraform-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       securityGroupName: terraform-example
/// ```
///
///
/// Basic Usage for VPC
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: "terraform-example",
///     vpcId: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name="terraform-example",
///     vpc_id=default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = "terraform-example",
///         VpcId = @default.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String("terraform-example"),
/// 			VpcId:             _default.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName("terraform-example")
///             .vpcId(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/16
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       securityGroupName: terraform-example
///       vpcId: ${default.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing security-group module
/// to create a security group and add several rules one-click.
///
/// ## Import
///
/// ECS Security Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/securityGroup:SecurityGroup example <id>
/// ```
class SecurityGroup extends pulumi.CustomResource {
  /// (Available since v1.239.0) The time when the security group was created.
  late final pulumi.Output<String> createTime;
  /// The description of the security group. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// Field `inner_access` has been deprecated from provider version 1.55.3. New field `inner_access_policy` instead.
  late final pulumi.Output<bool> innerAccess;
  /// The internal access control policy of the security group. Valid values:
  /// - `Accept`: The internal interconnectivity policy.
  /// - `Drop`: The internal isolation policy.
  late final pulumi.Output<String> innerAccessPolicy;
  /// Field `name` has been deprecated from provider version 1.239.0. New field `security_group_name` instead.
  late final pulumi.Output<String> name;
  /// The ID of the resource group to which the security group belongs. **NOTE:** From version 1.115.0, `resource_group_id` can be modified.
  late final pulumi.Output<String> resourceGroupId;
  /// The name of the security group. The name must be `2` to `128` characters in length. The name must start with a letter and cannot start with `http://` or `https://`. The name can contain Unicode characters under the Decimal Number category and the categories whose names contain Letter. The name can also contain colons (:), underscores (\_), periods (.), and hyphens (-).
  late final pulumi.Output<String> securityGroupName;
  /// The type of the security group. Default value: `normal`. Valid values:
  late final pulumi.Output<String> securityGroupType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the VPC in which you want to create the security group.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [SecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroup]. {@macro pulumi_ecs_security_group_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroup(
    String name, {
    SecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/securityGroup:SecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    innerAccess = registerOutput<bool>('innerAccess');
    innerAccessPolicy = registerOutput<String>('innerAccessPolicy');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupName = registerOutput<String>('securityGroupName');
    securityGroupType = registerOutput<String>('securityGroupType');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [SecurityGroup] resource's state with the given [name] and [id].
  static SecurityGroup get(
    String name,
    pulumi.Input<String> id, {
    SecurityGroupState? state,
  }) {
    return SecurityGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/securityGroup:SecurityGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    innerAccess = registerOutput<bool>('innerAccess');
    innerAccessPolicy = registerOutput<String>('innerAccessPolicy');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupName = registerOutput<String>('securityGroupName');
    securityGroupType = registerOutput<String>('securityGroupType');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }
}
