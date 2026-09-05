import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_registration_args.dart';
import 'namespace_registration_state.dart';

/// Manages an Amazon Redshift namespace registration to the AWS Glue Data Catalog. Use this resource to enable access to a Redshift data warehouse using the Apache Iceberg REST API.
///
/// &gt; **NOTE:** This resource has limited drift detection capabilities. AWS does not provide a reliable API to verify registration status after creation. The resource verifies that the underlying cluster or namespace exists and that an internal data share was created, but cannot detect if the registration was removed outside of Terraform.
///
/// ## Example Usage
///
/// ### Serverless Namespace
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.redshiftserverless.Namespace("example", {
///     namespaceName: "example",
///     dbName: "example",
/// });
/// const exampleWorkgroup = new aws.redshiftserverless.Workgroup("example", {
///     namespaceName: example.namespaceName,
///     workgroupName: "example",
/// });
/// const exampleNamespaceRegistration = new aws.redshift.NamespaceRegistration("example", {
///     consumerIdentifier: std.format({
///         input: "DataCatalog/%s",
///         args: [current.then(current => current.accountId)],
///     }).then(invoke => invoke.result),
///     namespaceType: "serverless",
///     serverlessNamespaceIdentifier: example.namespaceName,
///     serverlessWorkgroupIdentifier: exampleWorkgroup.workgroupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// current = aws.get_caller_identity()
/// example = aws.redshiftserverless.Namespace("example",
///     namespace_name="example",
///     db_name="example")
/// example_workgroup = aws.redshiftserverless.Workgroup("example",
///     namespace_name=example.namespace_name,
///     workgroup_name="example")
/// example_namespace_registration = aws.redshift.NamespaceRegistration("example",
///     consumer_identifier=std.format(input="DataCatalog/%s",
///         args=[current.account_id]).result,
///     namespace_type="serverless",
///     serverless_namespace_identifier=example.namespace_name,
///     serverless_workgroup_identifier=example_workgroup.workgroup_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.RedshiftServerless.Namespace("example", new()
///     {
///         NamespaceName = "example",
///         DbName = "example",
///     });
///
///     var exampleWorkgroup = new Aws.RedshiftServerless.Workgroup("example", new()
///     {
///         NamespaceName = example.NamespaceName,
///         WorkgroupName = "example",
///     });
///
///     var exampleNamespaceRegistration = new Aws.RedShift.NamespaceRegistration("example", new()
///     {
///         ConsumerIdentifier = Std.Format.Invoke(new()
///         {
///             Input = "DataCatalog/%s",
///             Args = new[]
///             {
///                 current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///             },
///         }).Apply(invoke => invoke.Result),
///         NamespaceType = "serverless",
///         ServerlessNamespaceIdentifier = example.NamespaceName,
///         ServerlessWorkgroupIdentifier = exampleWorkgroup.WorkgroupName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := redshiftserverless.NewNamespace(ctx, "example", &redshiftserverless.NamespaceArgs{
/// 			NamespaceName: pulumi.String("example"),
/// 			DbName:        pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkgroup, err := redshiftserverless.NewWorkgroup(ctx, "example", &redshiftserverless.WorkgroupArgs{
/// 			NamespaceName: example.NamespaceName,
/// 			WorkgroupName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "DataCatalog/%s",
/// 			Args: []*string{
/// 				current.AccountId,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshift.NewNamespaceRegistration(ctx, "example", &redshift.NamespaceRegistrationArgs{
/// 			ConsumerIdentifier:            pulumi.String(invokeFormat.Result),
/// 			NamespaceType:                 pulumi.String("serverless"),
/// 			ServerlessNamespaceIdentifier: example.NamespaceName,
/// 			ServerlessWorkgroupIdentifier: exampleWorkgroup.WorkgroupName,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "std_format" "invoke_0" {
///   input = "DataCatalog/%s"
///   args  = [data.aws_getcalleridentity.current.account_id]
/// }
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_redshiftserverless_namespace" "example" {
///   namespace_name = "example"
///   db_name        = "example"
/// }
/// resource "aws_redshiftserverless_workgroup" "example" {
///   namespace_name = aws_redshiftserverless_namespace.example.namespace_name
///   workgroup_name = "example"
/// }
/// resource "aws_redshift_namespaceregistration" "example" {
///   consumer_identifier             = data.std_format.invoke_0.result
///   namespace_type                  = "serverless"
///   serverless_namespace_identifier = aws_redshiftserverless_namespace.example.namespace_name
///   serverless_workgroup_identifier = aws_redshiftserverless_workgroup.example.workgroup_name
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
/// import com.pulumi.aws.redshiftserverless.Namespace;
/// import com.pulumi.aws.redshiftserverless.NamespaceArgs;
/// import com.pulumi.aws.redshiftserverless.Workgroup;
/// import com.pulumi.aws.redshiftserverless.WorkgroupArgs;
/// import com.pulumi.aws.redshift.NamespaceRegistration;
/// import com.pulumi.aws.redshift.NamespaceRegistrationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespaceName("example")
///             .dbName("example")
///             .build());
///
///         var exampleWorkgroup = new Workgroup("exampleWorkgroup", WorkgroupArgs.builder()
///             .namespaceName(example.namespaceName())
///             .workgroupName("example")
///             .build());
///
///         var exampleNamespaceRegistration = new NamespaceRegistration("exampleNamespaceRegistration", NamespaceRegistrationArgs.builder()
///             .consumerIdentifier(StdFunctions.format(FormatArgs.builder()
///                 .input("DataCatalog/%s")
///                 .args(current.accountId())
///                 .build()).result())
///             .namespaceType("serverless")
///             .serverlessNamespaceIdentifier(example.namespaceName())
///             .serverlessWorkgroupIdentifier(exampleWorkgroup.workgroupName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftserverless:Namespace
///     properties:
///       namespaceName: example
///       dbName: example
///   exampleWorkgroup:
///     type: aws:redshiftserverless:Workgroup
///     name: example
///     properties:
///       namespaceName: ${example.namespaceName}
///       workgroupName: example
///   exampleNamespaceRegistration:
///     type: aws:redshift:NamespaceRegistration
///     name: example
///     properties:
///       consumerIdentifier:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: DataCatalog/%s
///             args:
///               - ${current.accountId}
///           return: result
///       namespaceType: serverless
///       serverlessNamespaceIdentifier: ${example.namespaceName}
///       serverlessWorkgroupIdentifier: ${exampleWorkgroup.workgroupName}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ### Provisioned Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.redshift.Cluster("example", {
///     clusterIdentifier: "example",
///     databaseName: "example",
///     masterUsername: "exampleuser",
///     masterPassword: "ExamplePassword123!",
///     nodeType: "dc2.large",
///     clusterType: "single-node",
/// });
/// const exampleNamespaceRegistration = new aws.redshift.NamespaceRegistration("example", {
///     consumerIdentifier: std.format({
///         input: "DataCatalog/%s",
///         args: [current.then(current => current.accountId)],
///     }).then(invoke => invoke.result),
///     namespaceType: "provisioned",
///     provisionedClusterIdentifier: example.clusterIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// current = aws.get_caller_identity()
/// example = aws.redshift.Cluster("example",
///     cluster_identifier="example",
///     database_name="example",
///     master_username="exampleuser",
///     master_password="ExamplePassword123!",
///     node_type="dc2.large",
///     cluster_type="single-node")
/// example_namespace_registration = aws.redshift.NamespaceRegistration("example",
///     consumer_identifier=std.format(input="DataCatalog/%s",
///         args=[current.account_id]).result,
///     namespace_type="provisioned",
///     provisioned_cluster_identifier=example.cluster_identifier)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.RedShift.Cluster("example", new()
///     {
///         ClusterIdentifier = "example",
///         DatabaseName = "example",
///         MasterUsername = "exampleuser",
///         MasterPassword = "ExamplePassword123!",
///         NodeType = "dc2.large",
///         ClusterType = "single-node",
///     });
///
///     var exampleNamespaceRegistration = new Aws.RedShift.NamespaceRegistration("example", new()
///     {
///         ConsumerIdentifier = Std.Format.Invoke(new()
///         {
///             Input = "DataCatalog/%s",
///             Args = new[]
///             {
///                 current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///             },
///         }).Apply(invoke => invoke.Result),
///         NamespaceType = "provisioned",
///         ProvisionedClusterIdentifier = example.ClusterIdentifier,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := redshift.NewCluster(ctx, "example", &redshift.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("example"),
/// 			DatabaseName:      pulumi.String("example"),
/// 			MasterUsername:    pulumi.String("exampleuser"),
/// 			MasterPassword:    pulumi.String("ExamplePassword123!"),
/// 			NodeType:          pulumi.String("dc2.large"),
/// 			ClusterType:       pulumi.String("single-node"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "DataCatalog/%s",
/// 			Args: []*string{
/// 				current.AccountId,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshift.NewNamespaceRegistration(ctx, "example", &redshift.NamespaceRegistrationArgs{
/// 			ConsumerIdentifier:           pulumi.String(invokeFormat.Result),
/// 			NamespaceType:                pulumi.String("provisioned"),
/// 			ProvisionedClusterIdentifier: example.ClusterIdentifier,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "std_format" "invoke_0" {
///   input = "DataCatalog/%s"
///   args  = [data.aws_getcalleridentity.current.account_id]
/// }
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_redshift_cluster" "example" {
///   cluster_identifier = "example"
///   database_name      = "example"
///   master_username    = "exampleuser"
///   master_password    = "ExamplePassword123!"
///   node_type          = "dc2.large"
///   cluster_type       = "single-node"
/// }
/// resource "aws_redshift_namespaceregistration" "example" {
///   consumer_identifier            = data.std_format.invoke_0.result
///   namespace_type                 = "provisioned"
///   provisioned_cluster_identifier = aws_redshift_cluster.example.cluster_identifier
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
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import com.pulumi.aws.redshift.NamespaceRegistration;
/// import com.pulumi.aws.redshift.NamespaceRegistrationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterIdentifier("example")
///             .databaseName("example")
///             .masterUsername("exampleuser")
///             .masterPassword("ExamplePassword123!")
///             .nodeType("dc2.large")
///             .clusterType("single-node")
///             .build());
///
///         var exampleNamespaceRegistration = new NamespaceRegistration("exampleNamespaceRegistration", NamespaceRegistrationArgs.builder()
///             .consumerIdentifier(StdFunctions.format(FormatArgs.builder()
///                 .input("DataCatalog/%s")
///                 .args(current.accountId())
///                 .build()).result())
///             .namespaceType("provisioned")
///             .provisionedClusterIdentifier(example.clusterIdentifier())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:Cluster
///     properties:
///       clusterIdentifier: example
///       databaseName: example
///       masterUsername: exampleuser
///       masterPassword: ExamplePassword123!
///       nodeType: dc2.large
///       clusterType: single-node
///   exampleNamespaceRegistration:
///     type: aws:redshift:NamespaceRegistration
///     name: example
///     properties:
///       consumerIdentifier:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: DataCatalog/%s
///             args:
///               - ${current.accountId}
///           return: result
///       namespaceType: provisioned
///       provisionedClusterIdentifier: ${example.clusterIdentifier}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// For provisioned clusters:
///
///
/// ### Identity Schema
///
/// #### Required
///
/// - `consumerIdentifier` (String) Consumer identifier for the registration.
/// - `namespaceType` (String) Type of namespace being registered. Valid values: `serverless`, `provisioned`.
///
/// #### Optional
///
/// - `accountId` (String) AWS Account where this resource is managed.
/// - `provisionedClusterIdentifier` (String) Identifier of the provisioned cluster. Required when `namespaceType` is `provisioned`.
/// - `region` (String) Region where this resource is managed.
/// - `serverlessNamespaceIdentifier` (String) Identifier of the serverless namespace. Required when `namespaceType` is `serverless`.
/// - `serverlessWorkgroupIdentifier` (String) Identifier of the serverless workgroup. Required when `namespaceType` is `serverless`.
///
///
/// For provisioned clusters:
///
///
/// Using `pulumi import`, import Redshift Namespace Registration using the composite ID. For example:
///
/// For serverless namespaces:
///
/// ```sh
/// $ pulumi import aws:redshift/namespaceRegistration:NamespaceRegistration example DataCatalog/123456789012,example-namespace,example-workgroup
/// ```
///
/// For provisioned clusters:
///
/// ```sh
/// $ pulumi import aws:redshift/namespaceRegistration:NamespaceRegistration example DataCatalog/123456789012,example-cluster
/// ```
class NamespaceRegistration extends pulumi.CustomResource {
  /// Consumer identifier for the registration. Typically in the format `DataCatalog/&lt;account-id&gt;`.
  late final pulumi.Output<String> consumerIdentifier;
  /// Type of namespace being registered. Valid values: `serverless`, `provisioned`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> namespaceType;
  /// Identifier of the provisioned cluster. Required when `namespaceType` is `provisioned`.
  late final pulumi.Output<String?> provisionedClusterIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of the serverless namespace. Required when `namespaceType` is `serverless`. Can be either the namespace name or namespace ID (UUID).
  late final pulumi.Output<String?> serverlessNamespaceIdentifier;
  /// Identifier of the serverless workgroup. Required when `namespaceType` is `serverless`.
  late final pulumi.Output<String?> serverlessWorkgroupIdentifier;

  /// Creates a new [NamespaceRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceRegistration]. {@macro pulumi_redshift_namespace_registration_namespace_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceRegistration(
    String name, {
    NamespaceRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/namespaceRegistration:NamespaceRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    consumerIdentifier = registerOutput<String>('consumerIdentifier');
    namespaceType = registerOutput<String>('namespaceType');
    provisionedClusterIdentifier = registerOutput<String?>('provisionedClusterIdentifier');
    region = registerOutput<String>('region');
    serverlessNamespaceIdentifier = registerOutput<String?>('serverlessNamespaceIdentifier');
    serverlessWorkgroupIdentifier = registerOutput<String?>('serverlessWorkgroupIdentifier');
  }

  /// Gets an existing [NamespaceRegistration] resource's state with the given [name] and [id].
  static NamespaceRegistration get(
    String name,
    pulumi.Input<String> id, {
    NamespaceRegistrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NamespaceRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NamespaceRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/namespaceRegistration:NamespaceRegistration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    consumerIdentifier = registerOutput<String>('consumerIdentifier');
    namespaceType = registerOutput<String>('namespaceType');
    provisionedClusterIdentifier = registerOutput<String?>('provisionedClusterIdentifier');
    region = registerOutput<String>('region');
    serverlessNamespaceIdentifier = registerOutput<String?>('serverlessNamespaceIdentifier');
    serverlessWorkgroupIdentifier = registerOutput<String?>('serverlessWorkgroupIdentifier');
  }

  /// Creates a typed reference to an existing [NamespaceRegistration] resource.
  NamespaceRegistration.reference(String urn)
    : super(
        'aws:redshift/namespaceRegistration:NamespaceRegistration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    consumerIdentifier = registerOutput<String>('consumerIdentifier');
    namespaceType = registerOutput<String>('namespaceType');
    provisionedClusterIdentifier = registerOutput<String?>('provisionedClusterIdentifier');
    region = registerOutput<String>('region');
    serverlessNamespaceIdentifier = registerOutput<String?>('serverlessNamespaceIdentifier');
    serverlessWorkgroupIdentifier = registerOutput<String?>('serverlessWorkgroupIdentifier');
  }
}
