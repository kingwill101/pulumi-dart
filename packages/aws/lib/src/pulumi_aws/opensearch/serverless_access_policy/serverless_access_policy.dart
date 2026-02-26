import 'package:pulumi/pulumi.dart';
import 'serverless_access_policy_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Access Policy. See AWS documentation for [data access policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html) and [supported data access policy permissions](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html#serverless-data-supported-permissions).
///
/// ## Example Usage
///
/// ### Grant all collection and index permissions
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.opensearch.ServerlessAccessPolicy("example", {
/// name: "example",
/// type: "data",
/// description: "read and write permissions",
/// policy: JSON.stringify([{
/// Rules: [
/// {
/// ResourceType: "index",
/// Resource: ["index/example-collection/*"],
/// Permission: ["aoss:*"],
/// },
/// {
/// ResourceType: "collection",
/// Resource: ["collection/example-collection"],
/// Permission: ["aoss:*"],
/// },
/// ],
/// Principal: [current.then(current => current.arn)],
/// }]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.opensearch.ServerlessAccessPolicy("example",
/// name="example",
/// type="data",
/// description="read and write permissions",
/// policy=json.dumps([{
/// "Rules": [
/// {
/// "ResourceType": "index",
/// "Resource": ["index/example-collection/*"],
/// "Permission": ["aoss:*"],
/// },
/// {
/// "ResourceType": "collection",
/// "Resource": ["collection/example-collection"],
/// "Permission": ["aoss:*"],
/// },
/// ],
/// "Principal": [current.arn],
/// }]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.OpenSearch.ServerlessAccessPolicy("example", new()
/// {
/// Name = "example",
/// Type = "data",
/// Description = "read and write permissions",
/// Policy = JsonSerializer.Serialize(new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Rules"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["ResourceType"] = "index",
/// ["Resource"] = new[]
/// {
/// "index/example-collection/*",
/// },
/// ["Permission"] = new[]
/// {
/// "aoss:*",
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["ResourceType"] = "collection",
/// ["Resource"] = new[]
/// {
/// "collection/example-collection",
/// },
/// ["Permission"] = new[]
/// {
/// "aoss:*",
/// },
/// },
/// },
/// ["Principal"] = new[]
/// {
/// current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
/// },
/// },
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// map[string]interface{}{
/// "Rules": []map[string]interface{}{
/// map[string]interface{}{
/// "ResourceType": "index",
/// "Resource": []string{
/// "index/example-collection/*",
/// },
/// "Permission": []string{
/// "aoss:*",
/// },
/// },
/// map[string]interface{}{
/// "ResourceType": "collection",
/// "Resource": []string{
/// "collection/example-collection",
/// },
/// "Permission": []string{
/// "aoss:*",
/// },
/// },
/// },
/// "Principal": []*string{
/// current.Arn,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = opensearch.NewServerlessAccessPolicy(ctx, "example", &opensearch.ServerlessAccessPolicyArgs{
/// Name:        pulumi.String("example"),
/// Type:        pulumi.String("data"),
/// Description: pulumi.String("read and write permissions"),
/// Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.opensearch.ServerlessAccessPolicy;
/// import com.pulumi.aws.opensearch.ServerlessAccessPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new ServerlessAccessPolicy("example", ServerlessAccessPolicyArgs.builder()
/// .name("example")
/// .type("data")
/// .description("read and write permissions")
/// .policy(serializeJson(
/// jsonArray(jsonObject(
/// jsonProperty("Rules", jsonArray(
/// jsonObject(
/// jsonProperty("ResourceType", "index"),
/// jsonProperty("Resource", jsonArray("index/example-collection/*")),
/// jsonProperty("Permission", jsonArray("aoss:*"))
/// ),
/// jsonObject(
/// jsonProperty("ResourceType", "collection"),
/// jsonProperty("Resource", jsonArray("collection/example-collection")),
/// jsonProperty("Permission", jsonArray("aoss:*"))
/// )
/// )),
/// jsonProperty("Principal", jsonArray(current.arn()))
/// ))))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:opensearch:ServerlessAccessPolicy
/// properties:
/// name: example
/// type: data
/// description: read and write permissions
/// policy:
/// fn::toJSON:
/// - Rules:
/// - ResourceType: index
/// Resource:
/// - index/example-collection/*
/// Permission:
/// - aoss:*
/// - ResourceType: collection
/// Resource:
/// - collection/example-collection
/// Permission:
/// - aoss:*
/// Principal:
/// - ${current.arn}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Grant read-only collection and index permissions
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.opensearch.ServerlessAccessPolicy("example", {
/// name: "example",
/// type: "data",
/// description: "read-only permissions",
/// policy: JSON.stringify([{
/// Rules: [
/// {
/// ResourceType: "index",
/// Resource: ["index/example-collection/*"],
/// Permission: [
/// "aoss:DescribeIndex",
/// "aoss:ReadDocument",
/// ],
/// },
/// {
/// ResourceType: "collection",
/// Resource: ["collection/example-collection"],
/// Permission: ["aoss:DescribeCollectionItems"],
/// },
/// ],
/// Principal: [current.then(current => current.arn)],
/// }]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.opensearch.ServerlessAccessPolicy("example",
/// name="example",
/// type="data",
/// description="read-only permissions",
/// policy=json.dumps([{
/// "Rules": [
/// {
/// "ResourceType": "index",
/// "Resource": ["index/example-collection/*"],
/// "Permission": [
/// "aoss:DescribeIndex",
/// "aoss:ReadDocument",
/// ],
/// },
/// {
/// "ResourceType": "collection",
/// "Resource": ["collection/example-collection"],
/// "Permission": ["aoss:DescribeCollectionItems"],
/// },
/// ],
/// "Principal": [current.arn],
/// }]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.OpenSearch.ServerlessAccessPolicy("example", new()
/// {
/// Name = "example",
/// Type = "data",
/// Description = "read-only permissions",
/// Policy = JsonSerializer.Serialize(new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Rules"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["ResourceType"] = "index",
/// ["Resource"] = new[]
/// {
/// "index/example-collection/*",
/// },
/// ["Permission"] = new[]
/// {
/// "aoss:DescribeIndex",
/// "aoss:ReadDocument",
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["ResourceType"] = "collection",
/// ["Resource"] = new[]
/// {
/// "collection/example-collection",
/// },
/// ["Permission"] = new[]
/// {
/// "aoss:DescribeCollectionItems",
/// },
/// },
/// },
/// ["Principal"] = new[]
/// {
/// current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
/// },
/// },
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// map[string]interface{}{
/// "Rules": []interface{}{
/// map[string]interface{}{
/// "ResourceType": "index",
/// "Resource": []string{
/// "index/example-collection/*",
/// },
/// "Permission": []string{
/// "aoss:DescribeIndex",
/// "aoss:ReadDocument",
/// },
/// },
/// map[string]interface{}{
/// "ResourceType": "collection",
/// "Resource": []string{
/// "collection/example-collection",
/// },
/// "Permission": []string{
/// "aoss:DescribeCollectionItems",
/// },
/// },
/// },
/// "Principal": []*string{
/// current.Arn,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = opensearch.NewServerlessAccessPolicy(ctx, "example", &opensearch.ServerlessAccessPolicyArgs{
/// Name:        pulumi.String("example"),
/// Type:        pulumi.String("data"),
/// Description: pulumi.String("read-only permissions"),
/// Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.opensearch.ServerlessAccessPolicy;
/// import com.pulumi.aws.opensearch.ServerlessAccessPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new ServerlessAccessPolicy("example", ServerlessAccessPolicyArgs.builder()
/// .name("example")
/// .type("data")
/// .description("read-only permissions")
/// .policy(serializeJson(
/// jsonArray(jsonObject(
/// jsonProperty("Rules", jsonArray(
/// jsonObject(
/// jsonProperty("ResourceType", "index"),
/// jsonProperty("Resource", jsonArray("index/example-collection/*")),
/// jsonProperty("Permission", jsonArray(
/// "aoss:DescribeIndex",
/// "aoss:ReadDocument"
/// ))
/// ),
/// jsonObject(
/// jsonProperty("ResourceType", "collection"),
/// jsonProperty("Resource", jsonArray("collection/example-collection")),
/// jsonProperty("Permission", jsonArray("aoss:DescribeCollectionItems"))
/// )
/// )),
/// jsonProperty("Principal", jsonArray(current.arn()))
/// ))))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:opensearch:ServerlessAccessPolicy
/// properties:
/// name: example
/// type: data
/// description: read-only permissions
/// policy:
/// fn::toJSON:
/// - Rules:
/// - ResourceType: index
/// Resource:
/// - index/example-collection/*
/// Permission:
/// - aoss:DescribeIndex
/// - aoss:ReadDocument
/// - ResourceType: collection
/// Resource:
/// - collection/example-collection
/// Permission:
/// - aoss:DescribeCollectionItems
/// Principal:
/// - ${current.arn}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Grant SAML identity permissions
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessAccessPolicy("example", {
/// name: "example",
/// type: "data",
/// description: "saml permissions",
/// policy: JSON.stringify([{
/// Rules: [
/// {
/// ResourceType: "index",
/// Resource: ["index/example-collection/*"],
/// Permission: ["aoss:*"],
/// },
/// {
/// ResourceType: "collection",
/// Resource: ["collection/example-collection"],
/// Permission: ["aoss:*"],
/// },
/// ],
/// Principal: [
/// "saml/123456789012/myprovider/user/Annie",
/// "saml/123456789012/anotherprovider/group/Accounting",
/// ],
/// }]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessAccessPolicy("example",
/// name="example",
/// type="data",
/// description="saml permissions",
/// policy=json.dumps([{
/// "Rules": [
/// {
/// "ResourceType": "index",
/// "Resource": ["index/example-collection/*"],
/// "Permission": ["aoss:*"],
/// },
/// {
/// "ResourceType": "collection",
/// "Resource": ["collection/example-collection"],
/// "Permission": ["aoss:*"],
/// },
/// ],
/// "Principal": [
/// "saml/123456789012/myprovider/user/Annie",
/// "saml/123456789012/anotherprovider/group/Accounting",
/// ],
/// }]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.OpenSearch.ServerlessAccessPolicy("example", new()
/// {
/// Name = "example",
/// Type = "data",
/// Description = "saml permissions",
/// Policy = JsonSerializer.Serialize(new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Rules"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["ResourceType"] = "index",
/// ["Resource"] = new[]
/// {
/// "index/example-collection/*",
/// },
/// ["Permission"] = new[]
/// {
/// "aoss:*",
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["ResourceType"] = "collection",
/// ["Resource"] = new[]
/// {
/// "collection/example-collection",
/// },
/// ["Permission"] = new[]
/// {
/// "aoss:*",
/// },
/// },
/// },
/// ["Principal"] = new[]
/// {
/// "saml/123456789012/myprovider/user/Annie",
/// "saml/123456789012/anotherprovider/group/Accounting",
/// },
/// },
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// map[string]interface{}{
/// "Rules": []map[string]interface{}{
/// map[string]interface{}{
/// "ResourceType": "index",
/// "Resource": []string{
/// "index/example-collection/*",
/// },
/// "Permission": []string{
/// "aoss:*",
/// },
/// },
/// map[string]interface{}{
/// "ResourceType": "collection",
/// "Resource": []string{
/// "collection/example-collection",
/// },
/// "Permission": []string{
/// "aoss:*",
/// },
/// },
/// },
/// "Principal": []string{
/// "saml/123456789012/myprovider/user/Annie",
/// "saml/123456789012/anotherprovider/group/Accounting",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = opensearch.NewServerlessAccessPolicy(ctx, "example", &opensearch.ServerlessAccessPolicyArgs{
/// Name:        pulumi.String("example"),
/// Type:        pulumi.String("data"),
/// Description: pulumi.String("saml permissions"),
/// Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.opensearch.ServerlessAccessPolicy;
/// import com.pulumi.aws.opensearch.ServerlessAccessPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ServerlessAccessPolicy("example", ServerlessAccessPolicyArgs.builder()
/// .name("example")
/// .type("data")
/// .description("saml permissions")
/// .policy(serializeJson(
/// jsonArray(jsonObject(
/// jsonProperty("Rules", jsonArray(
/// jsonObject(
/// jsonProperty("ResourceType", "index"),
/// jsonProperty("Resource", jsonArray("index/example-collection/*")),
/// jsonProperty("Permission", jsonArray("aoss:*"))
/// ),
/// jsonObject(
/// jsonProperty("ResourceType", "collection"),
/// jsonProperty("Resource", jsonArray("collection/example-collection")),
/// jsonProperty("Permission", jsonArray("aoss:*"))
/// )
/// )),
/// jsonProperty("Principal", jsonArray(
/// "saml/123456789012/myprovider/user/Annie",
/// "saml/123456789012/anotherprovider/group/Accounting"
/// ))
/// ))))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:opensearch:ServerlessAccessPolicy
/// properties:
/// name: example
/// type: data
/// description: saml permissions
/// policy:
/// fn::toJSON:
/// - Rules:
/// - ResourceType: index
/// Resource:
/// - index/example-collection/*
/// Permission:
/// - aoss:*
/// - ResourceType: collection
/// Resource:
/// - collection/example-collection
/// Permission:
/// - aoss:*
/// Principal:
/// - saml/123456789012/myprovider/user/Annie
/// - saml/123456789012/anotherprovider/group/Accounting
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Access Policy using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> arguments separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessAccessPolicy:ServerlessAccessPolicy example example/data
/// ```
class ServerlessAccessPolicy extends CustomResource {
  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  late final Output<String?> description;

  /// Name of the policy.
  late final Output<String> name;

  /// JSON policy document to use as the content for the new policy
  late final Output<String> policy;

  /// Version of the policy.
  late final Output<String> policyVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Type of access policy. Must be <span pulumi-lang-nodejs="`data`" pulumi-lang-dotnet="`Data`" pulumi-lang-go="`data`" pulumi-lang-python="`data`" pulumi-lang-yaml="`data`" pulumi-lang-java="`data`">`data`</span>.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  ServerlessAccessPolicy(
    String name, {
    ServerlessAccessPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessAccessPolicy:ServerlessAccessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.policyVersion = registerOutput<String>('policyVersion');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
  }
}
