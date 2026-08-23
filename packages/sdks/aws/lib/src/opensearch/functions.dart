import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_args.dart';
import 'get_domain_result.dart';
import 'get_serverless_access_policy_args.dart';
import 'get_serverless_access_policy_result.dart';
import 'get_serverless_collection_args.dart';
import 'get_serverless_collection_group_args.dart';
import 'get_serverless_collection_group_result.dart';
import 'get_serverless_collection_groups_args.dart';
import 'get_serverless_collection_groups_result.dart';
import 'get_serverless_collection_result.dart';
import 'get_serverless_lifecycle_policy_args.dart';
import 'get_serverless_lifecycle_policy_result.dart';
import 'get_serverless_security_config_args.dart';
import 'get_serverless_security_config_result.dart';
import 'get_serverless_security_policy_args.dart';
import 'get_serverless_security_policy_result.dart';
import 'get_serverless_vpc_endpoint_args.dart';
import 'get_serverless_vpc_endpoint_result.dart';

/// Use this data source to get information about an OpenSearch Domain
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myDomain = aws.opensearch.getDomain({
///     domainName: "my-domain-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_domain = aws.opensearch.get_domain(domain_name="my-domain-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDomain = Aws.OpenSearch.GetDomain.Invoke(new()
///     {
///         DomainName = "my-domain-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.LookupDomain(ctx, &opensearch.LookupDomainArgs{
/// 			DomainName: "my-domain-name",
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
/// data "aws_opensearch_getdomain" "myDomain" {
///   domain_name = "my-domain-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetDomainArgs;
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
///         final var myDomain = OpensearchFunctions.getDomain(GetDomainArgs.builder()
///             .domainName("my-domain-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myDomain:
///     fn::invoke:
///       function: aws:opensearch:getDomain
///       arguments:
///         domainName: my-domain-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_domain_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getDomain:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Data source for managing an AWS OpenSearch Serverless Access Policy.
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
/// const example = aws.opensearch.getServerlessAccessPolicy({
///     name: exampleAwsOpensearchserverlessAccessPolicy.name,
///     type: exampleAwsOpensearchserverlessAccessPolicy.type,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_access_policy(name=example_aws_opensearchserverless_access_policy["name"],
///     type=example_aws_opensearchserverless_access_policy["type"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.OpenSearch.GetServerlessAccessPolicy.Invoke(new()
///     {
///         Name = exampleAwsOpensearchserverlessAccessPolicy.Name,
///         Type = exampleAwsOpensearchserverlessAccessPolicy.Type,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.LookupServerlessAccessPolicy(ctx, &opensearch.LookupServerlessAccessPolicyArgs{
/// 			Name: exampleAwsOpensearchserverlessAccessPolicy.Name,
/// 			Type: exampleAwsOpensearchserverlessAccessPolicy.Type,
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
/// data "aws_opensearch_getserverlessaccesspolicy" "example" {
///   name = exampleAwsOpensearchserverlessAccessPolicy.name
///   type = exampleAwsOpensearchserverlessAccessPolicy.type
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessAccessPolicyArgs;
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
///         final var example = OpensearchFunctions.getServerlessAccessPolicy(GetServerlessAccessPolicyArgs.builder()
///             .name(exampleAwsOpensearchserverlessAccessPolicy.name())
///             .type(exampleAwsOpensearchserverlessAccessPolicy.type())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:opensearch:getServerlessAccessPolicy
///       arguments:
///         name: ${exampleAwsOpensearchserverlessAccessPolicy.name}
///         type: ${exampleAwsOpensearchserverlessAccessPolicy.type}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_serverless_access_policy_get_serverless_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessAccessPolicyResult> getServerlessAccessPolicy(
  GetServerlessAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessAccessPolicy:getServerlessAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessAccessPolicyResult.fromMap(result);
}

/// Data source for managing an AWS OpenSearch Serverless Collection.
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
/// const example = aws.opensearch.getServerlessCollection({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_collection(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.OpenSearch.GetServerlessCollection.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.LookupServerlessCollection(ctx, &opensearch.LookupServerlessCollectionArgs{
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
/// data "aws_opensearch_getserverlesscollection" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessCollectionArgs;
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
///         final var example = OpensearchFunctions.getServerlessCollection(GetServerlessCollectionArgs.builder()
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
///       function: aws:opensearch:getServerlessCollection
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_serverless_collection_get_serverless_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessCollectionResult> getServerlessCollection(
  GetServerlessCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessCollection:getServerlessCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessCollectionResult.fromMap(result);
}

/// Data source for managing an AWS OpenSearch Serverless Collection Group.
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
/// const example = aws.opensearch.getServerlessCollectionGroup({
///     name: "example-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_collection_group(name="example-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.OpenSearch.GetServerlessCollectionGroup.Invoke(new()
///     {
///         Name = "example-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.LookupServerlessCollectionGroup(ctx, &opensearch.LookupServerlessCollectionGroupArgs{
/// 			Name: pulumi.StringRef("example-group"),
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
/// data "aws_opensearch_getserverlesscollectiongroup" "example" {
///   name = "example-group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessCollectionGroupArgs;
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
///         final var example = OpensearchFunctions.getServerlessCollectionGroup(GetServerlessCollectionGroupArgs.builder()
///             .name("example-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:opensearch:getServerlessCollectionGroup
///       arguments:
///         name: example-group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_serverless_collection_group_get_serverless_collection_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessCollectionGroupResult> getServerlessCollectionGroup(
  GetServerlessCollectionGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessCollectionGroup:getServerlessCollectionGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessCollectionGroupResult.fromMap(result);
}

/// Data source for listing AWS OpenSearch Serverless Collection Groups.
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
/// const example = aws.opensearch.getServerlessCollectionGroups({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_collection_groups()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.OpenSearch.GetServerlessCollectionGroups.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.GetServerlessCollectionGroups(ctx, &opensearch.GetServerlessCollectionGroupsArgs{}, nil)
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
/// data "aws_opensearch_getserverlesscollectiongroups" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessCollectionGroupsArgs;
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
///         final var example = OpensearchFunctions.getServerlessCollectionGroups(GetServerlessCollectionGroupsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:opensearch:getServerlessCollectionGroups
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_serverless_collection_groups_get_serverless_collection_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessCollectionGroupsResult> getServerlessCollectionGroups(
  GetServerlessCollectionGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessCollectionGroups:getServerlessCollectionGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessCollectionGroupsResult.fromMap(result);
}

/// Data source for managing an AWS OpenSearch Serverless Lifecycle Policy.
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
/// const example = aws.opensearch.getServerlessLifecyclePolicy({
///     name: "example-lifecycle-policy",
///     type: "retention",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_lifecycle_policy(name="example-lifecycle-policy",
///     type="retention")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.OpenSearch.GetServerlessLifecyclePolicy.Invoke(new()
///     {
///         Name = "example-lifecycle-policy",
///         Type = "retention",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.LookupServerlessLifecyclePolicy(ctx, &opensearch.LookupServerlessLifecyclePolicyArgs{
/// 			Name: "example-lifecycle-policy",
/// 			Type: "retention",
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
/// data "aws_opensearch_getserverlesslifecyclepolicy" "example" {
///   name = "example-lifecycle-policy"
///   type = "retention"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessLifecyclePolicyArgs;
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
///         final var example = OpensearchFunctions.getServerlessLifecyclePolicy(GetServerlessLifecyclePolicyArgs.builder()
///             .name("example-lifecycle-policy")
///             .type("retention")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:opensearch:getServerlessLifecyclePolicy
///       arguments:
///         name: example-lifecycle-policy
///         type: retention
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_serverless_lifecycle_policy_get_serverless_lifecycle_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessLifecyclePolicyResult> getServerlessLifecyclePolicy(
  GetServerlessLifecyclePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessLifecyclePolicy:getServerlessLifecyclePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessLifecyclePolicyResult.fromMap(result);
}

/// Data source for managing an AWS OpenSearch Serverless Security Config.
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
/// const example = aws.opensearch.getServerlessSecurityConfig({
///     id: "saml/12345678912/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_security_config(id="saml/12345678912/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.OpenSearch.GetServerlessSecurityConfig.Invoke(new()
///     {
///         Id = "saml/12345678912/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.LookupServerlessSecurityConfig(ctx, &opensearch.LookupServerlessSecurityConfigArgs{
/// 			Id: "saml/12345678912/example",
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
/// data "aws_opensearch_getserverlesssecurityconfig" "example" {
///   id = "saml/12345678912/example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessSecurityConfigArgs;
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
///         final var example = OpensearchFunctions.getServerlessSecurityConfig(GetServerlessSecurityConfigArgs.builder()
///             .id("saml/12345678912/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:opensearch:getServerlessSecurityConfig
///       arguments:
///         id: saml/12345678912/example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_serverless_security_config_get_serverless_security_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessSecurityConfigResult> getServerlessSecurityConfig(
  GetServerlessSecurityConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessSecurityConfig:getServerlessSecurityConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessSecurityConfigResult.fromMap(result);
}

/// Use this data source to get information about an AWS OpenSearch Serverless Security Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.opensearch.getServerlessSecurityPolicy({
///     name: "example-security-policy",
///     type: "encryption",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_security_policy(name="example-security-policy",
///     type="encryption")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.OpenSearch.GetServerlessSecurityPolicy.Invoke(new()
///     {
///         Name = "example-security-policy",
///         Type = "encryption",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.LookupServerlessSecurityPolicy(ctx, &opensearch.LookupServerlessSecurityPolicyArgs{
/// 			Name: "example-security-policy",
/// 			Type: "encryption",
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
/// data "aws_opensearch_getserverlesssecuritypolicy" "example" {
///   name = "example-security-policy"
///   type = "encryption"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessSecurityPolicyArgs;
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
///         final var example = OpensearchFunctions.getServerlessSecurityPolicy(GetServerlessSecurityPolicyArgs.builder()
///             .name("example-security-policy")
///             .type("encryption")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:opensearch:getServerlessSecurityPolicy
///       arguments:
///         name: example-security-policy
///         type: encryption
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_serverless_security_policy_get_serverless_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessSecurityPolicyResult> getServerlessSecurityPolicy(
  GetServerlessSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessSecurityPolicy:getServerlessSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessSecurityPolicyResult.fromMap(result);
}

/// Data source for managing an AWS OpenSearch Serverless VPC Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.opensearch.getServerlessVpcEndpoint({
///     vpcEndpointId: "vpce-829a4487959e2a839",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_vpc_endpoint(vpc_endpoint_id="vpce-829a4487959e2a839")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.OpenSearch.GetServerlessVpcEndpoint.Invoke(new()
///     {
///         VpcEndpointId = "vpce-829a4487959e2a839",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.LookupServerlessVpcEndpoint(ctx, &opensearch.LookupServerlessVpcEndpointArgs{
/// 			VpcEndpointId: "vpce-829a4487959e2a839",
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
/// data "aws_opensearch_getserverlessvpcendpoint" "example" {
///   vpc_endpoint_id = "vpce-829a4487959e2a839"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessVpcEndpointArgs;
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
///         final var example = OpensearchFunctions.getServerlessVpcEndpoint(GetServerlessVpcEndpointArgs.builder()
///             .vpcEndpointId("vpce-829a4487959e2a839")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:opensearch:getServerlessVpcEndpoint
///       arguments:
///         vpcEndpointId: vpce-829a4487959e2a839
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_serverless_vpc_endpoint_get_serverless_vpc_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessVpcEndpointResult> getServerlessVpcEndpoint(
  GetServerlessVpcEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessVpcEndpoint:getServerlessVpcEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessVpcEndpointResult.fromMap(result);
}
