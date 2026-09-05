import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_args.dart';
import 'network_insights_access_scope_exclude_path.dart';
import 'network_insights_access_scope_match_path.dart';
import 'network_insights_access_scope_state.dart';

/// Provides a Network Insights Access Scope resource.
/// Part of the "Network Access Analyzer" service in the AWS VPC console.
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
/// const example = new aws.ec2.NetworkInsightsAccessScope("example", {matchPaths: [{
///     source: {
///         resourceStatement: {
///             resourceTypes: ["AWS::EC2::NetworkInterface"],
///         },
///     },
///     destination: {
///         resourceStatement: {
///             resourceTypes: ["AWS::EC2::InternetGateway"],
///         },
///     },
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NetworkInsightsAccessScope("example", match_paths=[{
///     "source": {
///         "resource_statement": {
///             "resource_types": ["AWS::EC2::NetworkInterface"],
///         },
///     },
///     "destination": {
///         "resource_statement": {
///             "resource_types": ["AWS::EC2::InternetGateway"],
///         },
///     },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.NetworkInsightsAccessScope("example", new()
///     {
///         MatchPaths = new[]
///         {
///             new Aws.Ec2.Inputs.NetworkInsightsAccessScopeMatchPathArgs
///             {
///                 Source = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeMatchPathSourceArgs
///                 {
///                     ResourceStatement = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeMatchPathSourceResourceStatementArgs
///                     {
///                         ResourceTypes = new[]
///                         {
///                             "AWS::EC2::NetworkInterface",
///                         },
///                     },
///                 },
///                 Destination = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeMatchPathDestinationArgs
///                 {
///                     ResourceStatement = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeMatchPathDestinationResourceStatementArgs
///                     {
///                         ResourceTypes = new[]
///                         {
///                             "AWS::EC2::InternetGateway",
///                         },
///                     },
///                 },
///             },
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
/// 		_, err := ec2.NewNetworkInsightsAccessScope(ctx, "example", &ec2.NetworkInsightsAccessScopeArgs{
/// 			MatchPaths: ec2.NetworkInsightsAccessScopeMatchPathArray{
/// 				&ec2.NetworkInsightsAccessScopeMatchPathArgs{
/// 					Source: &ec2.NetworkInsightsAccessScopeMatchPathSourceArgs{
/// 						ResourceStatement: &ec2.NetworkInsightsAccessScopeMatchPathSourceResourceStatementArgs{
/// 							ResourceTypes: pulumi.StringArray{
/// 								pulumi.String("AWS::EC2::NetworkInterface"),
/// 							},
/// 						},
/// 					},
/// 					Destination: &ec2.NetworkInsightsAccessScopeMatchPathDestinationArgs{
/// 						ResourceStatement: &ec2.NetworkInsightsAccessScopeMatchPathDestinationResourceStatementArgs{
/// 							ResourceTypes: pulumi.StringArray{
/// 								pulumi.String("AWS::EC2::InternetGateway"),
/// 							},
/// 						},
/// 					},
/// 				},
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
/// resource "aws_ec2_networkinsightsaccessscope" "example" {
///   match_paths {
///     source = {
///       resource_statement = {
///         resource_types = ["AWS::EC2::NetworkInterface"]
///       }
///     }
///     destination = {
///       resource_statement = {
///         resource_types = ["AWS::EC2::InternetGateway"]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NetworkInsightsAccessScope;
/// import com.pulumi.aws.ec2.NetworkInsightsAccessScopeArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeMatchPathArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeMatchPathSourceArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeMatchPathSourceResourceStatementArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeMatchPathDestinationArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeMatchPathDestinationResourceStatementArgs;
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
///         var example = new NetworkInsightsAccessScope("example", NetworkInsightsAccessScopeArgs.builder()
///             .matchPaths(NetworkInsightsAccessScopeMatchPathArgs.builder()
///                 .source(NetworkInsightsAccessScopeMatchPathSourceArgs.builder()
///                     .resourceStatement(NetworkInsightsAccessScopeMatchPathSourceResourceStatementArgs.builder()
///                         .resourceTypes("AWS::EC2::NetworkInterface")
///                         .build())
///                     .build())
///                 .destination(NetworkInsightsAccessScopeMatchPathDestinationArgs.builder()
///                     .resourceStatement(NetworkInsightsAccessScopeMatchPathDestinationResourceStatementArgs.builder()
///                         .resourceTypes("AWS::EC2::InternetGateway")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:NetworkInsightsAccessScope
///     properties:
///       matchPaths:
///         - source:
///             resourceStatement:
///               resourceTypes:
///                 - AWS::EC2::NetworkInterface
///           destination:
///             resourceStatement:
///               resourceTypes:
///                 - AWS::EC2::InternetGateway
/// ```
///
///
/// ### With Exclude Paths
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.NetworkInsightsAccessScope("example", {
///     excludePaths: [{
///         source: {
///             resourceStatement: {
///                 resourceTypes: ["AWS::EC2::InternetGateway"],
///             },
///         },
///         throughResources: [{
///             resourceStatement: {
///                 resourceTypes: ["AWS::EC2::NatGateway"],
///             },
///         }],
///     }],
///     matchPaths: [{
///         source: {
///             resourceStatement: {
///                 resourceTypes: ["AWS::EC2::NetworkInterface"],
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NetworkInsightsAccessScope("example",
///     exclude_paths=[{
///         "source": {
///             "resource_statement": {
///                 "resource_types": ["AWS::EC2::InternetGateway"],
///             },
///         },
///         "through_resources": [{
///             "resource_statement": {
///                 "resource_types": ["AWS::EC2::NatGateway"],
///             },
///         }],
///     }],
///     match_paths=[{
///         "source": {
///             "resource_statement": {
///                 "resource_types": ["AWS::EC2::NetworkInterface"],
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.NetworkInsightsAccessScope("example", new()
///     {
///         ExcludePaths = new[]
///         {
///             new Aws.Ec2.Inputs.NetworkInsightsAccessScopeExcludePathArgs
///             {
///                 Source = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeExcludePathSourceArgs
///                 {
///                     ResourceStatement = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeExcludePathSourceResourceStatementArgs
///                     {
///                         ResourceTypes = new[]
///                         {
///                             "AWS::EC2::InternetGateway",
///                         },
///                     },
///                 },
///                 ThroughResources = new[]
///                 {
///                     new Aws.Ec2.Inputs.NetworkInsightsAccessScopeExcludePathThroughResourceArgs
///                     {
///                         ResourceStatement = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeExcludePathThroughResourceResourceStatementArgs
///                         {
///                             ResourceTypes = new[]
///                             {
///                                 "AWS::EC2::NatGateway",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         MatchPaths = new[]
///         {
///             new Aws.Ec2.Inputs.NetworkInsightsAccessScopeMatchPathArgs
///             {
///                 Source = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeMatchPathSourceArgs
///                 {
///                     ResourceStatement = new Aws.Ec2.Inputs.NetworkInsightsAccessScopeMatchPathSourceResourceStatementArgs
///                     {
///                         ResourceTypes = new[]
///                         {
///                             "AWS::EC2::NetworkInterface",
///                         },
///                     },
///                 },
///             },
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
/// 		_, err := ec2.NewNetworkInsightsAccessScope(ctx, "example", &ec2.NetworkInsightsAccessScopeArgs{
/// 			ExcludePaths: ec2.NetworkInsightsAccessScopeExcludePathArray{
/// 				&ec2.NetworkInsightsAccessScopeExcludePathArgs{
/// 					Source: &ec2.NetworkInsightsAccessScopeExcludePathSourceArgs{
/// 						ResourceStatement: &ec2.NetworkInsightsAccessScopeExcludePathSourceResourceStatementArgs{
/// 							ResourceTypes: pulumi.StringArray{
/// 								pulumi.String("AWS::EC2::InternetGateway"),
/// 							},
/// 						},
/// 					},
/// 					ThroughResources: ec2.NetworkInsightsAccessScopeExcludePathThroughResourceArray{
/// 						&ec2.NetworkInsightsAccessScopeExcludePathThroughResourceArgs{
/// 							ResourceStatement: &ec2.NetworkInsightsAccessScopeExcludePathThroughResourceResourceStatementArgs{
/// 								ResourceTypes: pulumi.StringArray{
/// 									pulumi.String("AWS::EC2::NatGateway"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			MatchPaths: ec2.NetworkInsightsAccessScopeMatchPathArray{
/// 				&ec2.NetworkInsightsAccessScopeMatchPathArgs{
/// 					Source: &ec2.NetworkInsightsAccessScopeMatchPathSourceArgs{
/// 						ResourceStatement: &ec2.NetworkInsightsAccessScopeMatchPathSourceResourceStatementArgs{
/// 							ResourceTypes: pulumi.StringArray{
/// 								pulumi.String("AWS::EC2::NetworkInterface"),
/// 							},
/// 						},
/// 					},
/// 				},
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
/// resource "aws_ec2_networkinsightsaccessscope" "example" {
///   exclude_paths {
///     source = {
///       resource_statement = {
///         resource_types = ["AWS::EC2::InternetGateway"]
///       }
///     }
///     through_resources {
///       resource_statement = {
///         resource_types = ["AWS::EC2::NatGateway"]
///       }
///     }
///   }
///   match_paths {
///     source = {
///       resource_statement = {
///         resource_types = ["AWS::EC2::NetworkInterface"]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NetworkInsightsAccessScope;
/// import com.pulumi.aws.ec2.NetworkInsightsAccessScopeArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeExcludePathArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeExcludePathSourceArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeExcludePathSourceResourceStatementArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeExcludePathThroughResourceArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeExcludePathThroughResourceResourceStatementArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeMatchPathArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeMatchPathSourceArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInsightsAccessScopeMatchPathSourceResourceStatementArgs;
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
///         var example = new NetworkInsightsAccessScope("example", NetworkInsightsAccessScopeArgs.builder()
///             .excludePaths(NetworkInsightsAccessScopeExcludePathArgs.builder()
///                 .source(NetworkInsightsAccessScopeExcludePathSourceArgs.builder()
///                     .resourceStatement(NetworkInsightsAccessScopeExcludePathSourceResourceStatementArgs.builder()
///                         .resourceTypes("AWS::EC2::InternetGateway")
///                         .build())
///                     .build())
///                 .throughResources(NetworkInsightsAccessScopeExcludePathThroughResourceArgs.builder()
///                     .resourceStatement(NetworkInsightsAccessScopeExcludePathThroughResourceResourceStatementArgs.builder()
///                         .resourceTypes("AWS::EC2::NatGateway")
///                         .build())
///                     .build())
///                 .build())
///             .matchPaths(NetworkInsightsAccessScopeMatchPathArgs.builder()
///                 .source(NetworkInsightsAccessScopeMatchPathSourceArgs.builder()
///                     .resourceStatement(NetworkInsightsAccessScopeMatchPathSourceResourceStatementArgs.builder()
///                         .resourceTypes("AWS::EC2::NetworkInterface")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:NetworkInsightsAccessScope
///     properties:
///       excludePaths:
///         - source:
///             resourceStatement:
///               resourceTypes:
///                 - AWS::EC2::InternetGateway
///           throughResources:
///             - resourceStatement:
///                 resourceTypes:
///                   - AWS::EC2::NatGateway
///       matchPaths:
///         - source:
///             resourceStatement:
///               resourceTypes:
///                 - AWS::EC2::NetworkInterface
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the Network Insights Access Scope.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Network Insights Access Scopes using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInsightsAccessScope:NetworkInsightsAccessScope example nis-0a1b2c3d4e5f6g7h8
/// ```
class NetworkInsightsAccessScope extends pulumi.CustomResource {
  /// ARN of the Network Insights Access Scope.
  late final pulumi.Output<String> arn;
  /// Set of access scope path statements to exclude.
  /// See `excludePaths` below for details.
  late final pulumi.Output<List<NetworkInsightsAccessScopeExcludePath>?> excludePaths;
  /// Set of access scope path statements to match.
  /// At least one must be specified.
  /// See `matchPaths` below for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<NetworkInsightsAccessScopeMatchPath>?> matchPaths;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
  /// Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource.
  /// If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [NetworkInsightsAccessScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInsightsAccessScope]. {@macro pulumi_ec2_network_insights_access_scope_network_insights_access_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInsightsAccessScope(
    String name, {
    NetworkInsightsAccessScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsAccessScope:NetworkInsightsAccessScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    excludePaths = registerOutput<List<NetworkInsightsAccessScopeExcludePath>?>('excludePaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInsightsAccessScopeExcludePath>(guardedValue, (value) => NetworkInsightsAccessScopeExcludePath.fromMap((value as Map).cast<String, dynamic>())); });
    matchPaths = registerOutput<List<NetworkInsightsAccessScopeMatchPath>?>('matchPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInsightsAccessScopeMatchPath>(guardedValue, (value) => NetworkInsightsAccessScopeMatchPath.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [NetworkInsightsAccessScope] resource's state with the given [name] and [id].
  static NetworkInsightsAccessScope get(
    String name,
    pulumi.Input<String> id, {
    NetworkInsightsAccessScopeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkInsightsAccessScope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkInsightsAccessScope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsAccessScope:NetworkInsightsAccessScope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    excludePaths = registerOutput<List<NetworkInsightsAccessScopeExcludePath>?>('excludePaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInsightsAccessScopeExcludePath>(guardedValue, (value) => NetworkInsightsAccessScopeExcludePath.fromMap((value as Map).cast<String, dynamic>())); });
    matchPaths = registerOutput<List<NetworkInsightsAccessScopeMatchPath>?>('matchPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInsightsAccessScopeMatchPath>(guardedValue, (value) => NetworkInsightsAccessScopeMatchPath.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [NetworkInsightsAccessScope] resource.
  NetworkInsightsAccessScope.reference(String urn)
    : super(
        'aws:ec2/networkInsightsAccessScope:NetworkInsightsAccessScope',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    excludePaths = registerOutput<List<NetworkInsightsAccessScopeExcludePath>?>('excludePaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInsightsAccessScopeExcludePath>(guardedValue, (value) => NetworkInsightsAccessScopeExcludePath.fromMap((value as Map).cast<String, dynamic>())); });
    matchPaths = registerOutput<List<NetworkInsightsAccessScopeMatchPath>?>('matchPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInsightsAccessScopeMatchPath>(guardedValue, (value) => NetworkInsightsAccessScopeMatchPath.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
