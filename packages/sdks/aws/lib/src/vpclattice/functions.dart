import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auth_policy_args.dart';
import 'get_auth_policy_result.dart';
import 'get_listener_args.dart';
import 'get_listener_result.dart';
import 'get_resource_policy_args.dart';
import 'get_resource_policy_result.dart';
import 'get_service_args.dart';
import 'get_service_network_args.dart';
import 'get_service_network_result.dart';
import 'get_service_network_service_associations_args.dart';
import 'get_service_network_service_associations_result.dart';
import 'get_service_result.dart';

/// Data source for managing an AWS VPC Lattice Auth Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.vpclattice.getAuthPolicy({
///     resourceIdentifier: testAwsVpclatticeAuthPolicy.resourceIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpclattice.get_auth_policy(resource_identifier=test_aws_vpclattice_auth_policy["resourceIdentifier"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.VpcLattice.GetAuthPolicy.Invoke(new()
///     {
///         ResourceIdentifier = testAwsVpclatticeAuthPolicy.ResourceIdentifier,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.LookupAuthPolicy(ctx, &vpclattice.LookupAuthPolicyArgs{
/// 			ResourceIdentifier: testAwsVpclatticeAuthPolicy.ResourceIdentifier,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_vpclattice_getauthpolicy" "test" {
///   resource_identifier = testAwsVpclatticeAuthPolicy.resourceIdentifier
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.VpclatticeFunctions;
/// import com.pulumi.aws.vpclattice.inputs.GetAuthPolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var test = VpclatticeFunctions.getAuthPolicy(GetAuthPolicyArgs.builder()
///             .resourceIdentifier(testAwsVpclatticeAuthPolicy.resourceIdentifier())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:vpclattice:getAuthPolicy
///       arguments:
///         resourceIdentifier: ${testAwsVpclatticeAuthPolicy.resourceIdentifier}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpclattice_get_auth_policy_get_auth_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthPolicyResult> getAuthPolicy(
  GetAuthPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getAuthPolicy:getAuthPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthPolicyResult.fromMap(result);
}

/// Data source for managing an AWS VPC Lattice Listener.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.vpclattice.getListener({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.get_listener()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.VpcLattice.GetListener.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.LookupListener(ctx, &vpclattice.LookupListenerArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_vpclattice_getlistener" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.VpclatticeFunctions;
/// import com.pulumi.aws.vpclattice.inputs.GetListenerArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = VpclatticeFunctions.getListener(GetListenerArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:vpclattice:getListener
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpclattice_get_listener_get_listener_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenerResult> getListener(
  GetListenerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getListener:getListener',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenerResult.fromMap(result);
}

/// Data source for managing an AWS VPC Lattice Resource Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.vpclattice.getResourcePolicy({
///     resourceArn: exampleAwsVpclatticeServiceNetwork.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.get_resource_policy(resource_arn=example_aws_vpclattice_service_network["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.VpcLattice.GetResourcePolicy.Invoke(new()
///     {
///         ResourceArn = exampleAwsVpclatticeServiceNetwork.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.LookupResourcePolicy(ctx, &vpclattice.LookupResourcePolicyArgs{
/// 			ResourceArn: exampleAwsVpclatticeServiceNetwork.Arn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_vpclattice_getresourcepolicy" "example" {
///   resource_arn = exampleAwsVpclatticeServiceNetwork.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.VpclatticeFunctions;
/// import com.pulumi.aws.vpclattice.inputs.GetResourcePolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = VpclatticeFunctions.getResourcePolicy(GetResourcePolicyArgs.builder()
///             .resourceArn(exampleAwsVpclatticeServiceNetwork.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:vpclattice:getResourcePolicy
///       arguments:
///         resourceArn: ${exampleAwsVpclatticeServiceNetwork.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpclattice_get_resource_policy_get_resource_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyResult> getResourcePolicy(
  GetResourcePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getResourcePolicy:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult.fromMap(result);
}

/// Data source for managing an AWS VPC Lattice Service.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.vpclattice.getService({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.get_service(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.VpcLattice.GetService.Invoke(new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.LookupService(ctx, &vpclattice.LookupServiceArgs{
/// 			Name: pulumi.StringRef("example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_vpclattice_getservice" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.VpclatticeFunctions;
/// import com.pulumi.aws.vpclattice.inputs.GetServiceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = VpclatticeFunctions.getService(GetServiceArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:vpclattice:getService
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpclattice_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Data source for managing an AWS VPC Lattice Service Network.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.vpclattice.getServiceNetwork({
///     serviceNetworkIdentifier: "snsa-01112223334445556",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.get_service_network(service_network_identifier="snsa-01112223334445556")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.VpcLattice.GetServiceNetwork.Invoke(new()
///     {
///         ServiceNetworkIdentifier = "snsa-01112223334445556",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.LookupServiceNetwork(ctx, &vpclattice.LookupServiceNetworkArgs{
/// 			ServiceNetworkIdentifier: "snsa-01112223334445556",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_vpclattice_getservicenetwork" "example" {
///   service_network_identifier = "snsa-01112223334445556"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.VpclatticeFunctions;
/// import com.pulumi.aws.vpclattice.inputs.GetServiceNetworkArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = VpclatticeFunctions.getServiceNetwork(GetServiceNetworkArgs.builder()
///             .serviceNetworkIdentifier("snsa-01112223334445556")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:vpclattice:getServiceNetwork
///       arguments:
///         serviceNetworkIdentifier: snsa-01112223334445556
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpclattice_get_service_network_get_service_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceNetworkResult> getServiceNetwork(
  GetServiceNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getServiceNetwork:getServiceNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceNetworkResult.fromMap(result);
}

/// Data source for listing AWS VPC Lattice Service Network Service Associations.
///
/// ## Example Usage
///
/// ### By Service Network Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testSn = aws.vpclattice.getServiceNetworkServiceAssociations({
///     serviceNetworkIdentifier: testSnAwsVpclatticeServiceNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_sn = aws.vpclattice.get_service_network_service_associations(service_network_identifier=test_sn_aws_vpclattice_service_network["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testSn = Aws.VpcLattice.GetServiceNetworkServiceAssociations.Invoke(new()
///     {
///         ServiceNetworkIdentifier = testSnAwsVpclatticeServiceNetwork.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.GetServiceNetworkServiceAssociations(ctx, &vpclattice.GetServiceNetworkServiceAssociationsArgs{
/// 			ServiceNetworkIdentifier: pulumi.StringRef(testSnAwsVpclatticeServiceNetwork.Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_vpclattice_getservicenetworkserviceassociations" "testSn" {
///   service_network_identifier = testSnAwsVpclatticeServiceNetwork.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.VpclatticeFunctions;
/// import com.pulumi.aws.vpclattice.inputs.GetServiceNetworkServiceAssociationsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var testSn = VpclatticeFunctions.getServiceNetworkServiceAssociations(GetServiceNetworkServiceAssociationsArgs.builder()
///             .serviceNetworkIdentifier(testSnAwsVpclatticeServiceNetwork.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   testSn:
///     fn::invoke:
///       function: aws:vpclattice:getServiceNetworkServiceAssociations
///       arguments:
///         serviceNetworkIdentifier: ${testSnAwsVpclatticeServiceNetwork.id}
/// ```
///
///
/// ### By Service Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testSvc = aws.vpclattice.getServiceNetworkServiceAssociations({
///     serviceIdentifier: testSvcAwsVpclatticeService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_svc = aws.vpclattice.get_service_network_service_associations(service_identifier=test_svc_aws_vpclattice_service["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testSvc = Aws.VpcLattice.GetServiceNetworkServiceAssociations.Invoke(new()
///     {
///         ServiceIdentifier = testSvcAwsVpclatticeService.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.GetServiceNetworkServiceAssociations(ctx, &vpclattice.GetServiceNetworkServiceAssociationsArgs{
/// 			ServiceIdentifier: pulumi.StringRef(testSvcAwsVpclatticeService.Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_vpclattice_getservicenetworkserviceassociations" "testSvc" {
///   service_identifier = testSvcAwsVpclatticeService.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.VpclatticeFunctions;
/// import com.pulumi.aws.vpclattice.inputs.GetServiceNetworkServiceAssociationsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var testSvc = VpclatticeFunctions.getServiceNetworkServiceAssociations(GetServiceNetworkServiceAssociationsArgs.builder()
///             .serviceIdentifier(testSvcAwsVpclatticeService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   testSvc:
///     fn::invoke:
///       function: aws:vpclattice:getServiceNetworkServiceAssociations
///       arguments:
///         serviceIdentifier: ${testSvcAwsVpclatticeService.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpclattice_get_service_network_service_associations_get_service_network_service_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceNetworkServiceAssociationsResult> getServiceNetworkServiceAssociations(
  GetServiceNetworkServiceAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getServiceNetworkServiceAssociations:getServiceNetworkServiceAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceNetworkServiceAssociationsResult.fromMap(result);
}
