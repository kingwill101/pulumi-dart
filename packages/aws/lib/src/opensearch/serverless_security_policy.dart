import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_policy_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Security Policy. See AWS documentation for [encryption policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html#serverless-encryption-policies) and [network policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html#serverless-network-policies).
///
/// ## Example Usage
///
/// ### Encryption Security Policy
///
/// ### Applies to a single collection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessSecurityPolicy("example", {
///     name: "example",
///     type: "encryption",
///     description: "encryption security policy for example-collection",
///     policy: JSON.stringify({
///         Rules: [{
///             Resource: ["collection/example-collection"],
///             ResourceType: "collection",
///         }],
///         AWSOwnedKey: true,
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessSecurityPolicy("example",
///     name="example",
///     type="encryption",
///     description="encryption security policy for example-collection",
///     policy=json.dumps({
///         "Rules": [{
///             "Resource": ["collection/example-collection"],
///             "ResourceType": "collection",
///         }],
///         "AWSOwnedKey": True,
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
///     var example = new Aws.OpenSearch.ServerlessSecurityPolicy("example", new()
///     {
///         Name = "example",
///         Type = "encryption",
///         Description = "encryption security policy for example-collection",
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Rules"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Resource"] = new[]
///                     {
///                         "collection/example-collection",
///                     },
///                     ["ResourceType"] = "collection",
///                 },
///             },
///             ["AWSOwnedKey"] = true,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Rules": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Resource": []string{
/// 						"collection/example-collection",
/// 					},
/// 					"ResourceType": "collection",
/// 				},
/// 			},
/// 			"AWSOwnedKey": true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = opensearch.NewServerlessSecurityPolicy(ctx, "example", &opensearch.ServerlessSecurityPolicyArgs{
/// 			Name:        pulumi.String("example"),
/// 			Type:        pulumi.String("encryption"),
/// 			Description: pulumi.String("encryption security policy for example-collection"),
/// 			Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicy;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ServerlessSecurityPolicy("example", ServerlessSecurityPolicyArgs.builder()
///             .name("example")
///             .type("encryption")
///             .description("encryption security policy for example-collection")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Rules", jsonArray(jsonObject(
///                         jsonProperty("Resource", jsonArray("collection/example-collection")),
///                         jsonProperty("ResourceType", "collection")
///                     ))),
///                     jsonProperty("AWSOwnedKey", true)
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessSecurityPolicy
///     properties:
///       name: example
///       type: encryption
///       description: encryption security policy for example-collection
///       policy:
///         fn::toJSON:
///           Rules:
///             - Resource:
///                 - collection/example-collection
///               ResourceType: collection
///           AWSOwnedKey: true
/// ```
///
///
/// ### Applies to multiple collections
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessSecurityPolicy("example", {
///     name: "example",
///     type: "encryption",
///     description: "encryption security policy for collections that begin with \"example\"",
///     policy: JSON.stringify({
///         Rules: [{
///             Resource: ["collection/example*"],
///             ResourceType: "collection",
///         }],
///         AWSOwnedKey: true,
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessSecurityPolicy("example",
///     name="example",
///     type="encryption",
///     description="encryption security policy for collections that begin with \"example\"",
///     policy=json.dumps({
///         "Rules": [{
///             "Resource": ["collection/example*"],
///             "ResourceType": "collection",
///         }],
///         "AWSOwnedKey": True,
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
///     var example = new Aws.OpenSearch.ServerlessSecurityPolicy("example", new()
///     {
///         Name = "example",
///         Type = "encryption",
///         Description = "encryption security policy for collections that begin with \"example\"",
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Rules"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Resource"] = new[]
///                     {
///                         "collection/example*",
///                     },
///                     ["ResourceType"] = "collection",
///                 },
///             },
///             ["AWSOwnedKey"] = true,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Rules": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Resource": []string{
/// 						"collection/example*",
/// 					},
/// 					"ResourceType": "collection",
/// 				},
/// 			},
/// 			"AWSOwnedKey": true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = opensearch.NewServerlessSecurityPolicy(ctx, "example", &opensearch.ServerlessSecurityPolicyArgs{
/// 			Name:        pulumi.String("example"),
/// 			Type:        pulumi.String("encryption"),
/// 			Description: pulumi.String("encryption security policy for collections that begin with \"example\""),
/// 			Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicy;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ServerlessSecurityPolicy("example", ServerlessSecurityPolicyArgs.builder()
///             .name("example")
///             .type("encryption")
///             .description("encryption security policy for collections that begin with \"example\"")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Rules", jsonArray(jsonObject(
///                         jsonProperty("Resource", jsonArray("collection/example*")),
///                         jsonProperty("ResourceType", "collection")
///                     ))),
///                     jsonProperty("AWSOwnedKey", true)
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessSecurityPolicy
///     properties:
///       name: example
///       type: encryption
///       description: encryption security policy for collections that begin with "example"
///       policy:
///         fn::toJSON:
///           Rules:
///             - Resource:
///                 - collection/example*
///               ResourceType: collection
///           AWSOwnedKey: true
/// ```
///
///
/// ### Using a customer managed key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessSecurityPolicy("example", {
///     name: "example",
///     type: "encryption",
///     description: "encryption security policy using customer KMS key",
///     policy: JSON.stringify({
///         Rules: [{
///             Resource: ["collection/customer-managed-key-collection"],
///             ResourceType: "collection",
///         }],
///         AWSOwnedKey: false,
///         KmsARN: "arn:aws:kms:us-east-1:123456789012:key/93fd6da4-a317-4c17-bfe9-382b5d988b36",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessSecurityPolicy("example",
///     name="example",
///     type="encryption",
///     description="encryption security policy using customer KMS key",
///     policy=json.dumps({
///         "Rules": [{
///             "Resource": ["collection/customer-managed-key-collection"],
///             "ResourceType": "collection",
///         }],
///         "AWSOwnedKey": False,
///         "KmsARN": "arn:aws:kms:us-east-1:123456789012:key/93fd6da4-a317-4c17-bfe9-382b5d988b36",
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
///     var example = new Aws.OpenSearch.ServerlessSecurityPolicy("example", new()
///     {
///         Name = "example",
///         Type = "encryption",
///         Description = "encryption security policy using customer KMS key",
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Rules"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Resource"] = new[]
///                     {
///                         "collection/customer-managed-key-collection",
///                     },
///                     ["ResourceType"] = "collection",
///                 },
///             },
///             ["AWSOwnedKey"] = false,
///             ["KmsARN"] = "arn:aws:kms:us-east-1:123456789012:key/93fd6da4-a317-4c17-bfe9-382b5d988b36",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Rules": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Resource": []string{
/// 						"collection/customer-managed-key-collection",
/// 					},
/// 					"ResourceType": "collection",
/// 				},
/// 			},
/// 			"AWSOwnedKey": false,
/// 			"KmsARN":      "arn:aws:kms:us-east-1:123456789012:key/93fd6da4-a317-4c17-bfe9-382b5d988b36",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = opensearch.NewServerlessSecurityPolicy(ctx, "example", &opensearch.ServerlessSecurityPolicyArgs{
/// 			Name:        pulumi.String("example"),
/// 			Type:        pulumi.String("encryption"),
/// 			Description: pulumi.String("encryption security policy using customer KMS key"),
/// 			Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicy;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ServerlessSecurityPolicy("example", ServerlessSecurityPolicyArgs.builder()
///             .name("example")
///             .type("encryption")
///             .description("encryption security policy using customer KMS key")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Rules", jsonArray(jsonObject(
///                         jsonProperty("Resource", jsonArray("collection/customer-managed-key-collection")),
///                         jsonProperty("ResourceType", "collection")
///                     ))),
///                     jsonProperty("AWSOwnedKey", false),
///                     jsonProperty("KmsARN", "arn:aws:kms:us-east-1:123456789012:key/93fd6da4-a317-4c17-bfe9-382b5d988b36")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessSecurityPolicy
///     properties:
///       name: example
///       type: encryption
///       description: encryption security policy using customer KMS key
///       policy:
///         fn::toJSON:
///           Rules:
///             - Resource:
///                 - collection/customer-managed-key-collection
///               ResourceType: collection
///           AWSOwnedKey: false
///           KmsARN: arn:aws:kms:us-east-1:123456789012:key/93fd6da4-a317-4c17-bfe9-382b5d988b36
/// ```
///
///
/// ### Network Security Policy
///
/// ### Allow public access to the collection endpoint and the Dashboards endpoint
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessSecurityPolicy("example", {
///     name: "example",
///     type: "network",
///     description: "Public access",
///     policy: JSON.stringify([{
///         Description: "Public access to collection and Dashboards endpoint for example collection",
///         Rules: [
///             {
///                 ResourceType: "collection",
///                 Resource: ["collection/example-collection"],
///             },
///             {
///                 ResourceType: "dashboard",
///                 Resource: ["collection/example-collection"],
///             },
///         ],
///         AllowFromPublic: true,
///     }]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessSecurityPolicy("example",
///     name="example",
///     type="network",
///     description="Public access",
///     policy=json.dumps([{
///         "Description": "Public access to collection and Dashboards endpoint for example collection",
///         "Rules": [
///             {
///                 "ResourceType": "collection",
///                 "Resource": ["collection/example-collection"],
///             },
///             {
///                 "ResourceType": "dashboard",
///                 "Resource": ["collection/example-collection"],
///             },
///         ],
///         "AllowFromPublic": True,
///     }]))
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
///     var example = new Aws.OpenSearch.ServerlessSecurityPolicy("example", new()
///     {
///         Name = "example",
///         Type = "network",
///         Description = "Public access",
///         Policy = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["Description"] = "Public access to collection and Dashboards endpoint for example collection",
///                 ["Rules"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["ResourceType"] = "collection",
///                         ["Resource"] = new[]
///                         {
///                             "collection/example-collection",
///                         },
///                     },
///                     new Dictionary<string, object?>
///                     {
///                         ["ResourceType"] = "dashboard",
///                         ["Resource"] = new[]
///                         {
///                             "collection/example-collection",
///                         },
///                     },
///                 },
///                 ["AllowFromPublic"] = true,
///             },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"Description": "Public access to collection and Dashboards endpoint for example collection",
/// 				"Rules": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"ResourceType": "collection",
/// 						"Resource": []string{
/// 							"collection/example-collection",
/// 						},
/// 					},
/// 					map[string]interface{}{
/// 						"ResourceType": "dashboard",
/// 						"Resource": []string{
/// 							"collection/example-collection",
/// 						},
/// 					},
/// 				},
/// 				"AllowFromPublic": true,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = opensearch.NewServerlessSecurityPolicy(ctx, "example", &opensearch.ServerlessSecurityPolicyArgs{
/// 			Name:        pulumi.String("example"),
/// 			Type:        pulumi.String("network"),
/// 			Description: pulumi.String("Public access"),
/// 			Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicy;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ServerlessSecurityPolicy("example", ServerlessSecurityPolicyArgs.builder()
///             .name("example")
///             .type("network")
///             .description("Public access")
///             .policy(serializeJson(
///                 jsonArray(jsonObject(
///                     jsonProperty("Description", "Public access to collection and Dashboards endpoint for example collection"),
///                     jsonProperty("Rules", jsonArray(
///                         jsonObject(
///                             jsonProperty("ResourceType", "collection"),
///                             jsonProperty("Resource", jsonArray("collection/example-collection"))
///                         ),
///                         jsonObject(
///                             jsonProperty("ResourceType", "dashboard"),
///                             jsonProperty("Resource", jsonArray("collection/example-collection"))
///                         )
///                     )),
///                     jsonProperty("AllowFromPublic", true)
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessSecurityPolicy
///     properties:
///       name: example
///       type: network
///       description: Public access
///       policy:
///         fn::toJSON:
///           - Description: Public access to collection and Dashboards endpoint for example collection
///             Rules:
///               - ResourceType: collection
///                 Resource:
///                   - collection/example-collection
///               - ResourceType: dashboard
///                 Resource:
///                   - collection/example-collection
///             AllowFromPublic: true
/// ```
///
///
/// ### Allow VPC access to the collection endpoint and the Dashboards endpoint
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessSecurityPolicy("example", {
///     name: "example",
///     type: "network",
///     description: "VPC access",
///     policy: JSON.stringify([{
///         Description: "VPC access to collection and Dashboards endpoint for example collection",
///         Rules: [
///             {
///                 ResourceType: "collection",
///                 Resource: ["collection/example-collection"],
///             },
///             {
///                 ResourceType: "dashboard",
///                 Resource: ["collection/example-collection"],
///             },
///         ],
///         AllowFromPublic: false,
///         SourceVPCEs: ["vpce-050f79086ee71ac05"],
///     }]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessSecurityPolicy("example",
///     name="example",
///     type="network",
///     description="VPC access",
///     policy=json.dumps([{
///         "Description": "VPC access to collection and Dashboards endpoint for example collection",
///         "Rules": [
///             {
///                 "ResourceType": "collection",
///                 "Resource": ["collection/example-collection"],
///             },
///             {
///                 "ResourceType": "dashboard",
///                 "Resource": ["collection/example-collection"],
///             },
///         ],
///         "AllowFromPublic": False,
///         "SourceVPCEs": ["vpce-050f79086ee71ac05"],
///     }]))
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
///     var example = new Aws.OpenSearch.ServerlessSecurityPolicy("example", new()
///     {
///         Name = "example",
///         Type = "network",
///         Description = "VPC access",
///         Policy = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["Description"] = "VPC access to collection and Dashboards endpoint for example collection",
///                 ["Rules"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["ResourceType"] = "collection",
///                         ["Resource"] = new[]
///                         {
///                             "collection/example-collection",
///                         },
///                     },
///                     new Dictionary<string, object?>
///                     {
///                         ["ResourceType"] = "dashboard",
///                         ["Resource"] = new[]
///                         {
///                             "collection/example-collection",
///                         },
///                     },
///                 },
///                 ["AllowFromPublic"] = false,
///                 ["SourceVPCEs"] = new[]
///                 {
///                     "vpce-050f79086ee71ac05",
///                 },
///             },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"Description": "VPC access to collection and Dashboards endpoint for example collection",
/// 				"Rules": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"ResourceType": "collection",
/// 						"Resource": []string{
/// 							"collection/example-collection",
/// 						},
/// 					},
/// 					map[string]interface{}{
/// 						"ResourceType": "dashboard",
/// 						"Resource": []string{
/// 							"collection/example-collection",
/// 						},
/// 					},
/// 				},
/// 				"AllowFromPublic": false,
/// 				"SourceVPCEs": []string{
/// 					"vpce-050f79086ee71ac05",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = opensearch.NewServerlessSecurityPolicy(ctx, "example", &opensearch.ServerlessSecurityPolicyArgs{
/// 			Name:        pulumi.String("example"),
/// 			Type:        pulumi.String("network"),
/// 			Description: pulumi.String("VPC access"),
/// 			Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicy;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ServerlessSecurityPolicy("example", ServerlessSecurityPolicyArgs.builder()
///             .name("example")
///             .type("network")
///             .description("VPC access")
///             .policy(serializeJson(
///                 jsonArray(jsonObject(
///                     jsonProperty("Description", "VPC access to collection and Dashboards endpoint for example collection"),
///                     jsonProperty("Rules", jsonArray(
///                         jsonObject(
///                             jsonProperty("ResourceType", "collection"),
///                             jsonProperty("Resource", jsonArray("collection/example-collection"))
///                         ),
///                         jsonObject(
///                             jsonProperty("ResourceType", "dashboard"),
///                             jsonProperty("Resource", jsonArray("collection/example-collection"))
///                         )
///                     )),
///                     jsonProperty("AllowFromPublic", false),
///                     jsonProperty("SourceVPCEs", jsonArray("vpce-050f79086ee71ac05"))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessSecurityPolicy
///     properties:
///       name: example
///       type: network
///       description: VPC access
///       policy:
///         fn::toJSON:
///           - Description: VPC access to collection and Dashboards endpoint for example collection
///             Rules:
///               - ResourceType: collection
///                 Resource:
///                   - collection/example-collection
///               - ResourceType: dashboard
///                 Resource:
///                   - collection/example-collection
///             AllowFromPublic: false
///             SourceVPCEs:
///               - vpce-050f79086ee71ac05
/// ```
///
///
/// ### Mixed access for different collections
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessSecurityPolicy("example", {
///     name: "example",
///     type: "network",
///     description: "Mixed access for marketing and sales",
///     policy: JSON.stringify([
///         {
///             Description: "Marketing access",
///             Rules: [
///                 {
///                     ResourceType: "collection",
///                     Resource: ["collection/marketing*"],
///                 },
///                 {
///                     ResourceType: "dashboard",
///                     Resource: ["collection/marketing*"],
///                 },
///             ],
///             AllowFromPublic: false,
///             SourceVPCEs: ["vpce-050f79086ee71ac05"],
///         },
///         {
///             Description: "Sales access",
///             Rules: [{
///                 ResourceType: "collection",
///                 Resource: ["collection/finance"],
///             }],
///             AllowFromPublic: true,
///         },
///     ]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessSecurityPolicy("example",
///     name="example",
///     type="network",
///     description="Mixed access for marketing and sales",
///     policy=json.dumps([
///         {
///             "Description": "Marketing access",
///             "Rules": [
///                 {
///                     "ResourceType": "collection",
///                     "Resource": ["collection/marketing*"],
///                 },
///                 {
///                     "ResourceType": "dashboard",
///                     "Resource": ["collection/marketing*"],
///                 },
///             ],
///             "AllowFromPublic": False,
///             "SourceVPCEs": ["vpce-050f79086ee71ac05"],
///         },
///         {
///             "Description": "Sales access",
///             "Rules": [{
///                 "ResourceType": "collection",
///                 "Resource": ["collection/finance"],
///             }],
///             "AllowFromPublic": True,
///         },
///     ]))
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
///     var example = new Aws.OpenSearch.ServerlessSecurityPolicy("example", new()
///     {
///         Name = "example",
///         Type = "network",
///         Description = "Mixed access for marketing and sales",
///         Policy = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["Description"] = "Marketing access",
///                 ["Rules"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["ResourceType"] = "collection",
///                         ["Resource"] = new[]
///                         {
///                             "collection/marketing*",
///                         },
///                     },
///                     new Dictionary<string, object?>
///                     {
///                         ["ResourceType"] = "dashboard",
///                         ["Resource"] = new[]
///                         {
///                             "collection/marketing*",
///                         },
///                     },
///                 },
///                 ["AllowFromPublic"] = false,
///                 ["SourceVPCEs"] = new[]
///                 {
///                     "vpce-050f79086ee71ac05",
///                 },
///             },
///             new Dictionary<string, object?>
///             {
///                 ["Description"] = "Sales access",
///                 ["Rules"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["ResourceType"] = "collection",
///                         ["Resource"] = new[]
///                         {
///                             "collection/finance",
///                         },
///                     },
///                 },
///                 ["AllowFromPublic"] = true,
///             },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]interface{}{
/// 			map[string]interface{}{
/// 				"Description": "Marketing access",
/// 				"Rules": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"ResourceType": "collection",
/// 						"Resource": []string{
/// 							"collection/marketing*",
/// 						},
/// 					},
/// 					map[string]interface{}{
/// 						"ResourceType": "dashboard",
/// 						"Resource": []string{
/// 							"collection/marketing*",
/// 						},
/// 					},
/// 				},
/// 				"AllowFromPublic": false,
/// 				"SourceVPCEs": []string{
/// 					"vpce-050f79086ee71ac05",
/// 				},
/// 			},
/// 			map[string]interface{}{
/// 				"Description": "Sales access",
/// 				"Rules": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"ResourceType": "collection",
/// 						"Resource": []string{
/// 							"collection/finance",
/// 						},
/// 					},
/// 				},
/// 				"AllowFromPublic": true,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = opensearch.NewServerlessSecurityPolicy(ctx, "example", &opensearch.ServerlessSecurityPolicyArgs{
/// 			Name:        pulumi.String("example"),
/// 			Type:        pulumi.String("network"),
/// 			Description: pulumi.String("Mixed access for marketing and sales"),
/// 			Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicy;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ServerlessSecurityPolicy("example", ServerlessSecurityPolicyArgs.builder()
///             .name("example")
///             .type("network")
///             .description("Mixed access for marketing and sales")
///             .policy(serializeJson(
///                 jsonArray(
///                     jsonObject(
///                         jsonProperty("Description", "Marketing access"),
///                         jsonProperty("Rules", jsonArray(
///                             jsonObject(
///                                 jsonProperty("ResourceType", "collection"),
///                                 jsonProperty("Resource", jsonArray("collection/marketing*"))
///                             ),
///                             jsonObject(
///                                 jsonProperty("ResourceType", "dashboard"),
///                                 jsonProperty("Resource", jsonArray("collection/marketing*"))
///                             )
///                         )),
///                         jsonProperty("AllowFromPublic", false),
///                         jsonProperty("SourceVPCEs", jsonArray("vpce-050f79086ee71ac05"))
///                     ),
///                     jsonObject(
///                         jsonProperty("Description", "Sales access"),
///                         jsonProperty("Rules", jsonArray(jsonObject(
///                             jsonProperty("ResourceType", "collection"),
///                             jsonProperty("Resource", jsonArray("collection/finance"))
///                         ))),
///                         jsonProperty("AllowFromPublic", true)
///                     )
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessSecurityPolicy
///     properties:
///       name: example
///       type: network
///       description: Mixed access for marketing and sales
///       policy:
///         fn::toJSON:
///           - Description: Marketing access
///             Rules:
///               - ResourceType: collection
///                 Resource:
///                   - collection/marketing*
///               - ResourceType: dashboard
///                 Resource:
///                   - collection/marketing*
///             AllowFromPublic: false
///             SourceVPCEs:
///               - vpce-050f79086ee71ac05
///           - Description: Sales access
///             Rules:
///               - ResourceType: collection
///                 Resource:
///                   - collection/finance
///             AllowFromPublic: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Security Policy using the `name` and `type` arguments separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessSecurityPolicy:ServerlessSecurityPolicy example example/encryption
/// ```
class ServerlessSecurityPolicy extends pulumi.CustomResource {
  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  late final pulumi.Output<String?> description;
  /// Name of the policy.
  late final pulumi.Output<String> name;
  /// JSON policy document to use as the content for the new policy
  late final pulumi.Output<String> policy;
  /// Version of the policy.
  late final pulumi.Output<String> policyVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Type of security policy. One of `encryption` or `network`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [ServerlessSecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessSecurityPolicy]. {@macro pulumi_opensearch_serverless_security_policy_serverless_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessSecurityPolicy(
    String name, {
    ServerlessSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessSecurityPolicy:ServerlessSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.policyVersion = registerOutput<String>('policyVersion');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
  }
}
