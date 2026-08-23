import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_release_labels_args.dart';
import 'get_release_labels_result.dart';
import 'get_supported_instance_types_args.dart';
import 'get_supported_instance_types_result.dart';

/// Retrieve information about EMR Release Labels.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.emr.getReleaseLabels({
///     filters: {
///         application: "spark@2.1.0",
///         prefix: "emr-5",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.get_release_labels(filters={
///     "application": "spark@2.1.0",
///     "prefix": "emr-5",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Emr.GetReleaseLabels.Invoke(new()
///     {
///         Filters = new Aws.Emr.Inputs.GetReleaseLabelsFiltersInputArgs
///         {
///             Application = "spark@2.1.0",
///             Prefix = "emr-5",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.GetReleaseLabels(ctx, &emr.GetReleaseLabelsArgs{
/// 			Filters: emr.GetReleaseLabelsFilters{
/// 				Application: pulumi.StringRef("spark@2.1.0"),
/// 				Prefix:      pulumi.StringRef("emr-5"),
/// 			},
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
/// data "aws_emr_getreleaselabels" "example" {
///   filters = {
///     application = "spark@2.1.0"
///     prefix      = "emr-5"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.EmrFunctions;
/// import com.pulumi.aws.emr.inputs.GetReleaseLabelsArgs;
/// import com.pulumi.aws.emr.inputs.GetReleaseLabelsFiltersArgs;
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
///         final var example = EmrFunctions.getReleaseLabels(GetReleaseLabelsArgs.builder()
///             .filters(GetReleaseLabelsFiltersArgs.builder()
///                 .application("spark@2.1.0")
///                 .prefix("emr-5")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:emr:getReleaseLabels
///       arguments:
///         filters:
///           application: spark@2.1.0
///           prefix: emr-5
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emr_get_release_labels_get_release_labels_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReleaseLabelsResult> getReleaseLabels(
  GetReleaseLabelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:emr/getReleaseLabels:getReleaseLabels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseLabelsResult.fromMap(result);
}

/// Data source for managing AWS EMR Supported Instance Types.
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
/// const example = aws.emr.getSupportedInstanceTypes({
///     releaseLabel: "ebs-6.15.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.get_supported_instance_types(release_label="ebs-6.15.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Emr.GetSupportedInstanceTypes.Invoke(new()
///     {
///         ReleaseLabel = "ebs-6.15.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.GetSupportedInstanceTypes(ctx, &emr.GetSupportedInstanceTypesArgs{
/// 			ReleaseLabel: "ebs-6.15.0",
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
/// data "aws_emr_getsupportedinstancetypes" "example" {
///   release_label = "ebs-6.15.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.EmrFunctions;
/// import com.pulumi.aws.emr.inputs.GetSupportedInstanceTypesArgs;
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
///         final var example = EmrFunctions.getSupportedInstanceTypes(GetSupportedInstanceTypesArgs.builder()
///             .releaseLabel("ebs-6.15.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:emr:getSupportedInstanceTypes
///       arguments:
///         releaseLabel: ebs-6.15.0
/// ```
///
///
/// ### With a Lifecycle Pre-Condition
///
/// This data source can be used with a lifecycle precondition to ensure a given instance type is supported by EMR.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const instanceType = "r7g.large";
/// const releaseLabel = "emr-6.15.0";
/// const test = aws.emr.getSupportedInstanceTypes({
///     releaseLabel: releaseLabel,
/// });
/// const testCluster = new aws.emr.Cluster("test", {
///     releaseLabel: releaseLabel,
///     masterInstanceGroup: {
///         instanceType: instanceType,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// instance_type = "r7g.large"
/// release_label = "emr-6.15.0"
/// test = aws.emr.get_supported_instance_types(release_label=release_label)
/// test_cluster = aws.emr.Cluster("test",
///     release_label=release_label,
///     master_instance_group={
///         "instance_type": instance_type,
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
///     var instanceType = "r7g.large";
///
///     var releaseLabel = "emr-6.15.0";
///
///     var test = Aws.Emr.GetSupportedInstanceTypes.Invoke(new()
///     {
///         ReleaseLabel = releaseLabel,
///     });
///
///     var testCluster = new Aws.Emr.Cluster("test", new()
///     {
///         ReleaseLabel = releaseLabel,
///         MasterInstanceGroup = new Aws.Emr.Inputs.ClusterMasterInstanceGroupArgs
///         {
///             InstanceType = instanceType,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instanceType := "r7g.large"
/// 		releaseLabel := "emr-6.15.0"
/// 		_, err := emr.GetSupportedInstanceTypes(ctx, &emr.GetSupportedInstanceTypesArgs{
/// 			ReleaseLabel: releaseLabel,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = emr.NewCluster(ctx, "test", &emr.ClusterArgs{
/// 			ReleaseLabel: pulumi.String(releaseLabel),
/// 			MasterInstanceGroup: &emr.ClusterMasterInstanceGroupArgs{
/// 				InstanceType: pulumi.String(instanceType),
/// 			},
/// 		})
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
/// data "aws_emr_getsupportedinstancetypes" "test" {
///   release_label = local.releaseLabel
/// }
///
/// resource "aws_emr_cluster" "test" {
///   release_label = local.releaseLabel
///   master_instance_group = {
///     instance_type = local.instanceType
///   }
/// }
/// locals {
///   instanceType = "r7g.large"
/// }
/// locals {
///   releaseLabel = "emr-6.15.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.EmrFunctions;
/// import com.pulumi.aws.emr.inputs.GetSupportedInstanceTypesArgs;
/// import com.pulumi.aws.emr.Cluster;
/// import com.pulumi.aws.emr.ClusterArgs;
/// import com.pulumi.aws.emr.inputs.ClusterMasterInstanceGroupArgs;
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
///         final var instanceType = "r7g.large";
///
///         final var releaseLabel = "emr-6.15.0";
///
///         final var test = EmrFunctions.getSupportedInstanceTypes(GetSupportedInstanceTypesArgs.builder()
///             .releaseLabel(releaseLabel)
///             .build());
///
///         var testCluster = new Cluster("testCluster", ClusterArgs.builder()
///             .releaseLabel(releaseLabel)
///             .masterInstanceGroup(ClusterMasterInstanceGroupArgs.builder()
///                 .instanceType(instanceType)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCluster:
///     type: aws:emr:Cluster
///     name: test
///     properties:
///       releaseLabel: ${releaseLabel}
///       masterInstanceGroup:
///         instanceType: ${instanceType}
/// variables:
///   instanceType: r7g.large
///   releaseLabel: emr-6.15.0
///   test:
///     fn::invoke:
///       function: aws:emr:getSupportedInstanceTypes
///       arguments:
///         releaseLabel: ${releaseLabel}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emr_get_supported_instance_types_get_supported_instance_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSupportedInstanceTypesResult> getSupportedInstanceTypes(
  GetSupportedInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:emr/getSupportedInstanceTypes:getSupportedInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSupportedInstanceTypesResult.fromMap(result);
}
