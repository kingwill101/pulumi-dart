import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_scope_args.dart';

/// Creates a scope for AWS IPAM.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = new aws.ec2.VpcIpam("example", {operatingRegions: [{
///     regionName: current.then(current => current.region),
/// }]});
/// const exampleVpcIpamScope = new aws.ec2.VpcIpamScope("example", {
///     ipamId: example.id,
///     description: "Another Scope",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.ec2.VpcIpam("example", operating_regions=[{
///     "region_name": current.region,
/// }])
/// example_vpc_ipam_scope = aws.ec2.VpcIpamScope("example",
///     ipam_id=example.id,
///     description="Another Scope")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var example = new Aws.Ec2.VpcIpam("example", new()
///     {
///         OperatingRegions = new[]
///         {
///             new Aws.Ec2.Inputs.VpcIpamOperatingRegionArgs
///             {
///                 RegionName = current.Apply(getRegionResult => getRegionResult.Region),
///             },
///         },
///     });
///
///     var exampleVpcIpamScope = new Aws.Ec2.VpcIpamScope("example", new()
///     {
///         IpamId = example.Id,
///         Description = "Another Scope",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ec2.NewVpcIpam(ctx, "example", &ec2.VpcIpamArgs{
/// 			OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// 				&ec2.VpcIpamOperatingRegionArgs{
/// 					RegionName: pulumi.String(current.Region),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamScope(ctx, "example", &ec2.VpcIpamScopeArgs{
/// 			IpamId:      example.ID(),
/// 			Description: pulumi.String("Another Scope"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpam;
/// import com.pulumi.aws.ec2.VpcIpamArgs;
/// import com.pulumi.aws.ec2.inputs.VpcIpamOperatingRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpamScope;
/// import com.pulumi.aws.ec2.VpcIpamScopeArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var example = new VpcIpam("example", VpcIpamArgs.builder()
///             .operatingRegions(VpcIpamOperatingRegionArgs.builder()
///                 .regionName(current.region())
///                 .build())
///             .build());
///
///         var exampleVpcIpamScope = new VpcIpamScope("exampleVpcIpamScope", VpcIpamScopeArgs.builder()
///             .ipamId(example.id())
///             .description("Another Scope")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcIpam
///     properties:
///       operatingRegions:
///         - regionName: ${current.region}
///   exampleVpcIpamScope:
///     type: aws:ec2:VpcIpamScope
///     name: example
///     properties:
///       ipamId: ${example.id}
///       description: Another Scope
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the `scope_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamScope:VpcIpamScope example ipam-scope-0513c69f283d11dfb
/// ```
class VpcIpamScope extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the scope.
  late final pulumi.Output<String> arn;

  /// A description for the scope you're creating.
  late final pulumi.Output<String?> description;

  /// The ARN of the IPAM for which you're creating this scope.
  late final pulumi.Output<String> ipamArn;

  /// The ID of the IPAM for which you're creating this scope.
  late final pulumi.Output<String> ipamId;
  late final pulumi.Output<String> ipamScopeType;

  /// Defines if the scope is the default scope or not.
  late final pulumi.Output<bool> isDefault;

  /// The number of pools in the scope.
  late final pulumi.Output<int> poolCount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VpcIpamScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIpamScope]. {@macro pulumi_ec2_vpc_ipam_scope_vpc_ipam_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcIpamScope(
    String name, {
    VpcIpamScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcIpamScope:VpcIpamScope',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.ipamArn = registerOutput<String>('ipamArn');
    this.ipamId = registerOutput<String>('ipamId');
    this.ipamScopeType = registerOutput<String>('ipamScopeType');
    this.isDefault = registerOutput<bool>('isDefault');
    this.poolCount = registerOutput<int>('poolCount');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
