// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;

/// Provides a VPC Endpoint resource.
///
/// > **NOTE on VPC Endpoints and VPC Endpoint Associations:** The provider provides both standalone VPC Endpoint Associations for
/// Route Tables - (an association between a VPC endpoint and a single `route_table_id`),
/// Security Groups - (an association between a VPC endpoint and a single `security_group_id`),
/// and Subnets - (an association between a VPC endpoint and a single `subnet_id`) and
/// a VPC Endpoint resource with `route_table_ids` and `subnet_ids` attributes.
/// Do not use the same resource ID in both a VPC Endpoint resource and a VPC Endpoint Association resource.
/// Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = new aws.ec2.VpcEndpoint("s3", {
///     vpcId: main.id,
///     serviceName: "com.amazonaws.us-west-2.s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.ec2.VpcEndpoint("s3",
///     vpc_id=main["id"],
///     service_name="com.amazonaws.us-west-2.s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3 = new Aws.Ec2.VpcEndpoint("s3", new()
///     {
///         VpcId = main.Id,
///         ServiceName = "com.amazonaws.us-west-2.s3",
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
/// 		_, err := ec2.NewVpcEndpoint(ctx, "s3", &ec2.VpcEndpointArgs{
/// 			VpcId:       pulumi.Any(main.Id),
/// 			ServiceName: pulumi.String("com.amazonaws.us-west-2.s3"),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
///         var s3 = new VpcEndpoint("s3", VpcEndpointArgs.builder()
///             .vpcId(main.id())
///             .serviceName("com.amazonaws.us-west-2.s3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3:
///     type: aws:ec2:VpcEndpoint
///     properties:
///       vpcId: ${main.id}
///       serviceName: com.amazonaws.us-west-2.s3
/// ```
///
///
/// ### Basic w/ Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = new aws.ec2.VpcEndpoint("s3", {
///     vpcId: main.id,
///     serviceName: "com.amazonaws.us-west-2.s3",
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.ec2.VpcEndpoint("s3",
///     vpc_id=main["id"],
///     service_name="com.amazonaws.us-west-2.s3",
///     tags={
///         "Environment": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3 = new Aws.Ec2.VpcEndpoint("s3", new()
///     {
///         VpcId = main.Id,
///         ServiceName = "com.amazonaws.us-west-2.s3",
///         Tags =
///         {
///             { "Environment", "test" },
///         },
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
/// 		_, err := ec2.NewVpcEndpoint(ctx, "s3", &ec2.VpcEndpointArgs{
/// 			VpcId:       pulumi.Any(main.Id),
/// 			ServiceName: pulumi.String("com.amazonaws.us-west-2.s3"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
/// 			},
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
///         var s3 = new VpcEndpoint("s3", VpcEndpointArgs.builder()
///             .vpcId(main.id())
///             .serviceName("com.amazonaws.us-west-2.s3")
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3:
///     type: aws:ec2:VpcEndpoint
///     properties:
///       vpcId: ${main.id}
///       serviceName: com.amazonaws.us-west-2.s3
///       tags:
///         Environment: test
/// ```
///
///
/// ### Cross-region enabled AWS services
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = new aws.ec2.VpcEndpoint("s3", {
///     region: "us-west-2",
///     vpcId: main.id,
///     serviceName: "com.amazonaws.us-east-2.s3",
///     serviceRegion: "us-east-2",
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.ec2.VpcEndpoint("s3",
///     region="us-west-2",
///     vpc_id=main["id"],
///     service_name="com.amazonaws.us-east-2.s3",
///     service_region="us-east-2",
///     tags={
///         "Environment": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3 = new Aws.Ec2.VpcEndpoint("s3", new()
///     {
///         Region = "us-west-2",
///         VpcId = main.Id,
///         ServiceName = "com.amazonaws.us-east-2.s3",
///         ServiceRegion = "us-east-2",
///         Tags =
///         {
///             { "Environment", "test" },
///         },
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
/// 		_, err := ec2.NewVpcEndpoint(ctx, "s3", &ec2.VpcEndpointArgs{
/// 			Region:        pulumi.String("us-west-2"),
/// 			VpcId:         pulumi.Any(main.Id),
/// 			ServiceName:   pulumi.String("com.amazonaws.us-east-2.s3"),
/// 			ServiceRegion: pulumi.String("us-east-2"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
/// 			},
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
///         var s3 = new VpcEndpoint("s3", VpcEndpointArgs.builder()
///             .region("us-west-2")
///             .vpcId(main.id())
///             .serviceName("com.amazonaws.us-east-2.s3")
///             .serviceRegion("us-east-2")
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3:
///     type: aws:ec2:VpcEndpoint
///     properties:
///       region: us-west-2
///       vpcId: ${main.id}
///       serviceName: com.amazonaws.us-east-2.s3
///       serviceRegion: us-east-2
///       tags:
///         Environment: test
/// ```
///
///
/// ### Interface Endpoint Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ec2 = new aws.ec2.VpcEndpoint("ec2", {
///     vpcId: main.id,
///     serviceName: "com.amazonaws.us-west-2.ec2",
///     vpcEndpointType: "Interface",
///     securityGroupIds: [sg1.id],
///     privateDnsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec2 = aws.ec2.VpcEndpoint("ec2",
///     vpc_id=main["id"],
///     service_name="com.amazonaws.us-west-2.ec2",
///     vpc_endpoint_type="Interface",
///     security_group_ids=[sg1["id"]],
///     private_dns_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2 = new Aws.Ec2.VpcEndpoint("ec2", new()
///     {
///         VpcId = main.Id,
///         ServiceName = "com.amazonaws.us-west-2.ec2",
///         VpcEndpointType = "Interface",
///         SecurityGroupIds = new[]
///         {
///             sg1.Id,
///         },
///         PrivateDnsEnabled = true,
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
/// 		_, err := ec2.NewVpcEndpoint(ctx, "ec2", &ec2.VpcEndpointArgs{
/// 			VpcId:           pulumi.Any(main.Id),
/// 			ServiceName:     pulumi.String("com.amazonaws.us-west-2.ec2"),
/// 			VpcEndpointType: pulumi.String("Interface"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				sg1.Id,
/// 			},
/// 			PrivateDnsEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
///         var ec2 = new VpcEndpoint("ec2", VpcEndpointArgs.builder()
///             .vpcId(main.id())
///             .serviceName("com.amazonaws.us-west-2.ec2")
///             .vpcEndpointType("Interface")
///             .securityGroupIds(sg1.id())
///             .privateDnsEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ec2:
///     type: aws:ec2:VpcEndpoint
///     properties:
///       vpcId: ${main.id}
///       serviceName: com.amazonaws.us-west-2.ec2
///       vpcEndpointType: Interface
///       securityGroupIds:
///         - ${sg1.id}
///       privateDnsEnabled: true
/// ```
///
///
/// ### Interface Endpoint Type with User-Defined IP Address
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ec2 = new aws.ec2.VpcEndpoint("ec2", {
///     vpcId: example.id,
///     serviceName: "com.amazonaws.us-west-2.ec2",
///     vpcEndpointType: "Interface",
///     subnetConfigurations: [
///         {
///             ipv4: "10.0.1.10",
///             subnetId: example1.id,
///         },
///         {
///             ipv4: "10.0.2.10",
///             subnetId: example2.id,
///         },
///     ],
///     subnetIds: [
///         example1.id,
///         example2.id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec2 = aws.ec2.VpcEndpoint("ec2",
///     vpc_id=example["id"],
///     service_name="com.amazonaws.us-west-2.ec2",
///     vpc_endpoint_type="Interface",
///     subnet_configurations=[
///         {
///             "ipv4": "10.0.1.10",
///             "subnet_id": example1["id"],
///         },
///         {
///             "ipv4": "10.0.2.10",
///             "subnet_id": example2["id"],
///         },
///     ],
///     subnet_ids=[
///         example1["id"],
///         example2["id"],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2 = new Aws.Ec2.VpcEndpoint("ec2", new()
///     {
///         VpcId = example.Id,
///         ServiceName = "com.amazonaws.us-west-2.ec2",
///         VpcEndpointType = "Interface",
///         SubnetConfigurations = new[]
///         {
///             new Aws.Ec2.Inputs.VpcEndpointSubnetConfigurationArgs
///             {
///                 Ipv4 = "10.0.1.10",
///                 SubnetId = example1.Id,
///             },
///             new Aws.Ec2.Inputs.VpcEndpointSubnetConfigurationArgs
///             {
///                 Ipv4 = "10.0.2.10",
///                 SubnetId = example2.Id,
///             },
///         },
///         SubnetIds = new[]
///         {
///             example1.Id,
///             example2.Id,
///         },
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
/// 		_, err := ec2.NewVpcEndpoint(ctx, "ec2", &ec2.VpcEndpointArgs{
/// 			VpcId:           pulumi.Any(example.Id),
/// 			ServiceName:     pulumi.String("com.amazonaws.us-west-2.ec2"),
/// 			VpcEndpointType: pulumi.String("Interface"),
/// 			SubnetConfigurations: ec2.VpcEndpointSubnetConfigurationArray{
/// 				&ec2.VpcEndpointSubnetConfigurationArgs{
/// 					Ipv4:     pulumi.String("10.0.1.10"),
/// 					SubnetId: pulumi.Any(example1.Id),
/// 				},
/// 				&ec2.VpcEndpointSubnetConfigurationArgs{
/// 					Ipv4:     pulumi.String("10.0.2.10"),
/// 					SubnetId: pulumi.Any(example2.Id),
/// 				},
/// 			},
/// 			SubnetIds: pulumi.StringArray{
/// 				example1.Id,
/// 				example2.Id,
/// 			},
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.ec2.inputs.VpcEndpointSubnetConfigurationArgs;
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
///         var ec2 = new VpcEndpoint("ec2", VpcEndpointArgs.builder()
///             .vpcId(example.id())
///             .serviceName("com.amazonaws.us-west-2.ec2")
///             .vpcEndpointType("Interface")
///             .subnetConfigurations(
///                 VpcEndpointSubnetConfigurationArgs.builder()
///                     .ipv4("10.0.1.10")
///                     .subnetId(example1.id())
///                     .build(),
///                 VpcEndpointSubnetConfigurationArgs.builder()
///                     .ipv4("10.0.2.10")
///                     .subnetId(example2.id())
///                     .build())
///             .subnetIds(
///                 example1.id(),
///                 example2.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ec2:
///     type: aws:ec2:VpcEndpoint
///     properties:
///       vpcId: ${example.id}
///       serviceName: com.amazonaws.us-west-2.ec2
///       vpcEndpointType: Interface
///       subnetConfigurations:
///         - ipv4: 10.0.1.10
///           subnetId: ${example1.id}
///         - ipv4: 10.0.2.10
///           subnetId: ${example2.id}
///       subnetIds:
///         - ${example1.id}
///         - ${example2.id}
/// ```
///
///
/// ### Gateway Load Balancer Endpoint Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.ec2.VpcEndpointService("example", {
///     acceptanceRequired: false,
///     allowedPrincipals: [current.then(current => current.arn)],
///     gatewayLoadBalancerArns: [exampleAwsLb.arn],
/// });
/// const exampleVpcEndpoint = new aws.ec2.VpcEndpoint("example", {
///     serviceName: example.serviceName,
///     subnetIds: [exampleAwsSubnet.id],
///     vpcEndpointType: example.serviceType,
///     vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.ec2.VpcEndpointService("example",
///     acceptance_required=False,
///     allowed_principals=[current.arn],
///     gateway_load_balancer_arns=[example_aws_lb["arn"]])
/// example_vpc_endpoint = aws.ec2.VpcEndpoint("example",
///     service_name=example.service_name,
///     subnet_ids=[example_aws_subnet["id"]],
///     vpc_endpoint_type=example.service_type,
///     vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Ec2.VpcEndpointService("example", new()
///     {
///         AcceptanceRequired = false,
///         AllowedPrincipals = new[]
///         {
///             current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
///         },
///         GatewayLoadBalancerArns = new[]
///         {
///             exampleAwsLb.Arn,
///         },
///     });
///
///     var exampleVpcEndpoint = new Aws.Ec2.VpcEndpoint("example", new()
///     {
///         ServiceName = example.ServiceName,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         VpcEndpointType = example.ServiceType,
///         VpcId = exampleAwsVpc.Id,
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
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ec2.NewVpcEndpointService(ctx, "example", &ec2.VpcEndpointServiceArgs{
/// 			AcceptanceRequired: pulumi.Bool(false),
/// 			AllowedPrincipals: pulumi.StringArray{
/// 				pulumi.String(current.Arn),
/// 			},
/// 			GatewayLoadBalancerArns: pulumi.StringArray{
/// 				exampleAwsLb.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// 			ServiceName: example.ServiceName,
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			VpcEndpointType: example.ServiceType,
/// 			VpcId:           pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.VpcEndpointService;
/// import com.pulumi.aws.ec2.VpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new VpcEndpointService("example", VpcEndpointServiceArgs.builder()
///             .acceptanceRequired(false)
///             .allowedPrincipals(current.arn())
///             .gatewayLoadBalancerArns(exampleAwsLb.arn())
///             .build());
///
///         var exampleVpcEndpoint = new VpcEndpoint("exampleVpcEndpoint", VpcEndpointArgs.builder()
///             .serviceName(example.serviceName())
///             .subnetIds(exampleAwsSubnet.id())
///             .vpcEndpointType(example.serviceType())
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcEndpointService
///     properties:
///       acceptanceRequired: false
///       allowedPrincipals:
///         - ${current.arn}
///       gatewayLoadBalancerArns:
///         - ${exampleAwsLb.arn}
///   exampleVpcEndpoint:
///     type: aws:ec2:VpcEndpoint
///     name: example
///     properties:
///       serviceName: ${example.serviceName}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       vpcEndpointType: ${example.serviceType}
///       vpcId: ${exampleAwsVpc.id}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ### VPC Lattice Resource Configuration Endpoint Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpoint("example", {
///     resourceConfigurationArn: exampleAwsVpclatticeResourceConfiguration.arn,
///     subnetIds: [exampleAwsSubnet.id],
///     vpcEndpointType: "Resource",
///     vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpoint("example",
///     resource_configuration_arn=example_aws_vpclattice_resource_configuration["arn"],
///     subnet_ids=[example_aws_subnet["id"]],
///     vpc_endpoint_type="Resource",
///     vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.VpcEndpoint("example", new()
///     {
///         ResourceConfigurationArn = exampleAwsVpclatticeResourceConfiguration.Arn,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         VpcEndpointType = "Resource",
///         VpcId = exampleAwsVpc.Id,
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
/// 		_, err := ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// 			ResourceConfigurationArn: pulumi.Any(exampleAwsVpclatticeResourceConfiguration.Arn),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			VpcEndpointType: pulumi.String("Resource"),
/// 			VpcId:           pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
///         var example = new VpcEndpoint("example", VpcEndpointArgs.builder()
///             .resourceConfigurationArn(exampleAwsVpclatticeResourceConfiguration.arn())
///             .subnetIds(exampleAwsSubnet.id())
///             .vpcEndpointType("Resource")
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcEndpoint
///     properties:
///       resourceConfigurationArn: ${exampleAwsVpclatticeResourceConfiguration.arn}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       vpcEndpointType: Resource
///       vpcId: ${exampleAwsVpc.id}
/// ```
///
///
/// ### VPC Lattice Service Network Endpoint Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpoint("example", {
///     serviceNetworkArn: exampleAwsVpclatticeServiceNetwork.arn,
///     subnetIds: [exampleAwsSubnet.id],
///     vpcEndpointType: "ServiceNetwork",
///     vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpoint("example",
///     service_network_arn=example_aws_vpclattice_service_network["arn"],
///     subnet_ids=[example_aws_subnet["id"]],
///     vpc_endpoint_type="ServiceNetwork",
///     vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.VpcEndpoint("example", new()
///     {
///         ServiceNetworkArn = exampleAwsVpclatticeServiceNetwork.Arn,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         VpcEndpointType = "ServiceNetwork",
///         VpcId = exampleAwsVpc.Id,
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
/// 		_, err := ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// 			ServiceNetworkArn: pulumi.Any(exampleAwsVpclatticeServiceNetwork.Arn),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			VpcEndpointType: pulumi.String("ServiceNetwork"),
/// 			VpcId:           pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
///         var example = new VpcEndpoint("example", VpcEndpointArgs.builder()
///             .serviceNetworkArn(exampleAwsVpclatticeServiceNetwork.arn())
///             .subnetIds(exampleAwsSubnet.id())
///             .vpcEndpointType("ServiceNetwork")
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcEndpoint
///     properties:
///       serviceNetworkArn: ${exampleAwsVpclatticeServiceNetwork.arn}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       vpcEndpointType: ServiceNetwork
///       vpcId: ${exampleAwsVpc.id}
/// ```
///
///
/// ### Non-AWS Service
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ptfeService = new aws.ec2.VpcEndpoint("ptfe_service", {
///     vpcId: vpcId,
///     serviceName: ptfeServiceConfig,
///     vpcEndpointType: "Interface",
///     securityGroupIds: [ptfeServiceAwsSecurityGroup.id],
///     subnetIds: [subnetIds],
///     privateDnsEnabled: false,
/// });
/// const internal = aws.route53.getZone({
///     name: "vpc.internal.",
///     privateZone: true,
///     vpcId: vpcId,
/// });
/// const ptfeServiceRecord = new aws.route53.Record("ptfe_service", {
///     zoneId: internal.then(internal => internal.zoneId),
///     name: internal.then(internal => `ptfe.${internal.name}`),
///     type: aws.route53.RecordType.CNAME,
///     ttl: 300,
///     records: [ptfeService.dnsEntries[0].dns_name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ptfe_service = aws.ec2.VpcEndpoint("ptfe_service",
///     vpc_id=vpc_id,
///     service_name=ptfe_service_config,
///     vpc_endpoint_type="Interface",
///     security_group_ids=[ptfe_service_aws_security_group["id"]],
///     subnet_ids=[subnet_ids],
///     private_dns_enabled=False)
/// internal = aws.route53.get_zone(name="vpc.internal.",
///     private_zone=True,
///     vpc_id=vpc_id)
/// ptfe_service_record = aws.route53.Record("ptfe_service",
///     zone_id=internal.zone_id,
///     name=f"ptfe.{internal.name}",
///     type=aws.route53.RecordType.CNAME,
///     ttl=300,
///     records=[ptfe_service.dns_entries[0].dns_name])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ptfeService = new Aws.Ec2.VpcEndpoint("ptfe_service", new()
///     {
///         VpcId = vpcId,
///         ServiceName = ptfeServiceConfig,
///         VpcEndpointType = "Interface",
///         SecurityGroupIds = new[]
///         {
///             ptfeServiceAwsSecurityGroup.Id,
///         },
///         SubnetIds = new[]
///         {
///             subnetIds,
///         },
///         PrivateDnsEnabled = false,
///     });
///
///     var @internal = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "vpc.internal.",
///         PrivateZone = true,
///         VpcId = vpcId,
///     });
///
///     var ptfeServiceRecord = new Aws.Route53.Record("ptfe_service", new()
///     {
///         ZoneId = @internal.Apply(@internal => @internal.Apply(getZoneResult => getZoneResult.ZoneId)),
///         Name = @internal.Apply(@internal => $"ptfe.{@internal.Apply(getZoneResult => getZoneResult.Name)}"),
///         Type = Aws.Route53.RecordType.CNAME,
///         Ttl = 300,
///         Records = new[]
///         {
///             ptfeService.DnsEntries.Apply(dnsEntries => dnsEntries[0].Dns_name),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// ptfeService, err := ec2.NewVpcEndpoint(ctx, "ptfe_service", &ec2.VpcEndpointArgs{
/// VpcId: pulumi.Any(vpcId),
/// ServiceName: pulumi.Any(ptfeServiceConfig),
/// VpcEndpointType: pulumi.String("Interface"),
/// SecurityGroupIds: pulumi.StringArray{
/// ptfeServiceAwsSecurityGroup.Id,
/// },
/// SubnetIds: pulumi.StringArray{
/// subnetIds,
/// },
/// PrivateDnsEnabled: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// internal, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// Name: pulumi.StringRef("vpc.internal."),
/// PrivateZone: pulumi.BoolRef(true),
/// VpcId: pulumi.StringRef(vpcId),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewRecord(ctx, "ptfe_service", &route53.RecordArgs{
/// ZoneId: pulumi.String(internal.ZoneId),
/// Name: pulumi.Sprintf("ptfe.%v", internal.Name),
/// Type: pulumi.String(route53.RecordTypeCNAME),
/// Ttl: pulumi.Int(300),
/// Records: pulumi.StringArray{
/// pulumi.String(ptfeService.DnsEntries.ApplyT(func(dnsEntries []ec2.VpcEndpointDnsEntry) (interface{}, error) {
/// return dnsEntries[0].Dns_name, nil
/// }).(pulumi.Interface{}Output)),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
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
///         var ptfeService = new VpcEndpoint("ptfeService", VpcEndpointArgs.builder()
///             .vpcId(vpcId)
///             .serviceName(ptfeServiceConfig)
///             .vpcEndpointType("Interface")
///             .securityGroupIds(ptfeServiceAwsSecurityGroup.id())
///             .subnetIds(subnetIds)
///             .privateDnsEnabled(false)
///             .build());
///
///         final var internal = Route53Functions.getZone(GetZoneArgs.builder()
///             .name("vpc.internal.")
///             .privateZone(true)
///             .vpcId(vpcId)
///             .build());
///
///         var ptfeServiceRecord = new Record("ptfeServiceRecord", RecordArgs.builder()
///             .zoneId(internal.zoneId())
///             .name(String.format("ptfe.%s", internal.name()))
///             .type("CNAME")
///             .ttl(300)
///             .records(ptfeService.dnsEntries().applyValue(_dnsEntries -> _dnsEntries[0].dns_name()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ptfeService:
///     type: aws:ec2:VpcEndpoint
///     name: ptfe_service
///     properties:
///       vpcId: ${vpcId}
///       serviceName: ${ptfeServiceConfig}
///       vpcEndpointType: Interface
///       securityGroupIds:
///         - ${ptfeServiceAwsSecurityGroup.id}
///       subnetIds:
///         - ${subnetIds}
///       privateDnsEnabled: false
///   ptfeServiceRecord:
///     type: aws:route53:Record
///     name: ptfe_service
///     properties:
///       zoneId: ${internal.zoneId}
///       name: ptfe.${internal.name}
///       type: CNAME
///       ttl: '300'
///       records:
///         - ${ptfeService.dnsEntries[0].dns_name}
/// variables:
///   internal:
///     fn::invoke:
///       function: aws:route53:getZone
///       arguments:
///         name: vpc.internal.
///         privateZone: true
///         vpcId: ${vpcId}
/// ```
///
///
/// > **NOTE The `dns_entry` output is a list of maps:** This provider interpolation support for lists of maps requires the `lookup` and `[]` until full support of lists of maps is available
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the VPC endpoint.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
/// * `region` (String) Region where this resource is managed.
///
/// Using `pulumi import`, import VPC Endpoints using the VPC endpoint `id`. For example:
///
/// % pulumi import aws_vpc_endpoint.example vpce-3ecf2a57
class VpcEndpointSpec {
  /// Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  final pulumi.Input<bool>? autoAccept;
  /// The DNS options for the endpoint. See dns_options below.
  final pulumi.Input<pulumi_aws_ec2.VpcEndpointDnsOptions>? dnsOptions;
  /// The IP address type for the endpoint. Valid values are `ipv4`, `dualstack`, and `ipv6`.
  final pulumi.Input<String>? ipAddressType;
  /// A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  final pulumi.Input<String>? policy;
  /// Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type Interface. Defaults to `false`.
  final pulumi.Input<bool>? privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  final pulumi.Input<String>? resourceConfigurationArn;
  /// One or more route table IDs. Applicable for endpoints of type `Gateway`.
  final pulumi.Input<List<String>>? routeTableIds;
  /// The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// If no security groups are specified, the VPC's [default security group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#DefaultSecurityGroup) is associated with the endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`).
  final pulumi.Input<String> serviceName;
  /// The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  final pulumi.Input<String>? serviceNetworkArn;
  /// The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  final pulumi.Input<String>? serviceRegion;
  /// Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See subnet_configuration below.
  final pulumi.Input<List<pulumi_aws_ec2.VpcEndpointSubnetConfiguration>>? subnetConfigurations;
  /// The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  final pulumi.Input<String>? vpcEndpointType;

  /// Creates a new [VpcEndpointSpec].
  /// [autoAccept] Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  /// [dnsOptions] The DNS options for the endpoint. See dns_options below.
  /// [ipAddressType] The IP address type for the endpoint. Valid values are `ipv4`, `dualstack`, and `ipv6`.
  /// [policy] A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  /// [privateDnsEnabled] Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type Interface. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfigurationArn] The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  /// [routeTableIds] One or more route table IDs. Applicable for endpoints of type `Gateway`.
  /// [securityGroupIds] The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// [serviceName] The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`).
  /// [serviceNetworkArn] The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  /// [serviceRegion] The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  /// [subnetConfigurations] Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See subnet_configuration below.
  /// [subnetIds] The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcEndpointType] The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  VpcEndpointSpec({
    this.autoAccept,
    this.dnsOptions,
    this.ipAddressType,
    this.policy,
    this.privateDnsEnabled,
    this.region,
    this.resourceConfigurationArn,
    this.routeTableIds,
    this.securityGroupIds,
    required this.serviceName,
    this.serviceNetworkArn,
    this.serviceRegion,
    this.subnetConfigurations,
    this.subnetIds,
    this.tags,
    this.vpcEndpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAccept': ?autoAccept,
      'dnsOptions': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ec2.VpcEndpointDnsOptions, Map<String, dynamic>>(dnsOptions, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'policy': ?policy,
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'resourceConfigurationArn': ?resourceConfigurationArn,
      'routeTableIds': ?routeTableIds,
      'securityGroupIds': ?securityGroupIds,
      'serviceName': serviceName,
      'serviceNetworkArn': ?serviceNetworkArn,
      'serviceRegion': ?serviceRegion,
      'subnetConfigurations': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ec2.VpcEndpointSubnetConfiguration>, List<Map<String, dynamic>>>(subnetConfigurations, (value) => pulumi.Input.encodeList<pulumi_aws_ec2.VpcEndpointSubnetConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'vpcEndpointType': ?vpcEndpointType,
    };
  }

  factory VpcEndpointSpec.fromMap(Map<String, dynamic> map) {
    return VpcEndpointSpec(
      autoAccept: map['autoAccept'] == null ? null : (map['autoAccept'] as bool).input(),
      dnsOptions: map['dnsOptions'] == null ? null : (pulumi_aws_ec2.VpcEndpointDnsOptions.fromMap((map['dnsOptions'] as Map).cast<String, dynamic>())).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : (map['privateDnsEnabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceConfigurationArn: map['resourceConfigurationArn'] == null ? null : (map['resourceConfigurationArn'] as String).input(),
      routeTableIds: map['routeTableIds'] == null ? null : ((map['routeTableIds'] as List).cast<String>()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      serviceName: (map['serviceName'] as String).input(),
      serviceNetworkArn: map['serviceNetworkArn'] == null ? null : (map['serviceNetworkArn'] as String).input(),
      serviceRegion: map['serviceRegion'] == null ? null : (map['serviceRegion'] as String).input(),
      subnetConfigurations: map['subnetConfigurations'] == null ? null : (pulumi.Input.decodeList<pulumi_aws_ec2.VpcEndpointSubnetConfiguration>(map['subnetConfigurations'], (value) => pulumi_aws_ec2.VpcEndpointSubnetConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcEndpointType: map['vpcEndpointType'] == null ? null : (map['vpcEndpointType'] as String).input(),
    );
  }
}

