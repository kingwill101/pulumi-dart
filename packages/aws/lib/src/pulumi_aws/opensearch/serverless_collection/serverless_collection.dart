import 'package:pulumi/pulumi.dart';
import '../serverless_collection_timeouts/serverless_collection_timeouts.dart';
import 'serverless_collection_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Collection.
///
/// > **NOTE:** An <span pulumi-lang-nodejs="`aws.opensearch.ServerlessCollection`" pulumi-lang-dotnet="`aws.opensearch.ServerlessCollection`" pulumi-lang-go="`opensearch.ServerlessCollection`" pulumi-lang-python="`opensearch.ServerlessCollection`" pulumi-lang-yaml="`aws.opensearch.ServerlessCollection`" pulumi-lang-java="`aws.opensearch.ServerlessCollection`">`aws.opensearch.ServerlessCollection`</span> cannot be created without having an applicable encryption security policy. Use the <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> meta-argument to define this dependency.
///
/// > **NOTE:** An <span pulumi-lang-nodejs="`aws.opensearch.ServerlessCollection`" pulumi-lang-dotnet="`aws.opensearch.ServerlessCollection`" pulumi-lang-go="`opensearch.ServerlessCollection`" pulumi-lang-python="`opensearch.ServerlessCollection`" pulumi-lang-yaml="`aws.opensearch.ServerlessCollection`" pulumi-lang-java="`aws.opensearch.ServerlessCollection`">`aws.opensearch.ServerlessCollection`</span> is not accessible without configuring an applicable network security policy. Data cannot be accessed without configuring an applicable data access policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessSecurityPolicy("example", {
/// name: "example",
/// type: "encryption",
/// policy: JSON.stringify({
/// Rules: [{
/// Resource: ["collection/example"],
/// ResourceType: "collection",
/// }],
/// AWSOwnedKey: true,
/// }),
/// });
/// const exampleServerlessCollection = new aws.opensearch.ServerlessCollection("example", {name: "example"}, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessSecurityPolicy("example",
/// name="example",
/// type="encryption",
/// policy=json.dumps({
/// "Rules": [{
/// "Resource": ["collection/example"],
/// "ResourceType": "collection",
/// }],
/// "AWSOwnedKey": True,
/// }))
/// example_serverless_collection = aws.opensearch.ServerlessCollection("example", name="example",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
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
/// var example = new Aws.OpenSearch.ServerlessSecurityPolicy("example", new()
/// {
/// Name = "example",
/// Type = "encryption",
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Rules"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Resource"] = new[]
/// {
/// "collection/example",
/// },
/// ["ResourceType"] = "collection",
/// },
/// },
/// ["AWSOwnedKey"] = true,
/// }),
/// });
///
/// var exampleServerlessCollection = new Aws.OpenSearch.ServerlessCollection("example", new()
/// {
/// Name = "example",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
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
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Rules": []map[string]interface{}{
/// map[string]interface{}{
/// "Resource": []string{
/// "collection/example",
/// },
/// "ResourceType": "collection",
/// },
/// },
/// "AWSOwnedKey": true,
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// example, err := opensearch.NewServerlessSecurityPolicy(ctx, "example", &opensearch.ServerlessSecurityPolicyArgs{
/// Name:   pulumi.String("example"),
/// Type:   pulumi.String("encryption"),
/// Policy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = opensearch.NewServerlessCollection(ctx, "example", &opensearch.ServerlessCollectionArgs{
/// Name: pulumi.String("example"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
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
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicy;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicyArgs;
/// import com.pulumi.aws.opensearch.ServerlessCollection;
/// import com.pulumi.aws.opensearch.ServerlessCollectionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new ServerlessSecurityPolicy("example", ServerlessSecurityPolicyArgs.builder()
/// .name("example")
/// .type("encryption")
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Rules", jsonArray(jsonObject(
/// jsonProperty("Resource", jsonArray("collection/example")),
/// jsonProperty("ResourceType", "collection")
/// ))),
/// jsonProperty("AWSOwnedKey", true)
/// )))
/// .build());
///
/// var exampleServerlessCollection = new ServerlessCollection("exampleServerlessCollection", ServerlessCollectionArgs.builder()
/// .name("example")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:opensearch:ServerlessSecurityPolicy
/// properties:
/// name: example
/// type: encryption
/// policy:
/// fn::toJSON:
/// Rules:
/// - Resource:
/// - collection/example
/// ResourceType: collection
/// AWSOwnedKey: true
/// exampleServerlessCollection:
/// type: aws:opensearch:ServerlessCollection
/// name: example
/// properties:
/// name: example
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Collection using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessCollection:ServerlessCollection example example
/// ```
class ServerlessCollection extends CustomResource {
  /// Amazon Resource Name (ARN) of the collection.
  late final Output<String> arn;

  /// Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  late final Output<String> collectionEndpoint;

  /// Collection-specific endpoint used to access OpenSearch Dashboards.
  late final Output<String> dashboardEndpoint;

  /// Description of the collection.
  late final Output<String?> description;

  /// The ARN of the Amazon Web Services KMS key used to encrypt the collection.
  late final Output<String> kmsKeyArn;

  /// Name of the collection.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  late final Output<String> standbyReplicas;

  /// A map of tags to assign to the collection. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<ServerlessCollectionTimeouts?> timeouts;

  /// Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  late final Output<String> type;

  ServerlessCollection(
    String name, {
    ServerlessCollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessCollection:ServerlessCollection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.collectionEndpoint = Output.createUnknown<String>();
    this.dashboardEndpoint = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.kmsKeyArn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.standbyReplicas = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<ServerlessCollectionTimeouts?>();
    this.type = Output.createUnknown<String>();
  }
}
