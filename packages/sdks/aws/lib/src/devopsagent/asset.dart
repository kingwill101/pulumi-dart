import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_args.dart';
import 'asset_content.dart';
import 'asset_state.dart';

/// Manages an AWS DevOps Agent Asset.
///
/// &gt; **Note:** `content` and `metadata` are inputs retained in Terraform state. Terraform does not detect out-of-band changes to these inputs. `metadataActual` exposes the current metadata returned by AWS. Import cannot recover the original content or metadata input.
///
/// &gt; **Note:** Updating ZIP content replaces all files in the asset, including files managed separately. Updating single-file content adds or replaces that file without deleting other files. Updating source URL content re-syncs from the original source; an unchanged URL does not trigger a re-sync.
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
/// const example = new aws.devopsagent.AgentSpace("example", {name: "example"});
/// const exampleAsset = new aws.devopsagent.Asset("example", {
///     content: {
///         file: {
///             body: {
///                 text: "Follow the operational runbook.",
///             },
///             path: "AGENTS.md",
///         },
///     },
///     agentSpaceId: example.agentSpaceId,
///     assetType: "agents_md",
///     metadata: JSON.stringify({
///         agent_type: "GENERIC",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.devopsagent.AgentSpace("example", name="example")
/// example_asset = aws.devopsagent.Asset("example",
///     content={
///         "file": {
///             "body": {
///                 "text": "Follow the operational runbook.",
///             },
///             "path": "AGENTS.md",
///         },
///     },
///     agent_space_id=example.agent_space_id,
///     asset_type="agents_md",
///     metadata=json.dumps({
///         "agent_type": "GENERIC",
///     }))
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
///     var example = new Aws.DevOpsAgent.AgentSpace("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleAsset = new Aws.DevOpsAgent.Asset("example", new()
///     {
///         Content = new Aws.DevOpsAgent.Inputs.AssetContentArgs
///         {
///             File = new Aws.DevOpsAgent.Inputs.AssetContentFileArgs
///             {
///                 Body = new Aws.DevOpsAgent.Inputs.AssetContentFileBodyArgs
///                 {
///                     Text = "Follow the operational runbook.",
///                 },
///                 Path = "AGENTS.md",
///             },
///         },
///         AgentSpaceId = example.AgentSpaceId,
///         AssetType = "agents_md",
///         Metadata = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["agent_type"] = "GENERIC",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsagent"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devopsagent.NewAgentSpace(ctx, "example", &devopsagent.AgentSpaceArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"agent_type": "GENERIC",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = devopsagent.NewAsset(ctx, "example", &devopsagent.AssetArgs{
/// 			Content: &devopsagent.AssetContentArgs{
/// 				File: &devopsagent.AssetContentFileArgs{
/// 					Body: &devopsagent.AssetContentFileBodyArgs{
/// 						Text: pulumi.String("Follow the operational runbook."),
/// 					},
/// 					Path: pulumi.String("AGENTS.md"),
/// 				},
/// 			},
/// 			AgentSpaceId: example.AgentSpaceId,
/// 			AssetType:    pulumi.String("agents_md"),
/// 			Metadata:     pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_devopsagent_agent_space" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "example"
/// }
/// resource "aws_devopsagent_asset" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   content {
///     file {
///       body {
///         text = "Follow the operational runbook."
///       }
///       path = "AGENTS.md"
///     }
///   }
///   agent_space_id = aws_devopsagent_agent_space.example.agent_space_id
///   asset_type     = "agents_md"
///   metadata = jsonencode({
///     "agent_type" = "GENERIC"
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsagent.AgentSpace;
/// import com.pulumi.aws.devopsagent.AgentSpaceArgs;
/// import com.pulumi.aws.devopsagent.Asset;
/// import com.pulumi.aws.devopsagent.AssetArgs;
/// import com.pulumi.aws.devopsagent.inputs.AssetContentArgs;
/// import com.pulumi.aws.devopsagent.inputs.AssetContentFileArgs;
/// import com.pulumi.aws.devopsagent.inputs.AssetContentFileBodyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new AgentSpace("example", AgentSpaceArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleAsset = new Asset("exampleAsset", AssetArgs.builder()
///             .content(AssetContentArgs.builder()
///                 .file(AssetContentFileArgs.builder()
///                     .body(AssetContentFileBodyArgs.builder()
///                         .text("Follow the operational runbook.")
///                         .build())
///                     .path("AGENTS.md")
///                     .build())
///                 .build())
///             .agentSpaceId(example.agentSpaceId())
///             .assetType("agents_md")
///             .metadata(serializeJson(
///                 jsonObject(
///                     jsonProperty("agent_type", "GENERIC")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsagent:AgentSpace
///     properties:
///       name: example
///   exampleAsset:
///     type: aws:devopsagent:Asset
///     name: example
///     properties:
///       content:
///         file:
///           body:
///             text: Follow the operational runbook.
///           path: AGENTS.md
///       agentSpaceId: ${example.agentSpaceId}
///       assetType: agents_md
///       metadata:
///         fn::toJSON:
///           agent_type: GENERIC
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `agentSpaceId` (String) Identifier of the Agent Space containing the asset.
/// * `assetId` (String) Identifier of the asset.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an asset using its Agent Space ID and asset ID separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:devopsagent/asset:Asset example 12345678-1234-1234-1234-123456789012,87654321-4321-4321-4321-210987654321
/// ```
class Asset extends pulumi.CustomResource {
  /// Identifier of the Agent Space containing the asset. Changing this value requires replacement.
  late final pulumi.Output<String> agentSpaceId;
  /// Identifier of the asset.
  late final pulumi.Output<String> assetId;
  /// Type of asset. Changing this value requires replacement. See [Managing assets](https://docs.aws.amazon.com/devopsagent/latest/userguide/about-aws-devops-agent-managing-assets.html) for supported types and their metadata requirements.
  late final pulumi.Output<String> assetType;
  /// Content to upload. Exactly one block is required. See `content` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AssetContent> content;
  /// Creation timestamp in RFC 3339 format.
  late final pulumi.Output<String> createdAt;
  /// JSON document describing the asset. Required metadata fields depend on `assetType`. Updates replace supplied top-level fields and retain omitted fields in AWS; removing a field from this document does not delete it from AWS. Changes to metadata alone do not re-upload content.
  late final pulumi.Output<String?> metadata;
  /// Full JSON metadata returned by AWS, including retained fields and service-provided defaults.
  late final pulumi.Output<String> metadataActual;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Last update timestamp in RFC 3339 format.
  late final pulumi.Output<String> updatedAt;
  /// Current asset version.
  late final pulumi.Output<int> version;

  /// Creates a new [Asset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Asset]. {@macro pulumi_devopsagent_asset_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Asset(
    String name, {
    AssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsagent/asset:Asset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    agentSpaceId = registerOutput<String>('agentSpaceId');
    assetId = registerOutput<String>('assetId');
    assetType = registerOutput<String>('assetType');
    content = registerOutput<AssetContent>('content', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetContent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    metadata = registerOutput<String?>('metadata');
    metadataActual = registerOutput<String>('metadataActual');
    region = registerOutput<String>('region');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [Asset] resource's state with the given [name] and [id].
  static Asset get(
    String name,
    pulumi.Input<String> id, {
    AssetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Asset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Asset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsagent/asset:Asset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentSpaceId = registerOutput<String>('agentSpaceId');
    assetId = registerOutput<String>('assetId');
    assetType = registerOutput<String>('assetType');
    content = registerOutput<AssetContent>('content', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetContent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    metadata = registerOutput<String?>('metadata');
    metadataActual = registerOutput<String>('metadataActual');
    region = registerOutput<String>('region');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [Asset] resource.
  Asset.reference(String urn)
    : super(
        'aws:devopsagent/asset:Asset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentSpaceId = registerOutput<String>('agentSpaceId');
    assetId = registerOutput<String>('assetId');
    assetType = registerOutput<String>('assetType');
    content = registerOutput<AssetContent>('content', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetContent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    metadata = registerOutput<String?>('metadata');
    metadataActual = registerOutput<String>('metadataActual');
    region = registerOutput<String>('region');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
  }
}
