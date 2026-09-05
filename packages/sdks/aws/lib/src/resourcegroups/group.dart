import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_configuration.dart';
import 'group_resource_query.dart';
import 'group_state.dart';

/// Provides a Resource Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.resourcegroups.Group("test", {
///     resourceQuery: {
///         query: `{
///   \\"ResourceTypeFilters\\": [
///     \\"AWS::EC2::Instance\\"
///   ],
///   \\"TagFilters\\": [
///     {
///       \\"Key\\": \\"Stage\\",
///       \\"Values\\": [\\"Test\\"]
///     }
///   ]
/// }
/// `,
///     },
///     name: "test-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.resourcegroups.Group("test",
///     resource_query={
///         "query": """{
///   \"ResourceTypeFilters\": [
///     \"AWS::EC2::Instance\"
///   ],
///   \"TagFilters\": [
///     {
///       \"Key\": \"Stage\",
///       \"Values\": [\"Test\"]
///     }
///   ]
/// }
/// """,
///     },
///     name="test-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.ResourceGroups.Group("test", new()
///     {
///         ResourceQuery = new Aws.ResourceGroups.Inputs.GroupResourceQueryArgs
///         {
///             Query = @"{
///   \""ResourceTypeFilters\"": [
///     \""AWS::EC2::Instance\""
///   ],
///   \""TagFilters\"": [
///     {
///       \""Key\"": \""Stage\"",
///       \""Values\"": [\""Test\""]
///     }
///   ]
/// }
/// ",
///         },
///         Name = "test-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroups"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourcegroups.NewGroup(ctx, "test", &resourcegroups.GroupArgs{
/// 			ResourceQuery: &resourcegroups.GroupResourceQueryArgs{
/// 				Query: pulumi.String(`{
///   \"ResourceTypeFilters\": [
///     \"AWS::EC2::Instance\"
///   ],
///   \"TagFilters\": [
///     {
///       \"Key\": \"Stage\",
///       \"Values\": [\"Test\"]
///     }
///   ]
/// }
/// `),
/// 			},
/// 			Name: pulumi.String("test-group"),
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
/// resource "aws_resourcegroups_group" "test" {
///   resource_query = {
///     query = "{\n  \\\"ResourceTypeFilters\\\": [\n    \\\"AWS::EC2::Instance\\\"\n  ],\n  \\\"TagFilters\\\": [\n    {\n      \\\"Key\\\": \\\"Stage\\\",\n      \\\"Values\\\": [\\\"Test\\\"]\n    }\n  ]\n}\n"
///   }
///   name = "test-group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resourcegroups.Group;
/// import com.pulumi.aws.resourcegroups.GroupArgs;
/// import com.pulumi.aws.resourcegroups.inputs.GroupResourceQueryArgs;
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
///         var test = new Group("test", GroupArgs.builder()
///             .resourceQuery(GroupResourceQueryArgs.builder()
///                 .query("""
/// {
///   \"ResourceTypeFilters\": [
///     \"AWS::EC2::Instance\"
///   ],
///   \"TagFilters\": [
///     {
///       \"Key\": \"Stage\",
///       \"Values\": [\"Test\"]
///     }
///   ]
/// }
///                 """)
///                 .build())
///             .name("test-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:resourcegroups:Group
///     properties:
///       resourceQuery:
///         query: |
///           {
///             \"ResourceTypeFilters\": [
///               \"AWS::EC2::Instance\"
///             ],
///             \"TagFilters\": [
///               {
///                 \"Key\": \"Stage\",
///                 \"Values\": [\"Test\"]
///               }
///             ]
///           }
///       name: test-group
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import resource groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:resourcegroups/group:Group foo resource-group-name
/// ```
class Group extends pulumi.CustomResource {
  /// The ARN assigned by AWS for this resource group.
  late final pulumi.Output<String> arn;
  /// A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. See below for details.
  late final pulumi.Output<List<GroupConfiguration>?> configurations;
  /// A description of the resource group.
  late final pulumi.Output<String?> description;
  /// The resource group's name. A resource group name can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with `AWS` or `aws`.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A `resourceQuery` block. Resource queries are documented below.
  late final pulumi.Output<GroupResourceQuery?> resourceQuery;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_resourcegroups_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resourcegroups/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configurations = registerOutput<List<GroupConfiguration>?>('configurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupConfiguration>(guardedValue, (value) => GroupConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceQuery = registerOutput<GroupResourceQuery?>('resourceQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupResourceQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resourcegroups/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configurations = registerOutput<List<GroupConfiguration>?>('configurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupConfiguration>(guardedValue, (value) => GroupConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceQuery = registerOutput<GroupResourceQuery?>('resourceQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupResourceQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Group] resource.
  Group.reference(String urn)
    : super(
        'aws:resourcegroups/group:Group',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configurations = registerOutput<List<GroupConfiguration>?>('configurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupConfiguration>(guardedValue, (value) => GroupConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceQuery = registerOutput<GroupResourceQuery?>('resourceQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupResourceQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
