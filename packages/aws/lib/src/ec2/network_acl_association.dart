import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_association_args.dart';

/// Provides an network ACL association resource which allows you to associate your network ACL with any subnet(s).
///
/// > **NOTE on Network ACLs and Network ACL Associations:** the provider provides both a standalone network ACL association resource
/// and a network ACL resource with a `subnet_ids` attribute. Do not use the same subnet ID in both a network ACL
/// resource and a network ACL association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.NetworkAclAssociation("main", {
///     networkAclId: mainAwsNetworkAcl.id,
///     subnetId: mainAwsSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.NetworkAclAssociation("main",
///     network_acl_id=main_aws_network_acl["id"],
///     subnet_id=main_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.NetworkAclAssociation("main", new()
///     {
///         NetworkAclId = mainAwsNetworkAcl.Id,
///         SubnetId = mainAwsSubnet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewNetworkAclAssociation(ctx, "main", &ec2.NetworkAclAssociationArgs{
/// 			NetworkAclId: pulumi.Any(mainAwsNetworkAcl.Id),
/// 			SubnetId:     pulumi.Any(mainAwsSubnet.Id),
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
/// import com.pulumi.aws.ec2.NetworkAclAssociation;
/// import com.pulumi.aws.ec2.NetworkAclAssociationArgs;
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
///         var main = new NetworkAclAssociation("main", NetworkAclAssociationArgs.builder()
///             .networkAclId(mainAwsNetworkAcl.id())
///             .subnetId(mainAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:NetworkAclAssociation
///     properties:
///       networkAclId: ${mainAwsNetworkAcl.id}
///       subnetId: ${mainAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network ACL associations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkAclAssociation:NetworkAclAssociation main aclassoc-02baf37f20966b3e6
/// ```
class NetworkAclAssociation extends pulumi.CustomResource {
  /// The ID of the network ACL.
  late final pulumi.Output<String> networkAclId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the associated Subnet.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [NetworkAclAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAclAssociation]. {@macro pulumi_ec2_network_acl_association_network_acl_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAclAssociation(
    String name, {
    NetworkAclAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkAclAssociation:NetworkAclAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.networkAclId = registerOutput<String>('networkAclId');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
