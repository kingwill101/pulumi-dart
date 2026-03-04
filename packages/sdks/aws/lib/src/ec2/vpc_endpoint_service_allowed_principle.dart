import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_service_allowed_principle_args.dart';
import 'vpc_endpoint_service_allowed_principle_state.dart';

/// Provides a resource to allow a principal to discover a VPC endpoint service.
///
/// &gt; **NOTE on VPC Endpoint Services and VPC Endpoint Service Allowed Principals:** This provider provides
/// both a standalone VPC Endpoint Service Allowed Principal resource
/// and a VPC Endpoint Service resource with an `allowed_principals` attribute. Do not use the same principal ARN in both
/// a VPC Endpoint Service resource and a VPC Endpoint Service Allowed Principal resource. Doing so will cause a conflict
/// and will overwrite the association.
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
/// const current = aws.getCallerIdentity({});
/// const allowMeToFoo = new aws.ec2.VpcEndpointServiceAllowedPrinciple("allow_me_to_foo", {
///     vpcEndpointServiceId: foo.id,
///     principalArn: current.then(current => current.arn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// allow_me_to_foo = aws.ec2.VpcEndpointServiceAllowedPrinciple("allow_me_to_foo",
///     vpc_endpoint_service_id=foo["id"],
///     principal_arn=current.arn)
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
///     var allowMeToFoo = new Aws.Ec2.VpcEndpointServiceAllowedPrinciple("allow_me_to_foo", new()
///     {
///         VpcEndpointServiceId = foo.Id,
///         PrincipalArn = current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
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
/// 		_, err = ec2.NewVpcEndpointServiceAllowedPrinciple(ctx, "allow_me_to_foo", &ec2.VpcEndpointServiceAllowedPrincipleArgs{
/// 			VpcEndpointServiceId: pulumi.Any(foo.Id),
/// 			PrincipalArn:         pulumi.String(current.Arn),
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
/// import com.pulumi.aws.ec2.VpcEndpointServiceAllowedPrinciple;
/// import com.pulumi.aws.ec2.VpcEndpointServiceAllowedPrincipleArgs;
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
///         var allowMeToFoo = new VpcEndpointServiceAllowedPrinciple("allowMeToFoo", VpcEndpointServiceAllowedPrincipleArgs.builder()
///             .vpcEndpointServiceId(foo.id())
///             .principalArn(current.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   allowMeToFoo:
///     type: aws:ec2:VpcEndpointServiceAllowedPrinciple
///     name: allow_me_to_foo
///     properties:
///       vpcEndpointServiceId: ${foo.id}
///       principalArn: ${current.arn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
class VpcEndpointServiceAllowedPrinciple extends pulumi.CustomResource {
  /// The ARN of the principal to allow permissions.
  late final pulumi.Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the VPC endpoint service to allow permission.
  late final pulumi.Output<String> vpcEndpointServiceId;

  /// Creates a new [VpcEndpointServiceAllowedPrinciple].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointServiceAllowedPrinciple]. {@macro pulumi_ec2_vpc_endpoint_service_allowed_principle_vpc_endpoint_service_allowed_principle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointServiceAllowedPrinciple(
    String name, {
    VpcEndpointServiceAllowedPrincipleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcEndpointServiceAllowedPrinciple:VpcEndpointServiceAllowedPrinciple',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    principalArn = registerOutput<String>('principalArn');
    region = registerOutput<String>('region');
    vpcEndpointServiceId = registerOutput<String>('vpcEndpointServiceId');
  }

  /// Gets an existing [VpcEndpointServiceAllowedPrinciple] resource's state with the given [name] and [id].
  static VpcEndpointServiceAllowedPrinciple get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointServiceAllowedPrincipleState? state,
  }) {
    return VpcEndpointServiceAllowedPrinciple._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEndpointServiceAllowedPrinciple._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcEndpointServiceAllowedPrinciple:VpcEndpointServiceAllowedPrinciple',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    principalArn = registerOutput<String>('principalArn');
    region = registerOutput<String>('region');
    vpcEndpointServiceId = registerOutput<String>('vpcEndpointServiceId');
  }
}
