import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_attachment_args.dart';
import 'node_group_attachment_data_disk.dart';

/// Provides a Eflo Node Group Attachment resource.
///
/// Node Association Node Group Resources.
///
/// For information about Eflo Node Group Attachment and how to use it, see [What is Node Group Attachment](https://next.api.alibabacloud.com/document/eflo-controller/2022-12-15/ExtendCluster).
///
/// > **NOTE:** Available since v1.255.0.
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
/// const _default = new alicloud.eflo.NodeGroupAttachment("default", {
///     vswitchId: "vsw-uf63gbmvwgreao66opmie",
///     hostname: "attachment-example-e01-cn-smw4d1bzd0a",
///     loginPassword: "G7f$2kL9@vQx3Zp5*",
///     clusterId: "i118976621753269898628",
///     nodeGroupId: "i127582271753269898630",
///     nodeId: "e01-cn-smw4d1bzd0a",
///     vpcId: "vpc-uf6t73bb01dfprb2qvpqa",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.eflo.NodeGroupAttachment("default",
///     vswitch_id="vsw-uf63gbmvwgreao66opmie",
///     hostname="attachment-example-e01-cn-smw4d1bzd0a",
///     login_password="G7f$2kL9@vQx3Zp5*",
///     cluster_id="i118976621753269898628",
///     node_group_id="i127582271753269898630",
///     node_id="e01-cn-smw4d1bzd0a",
///     vpc_id="vpc-uf6t73bb01dfprb2qvpqa")
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
///     var @default = new AliCloud.Eflo.NodeGroupAttachment("default", new()
///     {
///         VswitchId = "vsw-uf63gbmvwgreao66opmie",
///         Hostname = "attachment-example-e01-cn-smw4d1bzd0a",
///         LoginPassword = "G7f$2kL9@vQx3Zp5*",
///         ClusterId = "i118976621753269898628",
///         NodeGroupId = "i127582271753269898630",
///         NodeId = "e01-cn-smw4d1bzd0a",
///         VpcId = "vpc-uf6t73bb01dfprb2qvpqa",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
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
/// 		_, err := eflo.NewNodeGroupAttachment(ctx, "default", &eflo.NodeGroupAttachmentArgs{
/// 			VswitchId:     pulumi.String("vsw-uf63gbmvwgreao66opmie"),
/// 			Hostname:      pulumi.String("attachment-example-e01-cn-smw4d1bzd0a"),
/// 			LoginPassword: pulumi.String("G7f$2kL9@vQx3Zp5*"),
/// 			ClusterId:     pulumi.String("i118976621753269898628"),
/// 			NodeGroupId:   pulumi.String("i127582271753269898630"),
/// 			NodeId:        pulumi.String("e01-cn-smw4d1bzd0a"),
/// 			VpcId:         pulumi.String("vpc-uf6t73bb01dfprb2qvpqa"),
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
/// import com.pulumi.alicloud.eflo.NodeGroupAttachment;
/// import com.pulumi.alicloud.eflo.NodeGroupAttachmentArgs;
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
///         var default_ = new NodeGroupAttachment("default", NodeGroupAttachmentArgs.builder()
///             .vswitchId("vsw-uf63gbmvwgreao66opmie")
///             .hostname("attachment-example-e01-cn-smw4d1bzd0a")
///             .loginPassword("G7f$2kL9@vQx3Zp5*")
///             .clusterId("i118976621753269898628")
///             .nodeGroupId("i127582271753269898630")
///             .nodeId("e01-cn-smw4d1bzd0a")
///             .vpcId("vpc-uf6t73bb01dfprb2qvpqa")
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
///   default:
///     type: alicloud:eflo:NodeGroupAttachment
///     properties:
///       vswitchId: vsw-uf63gbmvwgreao66opmie
///       hostname: attachment-example-e01-cn-smw4d1bzd0a
///       loginPassword: G7f$2kL9@vQx3Zp5*
///       clusterId: i118976621753269898628
///       nodeGroupId: i127582271753269898630
///       nodeId: e01-cn-smw4d1bzd0a
///       vpcId: vpc-uf6t73bb01dfprb2qvpqa
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eflo Node Group Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/nodeGroupAttachment:NodeGroupAttachment example <cluster_id>:<node_group_id>:<node_id>
/// ```
class NodeGroupAttachment extends pulumi.CustomResource {
  /// Cluster ID
  late final pulumi.Output<String> clusterId;
  /// The data disk of the cloud disk to be attached to the node. See `data_disk` below.
  late final pulumi.Output<List<NodeGroupAttachmentDataDisk>?> dataDisks;
  /// Node hostname
  late final pulumi.Output<String> hostname;
  /// Node login password
  late final pulumi.Output<String?> loginPassword;
  /// Node group ID
  late final pulumi.Output<String> nodeGroupId;
  /// Node ID
  late final pulumi.Output<String> nodeId;
  /// User-defined data
  late final pulumi.Output<String?> userData;
  /// Vpc id
  late final pulumi.Output<String> vpcId;
  /// vswitch id
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [NodeGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroupAttachment]. {@macro pulumi_eflo_node_group_attachment_node_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroupAttachment(
    String name, {
    NodeGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/nodeGroupAttachment:NodeGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.dataDisks = registerOutput<List<NodeGroupAttachmentDataDisk>?>('dataDisks');
    this.hostname = registerOutput<String>('hostname');
    this.loginPassword = registerOutput<String?>('loginPassword');
    this.nodeGroupId = registerOutput<String>('nodeGroupId');
    this.nodeId = registerOutput<String>('nodeId');
    this.userData = registerOutput<String?>('userData');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
