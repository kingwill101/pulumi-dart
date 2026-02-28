import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_args.dart';
import 'cx_tool_version_tool.dart';

/// Tool version is a snapshot of the tool at certain timestamp.
///
///
/// To get more information about ToolVersion, see:
///
/// * [API documentation](https://cloud.devsite.corp.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
///
///
/// ## Example Usage
///
/// ### Dialogflowcx Tool Version Open Api
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-open-api",
///     location: "global",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
/// });
/// const tool = new gcp.diagflow.CxTool("tool", {
///     parent: agent.id,
///     displayName: "open-api-tool",
///     description: "Example Description",
///     openApiSpec: {
///         authentication: {
///             oauthConfig: {
///                 oauthGrantType: "CLIENT_CREDENTIAL",
///                 clientId: "example client ID",
///                 clientSecret: "example client secret",
///                 scopes: ["example scope"],
///                 secretVersionForClientSecret: "projects/-/secrets/-/versions/-",
///                 tokenEndpoint: "https://example.com/oauth/token",
///             },
///         },
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example ca cert name",
///                 cert: std.base64encode({
///                     input: "example cert",
///                 }).then(invoke => invoke.result),
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/-/locations/-/namespaces/-/services/-",
///         },
///         textSchema: `      {
///         \\"openapi\\": \\"3.0.0\\",
///         \\"info\\": {
///           \\"title\\": \\"Time API\\",
///           \\"version\\": \\"1.0.0\\",
///           \\"description\\": \\"A simple API to get the current time.\\"
///         },
///         \\"servers\\": [
///           {
///             \\"url\\": \\"https://example-api-endpoint.com\\"
///           }
///         ],
///         \\"paths\\": {
///           \\"/time\\": {
///             \\"get\\": {
///               \\"operationId\\": \\"getCurrentTime\\",
///               \\"summary\\": \\"Gets the current server time.\\",
///               \\"responses\\": {
///                 \\"200\\": {
///                   \\"description\\": \\"Successful response with the current time.\\",
///                   \\"content\\": {
///                     \\"application/json\\": {
///                       \\"schema\\": {
///                         \\"type\\": \\"object\\",
///                         \\"properties\\": {
///                           \\"currentTime\\": {
///                             \\"type\\": \\"string\\",
///                             \\"format\\": \\"date-time\\",
///                             \\"description\\": \\"The current time in ISO 8601 format.\\"
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
/// `,
///     },
/// });
/// const openApiToolVersion = new gcp.diagflow.CxToolVersion("open_api_tool_version", {
///     parent: tool.id,
///     displayName: "Example Open API Tool Version",
///     tool: {
///         displayName: "open-api-tool",
///         description: "Example Description",
///         openApiSpec: {
///             authentication: {
///                 oauthConfig: {
///                     oauthGrantType: "CLIENT_CREDENTIAL",
///                     clientId: "example client ID",
///                     clientSecret: "example client secret",
///                     scopes: ["example scope"],
///                     secretVersionForClientSecret: "projects/-/secrets/-/versions/-",
///                     tokenEndpoint: "https://example.com/oauth/token",
///                 },
///             },
///             tlsConfig: {
///                 caCerts: [{
///                     displayName: "example ca cert name",
///                     cert: std.base64encode({
///                         input: "example cert",
///                     }).then(invoke => invoke.result),
///                 }],
///             },
///             serviceDirectoryConfig: {
///                 service: "projects/-/locations/-/namespaces/-/services/-",
///             },
///             textSchema: `      {
///         \\"openapi\\": \\"3.0.0\\",
///         \\"info\\": {
///           \\"title\\": \\"Time API\\",
///           \\"version\\": \\"1.0.0\\",
///           \\"description\\": \\"A simple API to get the current time.\\"
///         },
///         \\"servers\\": [
///           {
///             \\"url\\": \\"https://example-api-endpoint.com\\"
///           }
///         ],
///         \\"paths\\": {
///           \\"/time\\": {
///             \\"get\\": {
///               \\"operationId\\": \\"getCurrentTime\\",
///               \\"summary\\": \\"Gets the current server time.\\",
///               \\"responses\\": {
///                 \\"200\\": {
///                   \\"description\\": \\"Successful response with the current time.\\",
///                   \\"content\\": {
///                     \\"application/json\\": {
///                       \\"schema\\": {
///                         \\"type\\": \\"object\\",
///                         \\"properties\\": {
///                           \\"currentTime\\": {
///                             \\"type\\": \\"string\\",
///                             \\"format\\": \\"date-time\\",
///                             \\"description\\": \\"The current time in ISO 8601 format.\\"
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
/// `,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-open-api",
///     location="global",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.")
/// tool = gcp.diagflow.CxTool("tool",
///     parent=agent.id,
///     display_name="open-api-tool",
///     description="Example Description",
///     open_api_spec={
///         "authentication": {
///             "oauth_config": {
///                 "oauth_grant_type": "CLIENT_CREDENTIAL",
///                 "client_id": "example client ID",
///                 "client_secret": "example client secret",
///                 "scopes": ["example scope"],
///                 "secret_version_for_client_secret": "projects/-/secrets/-/versions/-",
///                 "token_endpoint": "https://example.com/oauth/token",
///             },
///         },
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example ca cert name",
///                 "cert": std.base64encode(input="example cert").result,
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/-/locations/-/namespaces/-/services/-",
///         },
///         "text_schema": """      {
///         \"openapi\": \"3.0.0\",
///         \"info\": {
///           \"title\": \"Time API\",
///           \"version\": \"1.0.0\",
///           \"description\": \"A simple API to get the current time.\"
///         },
///         \"servers\": [
///           {
///             \"url\": \"https://example-api-endpoint.com\"
///           }
///         ],
///         \"paths\": {
///           \"/time\": {
///             \"get\": {
///               \"operationId\": \"getCurrentTime\",
///               \"summary\": \"Gets the current server time.\",
///               \"responses\": {
///                 \"200\": {
///                   \"description\": \"Successful response with the current time.\",
///                   \"content\": {
///                     \"application/json\": {
///                       \"schema\": {
///                         \"type\": \"object\",
///                         \"properties\": {
///                           \"currentTime\": {
///                             \"type\": \"string\",
///                             \"format\": \"date-time\",
///                             \"description\": \"The current time in ISO 8601 format.\"
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
/// """,
///     })
/// open_api_tool_version = gcp.diagflow.CxToolVersion("open_api_tool_version",
///     parent=tool.id,
///     display_name="Example Open API Tool Version",
///     tool={
///         "display_name": "open-api-tool",
///         "description": "Example Description",
///         "open_api_spec": {
///             "authentication": {
///                 "oauth_config": {
///                     "oauth_grant_type": "CLIENT_CREDENTIAL",
///                     "client_id": "example client ID",
///                     "client_secret": "example client secret",
///                     "scopes": ["example scope"],
///                     "secret_version_for_client_secret": "projects/-/secrets/-/versions/-",
///                     "token_endpoint": "https://example.com/oauth/token",
///                 },
///             },
///             "tls_config": {
///                 "ca_certs": [{
///                     "display_name": "example ca cert name",
///                     "cert": std.base64encode(input="example cert").result,
///                 }],
///             },
///             "service_directory_config": {
///                 "service": "projects/-/locations/-/namespaces/-/services/-",
///             },
///             "text_schema": """      {
///         \"openapi\": \"3.0.0\",
///         \"info\": {
///           \"title\": \"Time API\",
///           \"version\": \"1.0.0\",
///           \"description\": \"A simple API to get the current time.\"
///         },
///         \"servers\": [
///           {
///             \"url\": \"https://example-api-endpoint.com\"
///           }
///         ],
///         \"paths\": {
///           \"/time\": {
///             \"get\": {
///               \"operationId\": \"getCurrentTime\",
///               \"summary\": \"Gets the current server time.\",
///               \"responses\": {
///                 \"200\": {
///                   \"description\": \"Successful response with the current time.\",
///                   \"content\": {
///                     \"application/json\": {
///                       \"schema\": {
///                         \"type\": \"object\",
///                         \"properties\": {
///                           \"currentTime\": {
///                             \"type\": \"string\",
///                             \"format\": \"date-time\",
///                             \"description\": \"The current time in ISO 8601 format.\"
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
/// """,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-open-api",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///     });
///
///     var tool = new Gcp.Diagflow.CxTool("tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "open-api-tool",
///         Description = "Example Description",
///         OpenApiSpec = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecArgs
///         {
///             Authentication = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecAuthenticationArgs
///             {
///                 OauthConfig = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecAuthenticationOauthConfigArgs
///                 {
///                     OauthGrantType = "CLIENT_CREDENTIAL",
///                     ClientId = "example client ID",
///                     ClientSecret = "example client secret",
///                     Scopes = new[]
///                     {
///                         "example scope",
///                     },
///                     SecretVersionForClientSecret = "projects/-/secrets/-/versions/-",
///                     TokenEndpoint = "https://example.com/oauth/token",
///                 },
///             },
///             TlsConfig = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxToolOpenApiSpecTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example ca cert name",
///                         Cert = Std.Base64encode.Invoke(new()
///                         {
///                             Input = "example cert",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecServiceDirectoryConfigArgs
///             {
///                 Service = "projects/-/locations/-/namespaces/-/services/-",
///             },
///             TextSchema = @"      {
///         \""openapi\"": \""3.0.0\"",
///         \""info\"": {
///           \""title\"": \""Time API\"",
///           \""version\"": \""1.0.0\"",
///           \""description\"": \""A simple API to get the current time.\""
///         },
///         \""servers\"": [
///           {
///             \""url\"": \""https://example-api-endpoint.com\""
///           }
///         ],
///         \""paths\"": {
///           \""/time\"": {
///             \""get\"": {
///               \""operationId\"": \""getCurrentTime\"",
///               \""summary\"": \""Gets the current server time.\"",
///               \""responses\"": {
///                 \""200\"": {
///                   \""description\"": \""Successful response with the current time.\"",
///                   \""content\"": {
///                     \""application/json\"": {
///                       \""schema\"": {
///                         \""type\"": \""object\"",
///                         \""properties\"": {
///                           \""currentTime\"": {
///                             \""type\"": \""string\"",
///                             \""format\"": \""date-time\"",
///                             \""description\"": \""The current time in ISO 8601 format.\""
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
/// ",
///         },
///     });
///
///     var openApiToolVersion = new Gcp.Diagflow.CxToolVersion("open_api_tool_version", new()
///     {
///         Parent = tool.Id,
///         DisplayName = "Example Open API Tool Version",
///         Tool = new Gcp.Diagflow.Inputs.CxToolVersionToolArgs
///         {
///             DisplayName = "open-api-tool",
///             Description = "Example Description",
///             OpenApiSpec = new Gcp.Diagflow.Inputs.CxToolVersionToolOpenApiSpecArgs
///             {
///                 Authentication = new Gcp.Diagflow.Inputs.CxToolVersionToolOpenApiSpecAuthenticationArgs
///                 {
///                     OauthConfig = new Gcp.Diagflow.Inputs.CxToolVersionToolOpenApiSpecAuthenticationOauthConfigArgs
///                     {
///                         OauthGrantType = "CLIENT_CREDENTIAL",
///                         ClientId = "example client ID",
///                         ClientSecret = "example client secret",
///                         Scopes = new[]
///                         {
///                             "example scope",
///                         },
///                         SecretVersionForClientSecret = "projects/-/secrets/-/versions/-",
///                         TokenEndpoint = "https://example.com/oauth/token",
///                     },
///                 },
///                 TlsConfig = new Gcp.Diagflow.Inputs.CxToolVersionToolOpenApiSpecTlsConfigArgs
///                 {
///                     CaCerts = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxToolVersionToolOpenApiSpecTlsConfigCaCertArgs
///                         {
///                             DisplayName = "example ca cert name",
///                             Cert = Std.Base64encode.Invoke(new()
///                             {
///                                 Input = "example cert",
///                             }).Apply(invoke => invoke.Result),
///                         },
///                     },
///                 },
///                 ServiceDirectoryConfig = new Gcp.Diagflow.Inputs.CxToolVersionToolOpenApiSpecServiceDirectoryConfigArgs
///                 {
///                     Service = "projects/-/locations/-/namespaces/-/services/-",
///                 },
///                 TextSchema = @"      {
///         \""openapi\"": \""3.0.0\"",
///         \""info\"": {
///           \""title\"": \""Time API\"",
///           \""version\"": \""1.0.0\"",
///           \""description\"": \""A simple API to get the current time.\""
///         },
///         \""servers\"": [
///           {
///             \""url\"": \""https://example-api-endpoint.com\""
///           }
///         ],
///         \""paths\"": {
///           \""/time\"": {
///             \""get\"": {
///               \""operationId\"": \""getCurrentTime\"",
///               \""summary\"": \""Gets the current server time.\"",
///               \""responses\"": {
///                 \""200\"": {
///                   \""description\"": \""Successful response with the current time.\"",
///                   \""content\"": {
///                     \""application/json\"": {
///                       \""schema\"": {
///                         \""type\"": \""object\"",
///                         \""properties\"": {
///                           \""currentTime\"": {
///                             \""type\"": \""string\"",
///                             \""format\"": \""date-time\"",
///                             \""description\"": \""The current time in ISO 8601 format.\""
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
/// ",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent-open-api"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 			Description:         pulumi.String("Example description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "example cert",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tool, err := diagflow.NewCxTool(ctx, "tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("open-api-tool"),
/// 			Description: pulumi.String("Example Description"),
/// 			OpenApiSpec: &diagflow.CxToolOpenApiSpecArgs{
/// 				Authentication: &diagflow.CxToolOpenApiSpecAuthenticationArgs{
/// 					OauthConfig: &diagflow.CxToolOpenApiSpecAuthenticationOauthConfigArgs{
/// 						OauthGrantType: pulumi.String("CLIENT_CREDENTIAL"),
/// 						ClientId:       pulumi.String("example client ID"),
/// 						ClientSecret:   pulumi.String("example client secret"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("example scope"),
/// 						},
/// 						SecretVersionForClientSecret: pulumi.String("projects/-/secrets/-/versions/-"),
/// 						TokenEndpoint:                pulumi.String("https://example.com/oauth/token"),
/// 					},
/// 				},
/// 				TlsConfig: &diagflow.CxToolOpenApiSpecTlsConfigArgs{
/// 					CaCerts: diagflow.CxToolOpenApiSpecTlsConfigCaCertArray{
/// 						&diagflow.CxToolOpenApiSpecTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example ca cert name"),
/// 							Cert:        pulumi.String(invokeBase64encode.Result),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &diagflow.CxToolOpenApiSpecServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/-/locations/-/namespaces/-/services/-"),
/// 				},
/// 				TextSchema: pulumi.String(`      {
///         \"openapi\": \"3.0.0\",
///         \"info\": {
///           \"title\": \"Time API\",
///           \"version\": \"1.0.0\",
///           \"description\": \"A simple API to get the current time.\"
///         },
///         \"servers\": [
///           {
///             \"url\": \"https://example-api-endpoint.com\"
///           }
///         ],
///         \"paths\": {
///           \"/time\": {
///             \"get\": {
///               \"operationId\": \"getCurrentTime\",
///               \"summary\": \"Gets the current server time.\",
///               \"responses\": {
///                 \"200\": {
///                   \"description\": \"Successful response with the current time.\",
///                   \"content\": {
///                     \"application/json\": {
///                       \"schema\": {
///                         \"type\": \"object\",
///                         \"properties\": {
///                           \"currentTime\": {
///                             \"type\": \"string\",
///                             \"format\": \"date-time\",
///                             \"description\": \"The current time in ISO 8601 format.\"
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
/// `),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "example cert",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxToolVersion(ctx, "open_api_tool_version", &diagflow.CxToolVersionArgs{
/// 			Parent:      tool.ID(),
/// 			DisplayName: pulumi.String("Example Open API Tool Version"),
/// 			Tool: &diagflow.CxToolVersionToolArgs{
/// 				DisplayName: pulumi.String("open-api-tool"),
/// 				Description: pulumi.String("Example Description"),
/// 				OpenApiSpec: &diagflow.CxToolVersionToolOpenApiSpecArgs{
/// 					Authentication: &diagflow.CxToolVersionToolOpenApiSpecAuthenticationArgs{
/// 						OauthConfig: &diagflow.CxToolVersionToolOpenApiSpecAuthenticationOauthConfigArgs{
/// 							OauthGrantType: pulumi.String("CLIENT_CREDENTIAL"),
/// 							ClientId:       pulumi.String("example client ID"),
/// 							ClientSecret:   pulumi.String("example client secret"),
/// 							Scopes: pulumi.StringArray{
/// 								pulumi.String("example scope"),
/// 							},
/// 							SecretVersionForClientSecret: pulumi.String("projects/-/secrets/-/versions/-"),
/// 							TokenEndpoint:                pulumi.String("https://example.com/oauth/token"),
/// 						},
/// 					},
/// 					TlsConfig: &diagflow.CxToolVersionToolOpenApiSpecTlsConfigArgs{
/// 						CaCerts: diagflow.CxToolVersionToolOpenApiSpecTlsConfigCaCertArray{
/// 							&diagflow.CxToolVersionToolOpenApiSpecTlsConfigCaCertArgs{
/// 								DisplayName: pulumi.String("example ca cert name"),
/// 								Cert:        pulumi.String(invokeBase64encode1.Result),
/// 							},
/// 						},
/// 					},
/// 					ServiceDirectoryConfig: &diagflow.CxToolVersionToolOpenApiSpecServiceDirectoryConfigArgs{
/// 						Service: pulumi.String("projects/-/locations/-/namespaces/-/services/-"),
/// 					},
/// 					TextSchema: pulumi.String(`      {
///         \"openapi\": \"3.0.0\",
///         \"info\": {
///           \"title\": \"Time API\",
///           \"version\": \"1.0.0\",
///           \"description\": \"A simple API to get the current time.\"
///         },
///         \"servers\": [
///           {
///             \"url\": \"https://example-api-endpoint.com\"
///           }
///         ],
///         \"paths\": {
///           \"/time\": {
///             \"get\": {
///               \"operationId\": \"getCurrentTime\",
///               \"summary\": \"Gets the current server time.\",
///               \"responses\": {
///                 \"200\": {
///                   \"description\": \"Successful response with the current time.\",
///                   \"content\": {
///                     \"application/json\": {
///                       \"schema\": {
///                         \"type\": \"object\",
///                         \"properties\": {
///                           \"currentTime\": {
///                             \"type\": \"string\",
///                             \"format\": \"date-time\",
///                             \"description\": \"The current time in ISO 8601 format.\"
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
/// `),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecAuthenticationArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecAuthenticationOauthConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecTlsConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecServiceDirectoryConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
/// import com.pulumi.gcp.diagflow.CxToolVersion;
/// import com.pulumi.gcp.diagflow.CxToolVersionArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolOpenApiSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolOpenApiSpecAuthenticationArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolOpenApiSpecAuthenticationOauthConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolOpenApiSpecTlsConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolOpenApiSpecServiceDirectoryConfigArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-open-api")
///             .location("global")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .build());
///
///         var tool = new CxTool("tool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("open-api-tool")
///             .description("Example Description")
///             .openApiSpec(CxToolOpenApiSpecArgs.builder()
///                 .authentication(CxToolOpenApiSpecAuthenticationArgs.builder()
///                     .oauthConfig(CxToolOpenApiSpecAuthenticationOauthConfigArgs.builder()
///                         .oauthGrantType("CLIENT_CREDENTIAL")
///                         .clientId("example client ID")
///                         .clientSecret("example client secret")
///                         .scopes("example scope")
///                         .secretVersionForClientSecret("projects/-/secrets/-/versions/-")
///                         .tokenEndpoint("https://example.com/oauth/token")
///                         .build())
///                     .build())
///                 .tlsConfig(CxToolOpenApiSpecTlsConfigArgs.builder()
///                     .caCerts(CxToolOpenApiSpecTlsConfigCaCertArgs.builder()
///                         .displayName("example ca cert name")
///                         .cert(StdFunctions.base64encode(Base64encodeArgs.builder()
///                             .input("example cert")
///                             .build()).result())
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(CxToolOpenApiSpecServiceDirectoryConfigArgs.builder()
///                     .service("projects/-/locations/-/namespaces/-/services/-")
///                     .build())
///                 .textSchema("""
///       {
///         \"openapi\": \"3.0.0\",
///         \"info\": {
///           \"title\": \"Time API\",
///           \"version\": \"1.0.0\",
///           \"description\": \"A simple API to get the current time.\"
///         },
///         \"servers\": [
///           {
///             \"url\": \"https://example-api-endpoint.com\"
///           }
///         ],
///         \"paths\": {
///           \"/time\": {
///             \"get\": {
///               \"operationId\": \"getCurrentTime\",
///               \"summary\": \"Gets the current server time.\",
///               \"responses\": {
///                 \"200\": {
///                   \"description\": \"Successful response with the current time.\",
///                   \"content\": {
///                     \"application/json\": {
///                       \"schema\": {
///                         \"type\": \"object\",
///                         \"properties\": {
///                           \"currentTime\": {
///                             \"type\": \"string\",
///                             \"format\": \"date-time\",
///                             \"description\": \"The current time in ISO 8601 format.\"
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
///                 """)
///                 .build())
///             .build());
///
///         var openApiToolVersion = new CxToolVersion("openApiToolVersion", CxToolVersionArgs.builder()
///             .parent(tool.id())
///             .displayName("Example Open API Tool Version")
///             .tool(CxToolVersionToolArgs.builder()
///                 .displayName("open-api-tool")
///                 .description("Example Description")
///                 .openApiSpec(CxToolVersionToolOpenApiSpecArgs.builder()
///                     .authentication(CxToolVersionToolOpenApiSpecAuthenticationArgs.builder()
///                         .oauthConfig(CxToolVersionToolOpenApiSpecAuthenticationOauthConfigArgs.builder()
///                             .oauthGrantType("CLIENT_CREDENTIAL")
///                             .clientId("example client ID")
///                             .clientSecret("example client secret")
///                             .scopes("example scope")
///                             .secretVersionForClientSecret("projects/-/secrets/-/versions/-")
///                             .tokenEndpoint("https://example.com/oauth/token")
///                             .build())
///                         .build())
///                     .tlsConfig(CxToolVersionToolOpenApiSpecTlsConfigArgs.builder()
///                         .caCerts(CxToolVersionToolOpenApiSpecTlsConfigCaCertArgs.builder()
///                             .displayName("example ca cert name")
///                             .cert(StdFunctions.base64encode(Base64encodeArgs.builder()
///                                 .input("example cert")
///                                 .build()).result())
///                             .build())
///                         .build())
///                     .serviceDirectoryConfig(CxToolVersionToolOpenApiSpecServiceDirectoryConfigArgs.builder()
///                         .service("projects/-/locations/-/namespaces/-/services/-")
///                         .build())
///                     .textSchema("""
///       {
///         \"openapi\": \"3.0.0\",
///         \"info\": {
///           \"title\": \"Time API\",
///           \"version\": \"1.0.0\",
///           \"description\": \"A simple API to get the current time.\"
///         },
///         \"servers\": [
///           {
///             \"url\": \"https://example-api-endpoint.com\"
///           }
///         ],
///         \"paths\": {
///           \"/time\": {
///             \"get\": {
///               \"operationId\": \"getCurrentTime\",
///               \"summary\": \"Gets the current server time.\",
///               \"responses\": {
///                 \"200\": {
///                   \"description\": \"Successful response with the current time.\",
///                   \"content\": {
///                     \"application/json\": {
///                       \"schema\": {
///                         \"type\": \"object\",
///                         \"properties\": {
///                           \"currentTime\": {
///                             \"type\": \"string\",
///                             \"format\": \"date-time\",
///                             \"description\": \"The current time in ISO 8601 format.\"
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
///                     """)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-open-api
///       location: global
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///   tool:
///     type: gcp:diagflow:CxTool
///     properties:
///       parent: ${agent.id}
///       displayName: open-api-tool
///       description: Example Description
///       openApiSpec:
///         authentication:
///           oauthConfig:
///             oauthGrantType: CLIENT_CREDENTIAL
///             clientId: example client ID
///             clientSecret: example client secret
///             scopes:
///               - example scope
///             secretVersionForClientSecret: projects/-/secrets/-/versions/-
///             tokenEndpoint: https://example.com/oauth/token
///         tlsConfig:
///           caCerts:
///             - displayName: example ca cert name
///               cert:
///                 fn::invoke:
///                   function: std:base64encode
///                   arguments:
///                     input: example cert
///                   return: result
///         serviceDirectoryConfig:
///           service: projects/-/locations/-/namespaces/-/services/-
///         textSchema: |2
///                 {
///                   \"openapi\": \"3.0.0\",
///                   \"info\": {
///                     \"title\": \"Time API\",
///                     \"version\": \"1.0.0\",
///                     \"description\": \"A simple API to get the current time.\"
///                   },
///                   \"servers\": [
///                     {
///                       \"url\": \"https://example-api-endpoint.com\"
///                     }
///                   ],
///                   \"paths\": {
///                     \"/time\": {
///                       \"get\": {
///                         \"operationId\": \"getCurrentTime\",
///                         \"summary\": \"Gets the current server time.\",
///                         \"responses\": {
///                           \"200\": {
///                             \"description\": \"Successful response with the current time.\",
///                             \"content\": {
///                               \"application/json\": {
///                                 \"schema\": {
///                                   \"type\": \"object\",
///                                   \"properties\": {
///                                     \"currentTime\": {
///                                       \"type\": \"string\",
///                                       \"format\": \"date-time\",
///                                       \"description\": \"The current time in ISO 8601 format.\"
///                                     }
///                                   }
///                                 }
///                               }
///                             }
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///   openApiToolVersion:
///     type: gcp:diagflow:CxToolVersion
///     name: open_api_tool_version
///     properties:
///       parent: ${tool.id}
///       displayName: Example Open API Tool Version
///       tool:
///         displayName: open-api-tool
///         description: Example Description
///         openApiSpec:
///           authentication:
///             oauthConfig:
///               oauthGrantType: CLIENT_CREDENTIAL
///               clientId: example client ID
///               clientSecret: example client secret
///               scopes:
///                 - example scope
///               secretVersionForClientSecret: projects/-/secrets/-/versions/-
///               tokenEndpoint: https://example.com/oauth/token
///           tlsConfig:
///             caCerts:
///               - displayName: example ca cert name
///                 cert:
///                   fn::invoke:
///                     function: std:base64encode
///                     arguments:
///                       input: example cert
///                     return: result
///           serviceDirectoryConfig:
///             service: projects/-/locations/-/namespaces/-/services/-
///           textSchema: |2
///                   {
///                     \"openapi\": \"3.0.0\",
///                     \"info\": {
///                       \"title\": \"Time API\",
///                       \"version\": \"1.0.0\",
///                       \"description\": \"A simple API to get the current time.\"
///                     },
///                     \"servers\": [
///                       {
///                         \"url\": \"https://example-api-endpoint.com\"
///                       }
///                     ],
///                     \"paths\": {
///                       \"/time\": {
///                         \"get\": {
///                           \"operationId\": \"getCurrentTime\",
///                           \"summary\": \"Gets the current server time.\",
///                           \"responses\": {
///                             \"200\": {
///                               \"description\": \"Successful response with the current time.\",
///                               \"content\": {
///                                 \"application/json\": {
///                                   \"schema\": {
///                                     \"type\": \"object\",
///                                     \"properties\": {
///                                       \"currentTime\": {
///                                         \"type\": \"string\",
///                                         \"format\": \"date-time\",
///                                         \"description\": \"The current time in ISO 8601 format.\"
///                                       }
///                                     }
///                                   }
///                                 }
///                               }
///                             }
///                           }
///                         }
///                       }
///                     }
///                   }
/// ```
///
/// ### Dialogflowcx Tool Version Data Store
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDatastore = new gcp.discoveryengine.DataStore("my_datastore", {
///     location: "global",
///     dataStoreId: "datastore-tool-version",
///     displayName: "datastore for Tool test",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_CHAT"],
/// });
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-data-store",
///     location: "global",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
///     deleteChatEngineOnDestroy: true,
/// }, {
///     dependsOn: [myDatastore],
/// });
/// const project = gcp.organizations.getProject({});
/// const tool = new gcp.diagflow.CxTool("tool", {
///     parent: agent.id,
///     displayName: "datastore-tool",
///     description: "Example Description",
///     dataStoreSpec: {
///         dataStoreConnections: [{
///             dataStoreType: "UNSTRUCTURED",
///             dataStore: pulumi.all([project, myDatastore.dataStoreId]).apply(([project, dataStoreId]) => `projects/${project.number}/locations/global/collections/default_collection/dataStores/${dataStoreId}`),
///             documentProcessingMode: "DOCUMENTS",
///         }],
///         fallbackPrompt: {},
///     },
/// }, {
///     dependsOn: [
///         myDatastore,
///         agent,
///     ],
/// });
/// const dataStoreToolVersion = new gcp.diagflow.CxToolVersion("data_store_tool_version", {
///     parent: tool.id,
///     displayName: "Example Data Store Tool Version",
///     tool: {
///         displayName: "datastore-tool",
///         description: "Example Description",
///         dataStoreSpec: {
///             dataStoreConnections: [{
///                 dataStoreType: "UNSTRUCTURED",
///                 dataStore: pulumi.all([project, myDatastore.dataStoreId]).apply(([project, dataStoreId]) => `projects/${project.number}/locations/global/collections/default_collection/dataStores/${dataStoreId}`),
///                 documentProcessingMode: "DOCUMENTS",
///             }],
///             fallbackPrompt: {},
///         },
///     },
/// }, {
///     dependsOn: [
///         myDatastore,
///         agent,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_datastore = gcp.discoveryengine.DataStore("my_datastore",
///     location="global",
///     data_store_id="datastore-tool-version",
///     display_name="datastore for Tool test",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_CHAT"])
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-data-store",
///     location="global",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.",
///     delete_chat_engine_on_destroy=True,
///     opts = pulumi.ResourceOptions(depends_on=[my_datastore]))
/// project = gcp.organizations.get_project()
/// tool = gcp.diagflow.CxTool("tool",
///     parent=agent.id,
///     display_name="datastore-tool",
///     description="Example Description",
///     data_store_spec={
///         "data_store_connections": [{
///             "data_store_type": "UNSTRUCTURED",
///             "data_store": my_datastore.data_store_id.apply(lambda data_store_id: f"projects/{project.number}/locations/global/collections/default_collection/dataStores/{data_store_id}"),
///             "document_processing_mode": "DOCUMENTS",
///         }],
///         "fallback_prompt": {},
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             my_datastore,
///             agent,
///         ]))
/// data_store_tool_version = gcp.diagflow.CxToolVersion("data_store_tool_version",
///     parent=tool.id,
///     display_name="Example Data Store Tool Version",
///     tool={
///         "display_name": "datastore-tool",
///         "description": "Example Description",
///         "data_store_spec": {
///             "data_store_connections": [{
///                 "data_store_type": "UNSTRUCTURED",
///                 "data_store": my_datastore.data_store_id.apply(lambda data_store_id: f"projects/{project.number}/locations/global/collections/default_collection/dataStores/{data_store_id}"),
///                 "document_processing_mode": "DOCUMENTS",
///             }],
///             "fallback_prompt": {},
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             my_datastore,
///             agent,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDatastore = new Gcp.DiscoveryEngine.DataStore("my_datastore", new()
///     {
///         Location = "global",
///         DataStoreId = "datastore-tool-version",
///         DisplayName = "datastore for Tool test",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_CHAT",
///         },
///     });
///
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-data-store",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         DeleteChatEngineOnDestroy = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myDatastore,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var tool = new Gcp.Diagflow.CxTool("tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "datastore-tool",
///         Description = "Example Description",
///         DataStoreSpec = new Gcp.Diagflow.Inputs.CxToolDataStoreSpecArgs
///         {
///             DataStoreConnections = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxToolDataStoreSpecDataStoreConnectionArgs
///                 {
///                     DataStoreType = "UNSTRUCTURED",
///                     DataStore = Output.Tuple(project, myDatastore.DataStoreId).Apply(values =>
///                     {
///                         var project = values.Item1;
///                         var dataStoreId = values.Item2;
///                         return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/collections/default_collection/dataStores/{dataStoreId}";
///                     }),
///                     DocumentProcessingMode = "DOCUMENTS",
///                 },
///             },
///             FallbackPrompt = null,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myDatastore,
///             agent,
///         },
///     });
///
///     var dataStoreToolVersion = new Gcp.Diagflow.CxToolVersion("data_store_tool_version", new()
///     {
///         Parent = tool.Id,
///         DisplayName = "Example Data Store Tool Version",
///         Tool = new Gcp.Diagflow.Inputs.CxToolVersionToolArgs
///         {
///             DisplayName = "datastore-tool",
///             Description = "Example Description",
///             DataStoreSpec = new Gcp.Diagflow.Inputs.CxToolVersionToolDataStoreSpecArgs
///             {
///                 DataStoreConnections = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxToolVersionToolDataStoreSpecDataStoreConnectionArgs
///                     {
///                         DataStoreType = "UNSTRUCTURED",
///                         DataStore = Output.Tuple(project, myDatastore.DataStoreId).Apply(values =>
///                         {
///                             var project = values.Item1;
///                             var dataStoreId = values.Item2;
///                             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/collections/default_collection/dataStores/{dataStoreId}";
///                         }),
///                         DocumentProcessingMode = "DOCUMENTS",
///                     },
///                 },
///                 FallbackPrompt = null,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myDatastore,
///             agent,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myDatastore, err := discoveryengine.NewDataStore(ctx, "my_datastore", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("datastore-tool-version"),
/// 			DisplayName:      pulumi.String("datastore for Tool test"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_CHAT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:               pulumi.String("dialogflowcx-agent-data-store"),
/// 			Location:                  pulumi.String("global"),
/// 			DefaultLanguageCode:       pulumi.String("en"),
/// 			TimeZone:                  pulumi.String("America/New_York"),
/// 			Description:               pulumi.String("Example description."),
/// 			DeleteChatEngineOnDestroy: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myDatastore,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tool, err := diagflow.NewCxTool(ctx, "tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("datastore-tool"),
/// 			Description: pulumi.String("Example Description"),
/// 			DataStoreSpec: &diagflow.CxToolDataStoreSpecArgs{
/// 				DataStoreConnections: diagflow.CxToolDataStoreSpecDataStoreConnectionArray{
/// 					&diagflow.CxToolDataStoreSpecDataStoreConnectionArgs{
/// 						DataStoreType: pulumi.String("UNSTRUCTURED"),
/// 						DataStore: myDatastore.DataStoreId.ApplyT(func(dataStoreId string) (string, error) {
/// 							return fmt.Sprintf("projects/%v/locations/global/collections/default_collection/dataStores/%v", project.Number, dataStoreId), nil
/// 						}).(pulumi.StringOutput),
/// 						DocumentProcessingMode: pulumi.String("DOCUMENTS"),
/// 					},
/// 				},
/// 				FallbackPrompt: &diagflow.CxToolDataStoreSpecFallbackPromptArgs{},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myDatastore,
/// 			agent,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxToolVersion(ctx, "data_store_tool_version", &diagflow.CxToolVersionArgs{
/// 			Parent:      tool.ID(),
/// 			DisplayName: pulumi.String("Example Data Store Tool Version"),
/// 			Tool: &diagflow.CxToolVersionToolArgs{
/// 				DisplayName: pulumi.String("datastore-tool"),
/// 				Description: pulumi.String("Example Description"),
/// 				DataStoreSpec: &diagflow.CxToolVersionToolDataStoreSpecArgs{
/// 					DataStoreConnections: diagflow.CxToolVersionToolDataStoreSpecDataStoreConnectionArray{
/// 						&diagflow.CxToolVersionToolDataStoreSpecDataStoreConnectionArgs{
/// 							DataStoreType: pulumi.String("UNSTRUCTURED"),
/// 							DataStore: myDatastore.DataStoreId.ApplyT(func(dataStoreId string) (string, error) {
/// 								return fmt.Sprintf("projects/%v/locations/global/collections/default_collection/dataStores/%v", project.Number, dataStoreId), nil
/// 							}).(pulumi.StringOutput),
/// 							DocumentProcessingMode: pulumi.String("DOCUMENTS"),
/// 						},
/// 					},
/// 					FallbackPrompt: &diagflow.CxToolVersionToolDataStoreSpecFallbackPromptArgs{},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myDatastore,
/// 			agent,
/// 		}))
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolDataStoreSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolDataStoreSpecFallbackPromptArgs;
/// import com.pulumi.gcp.diagflow.CxToolVersion;
/// import com.pulumi.gcp.diagflow.CxToolVersionArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolDataStoreSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolDataStoreSpecFallbackPromptArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myDatastore = new DataStore("myDatastore", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("datastore-tool-version")
///             .displayName("datastore for Tool test")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_CHAT")
///             .build());
///
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-data-store")
///             .location("global")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .deleteChatEngineOnDestroy(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(myDatastore)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var tool = new CxTool("tool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("datastore-tool")
///             .description("Example Description")
///             .dataStoreSpec(CxToolDataStoreSpecArgs.builder()
///                 .dataStoreConnections(CxToolDataStoreSpecDataStoreConnectionArgs.builder()
///                     .dataStoreType("UNSTRUCTURED")
///                     .dataStore(myDatastore.dataStoreId().applyValue(_dataStoreId -> String.format("projects/%s/locations/global/collections/default_collection/dataStores/%s", project.number(),_dataStoreId)))
///                     .documentProcessingMode("DOCUMENTS")
///                     .build())
///                 .fallbackPrompt(CxToolDataStoreSpecFallbackPromptArgs.builder()
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     myDatastore,
///                     agent)
///                 .build());
///
///         var dataStoreToolVersion = new CxToolVersion("dataStoreToolVersion", CxToolVersionArgs.builder()
///             .parent(tool.id())
///             .displayName("Example Data Store Tool Version")
///             .tool(CxToolVersionToolArgs.builder()
///                 .displayName("datastore-tool")
///                 .description("Example Description")
///                 .dataStoreSpec(CxToolVersionToolDataStoreSpecArgs.builder()
///                     .dataStoreConnections(CxToolVersionToolDataStoreSpecDataStoreConnectionArgs.builder()
///                         .dataStoreType("UNSTRUCTURED")
///                         .dataStore(myDatastore.dataStoreId().applyValue(_dataStoreId -> String.format("projects/%s/locations/global/collections/default_collection/dataStores/%s", project.number(),_dataStoreId)))
///                         .documentProcessingMode("DOCUMENTS")
///                         .build())
///                     .fallbackPrompt(CxToolVersionToolDataStoreSpecFallbackPromptArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     myDatastore,
///                     agent)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-data-store
///       location: global
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///       deleteChatEngineOnDestroy: true
///     options:
///       dependsOn:
///         - ${myDatastore}
///   tool:
///     type: gcp:diagflow:CxTool
///     properties:
///       parent: ${agent.id}
///       displayName: datastore-tool
///       description: Example Description
///       dataStoreSpec:
///         dataStoreConnections:
///           - dataStoreType: UNSTRUCTURED
///             dataStore: projects/${project.number}/locations/global/collections/default_collection/dataStores/${myDatastore.dataStoreId}
///             documentProcessingMode: DOCUMENTS
///         fallbackPrompt: {}
///     options:
///       dependsOn:
///         - ${myDatastore}
///         - ${agent}
///   myDatastore:
///     type: gcp:discoveryengine:DataStore
///     name: my_datastore
///     properties:
///       location: global
///       dataStoreId: datastore-tool-version
///       displayName: datastore for Tool test
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_CHAT
///   dataStoreToolVersion:
///     type: gcp:diagflow:CxToolVersion
///     name: data_store_tool_version
///     properties:
///       parent: ${tool.id}
///       displayName: Example Data Store Tool Version
///       tool:
///         displayName: datastore-tool
///         description: Example Description
///         dataStoreSpec:
///           dataStoreConnections:
///             - dataStoreType: UNSTRUCTURED
///               dataStore: projects/${project.number}/locations/global/collections/default_collection/dataStores/${myDatastore.dataStoreId}
///               documentProcessingMode: DOCUMENTS
///           fallbackPrompt: {}
///     options:
///       dependsOn:
///         - ${myDatastore}
///         - ${agent}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Dialogflowcx Tool Version Function
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-fucntion",
///     location: "global",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
/// });
/// const tool = new gcp.diagflow.CxTool("tool", {
///     parent: agent.id,
///     displayName: "function-tool",
///     description: "Example Description",
///     functionSpec: {
///         inputSchema: `      {
///         \\"type\\": \\"object\\",
///         \\"properties\\": {
///           \\"message_to_echo\\": {
///             \\"type\\": \\"string\\",
///             \\"description\\": \\"The message that should be echoed back.\\"
///           }
///         },
///         \\"required\\": [
///           \\"message_to_echo\\"
///         ]
///       }
/// `,
///         outputSchema: `      {
///         \\"type\\": \\"object\\",
///         \\"properties\\": {
///           \\"echoed_message\\": {
///             \\"type\\": \\"string\\",
///             \\"description\\": \\"The message that is echoed back.\\"
///           }
///         }
///       }
/// `,
///     },
/// });
/// const functionToolVersion = new gcp.diagflow.CxToolVersion("function_tool_version", {
///     parent: tool.id,
///     displayName: "Example Function Tool Version",
///     tool: {
///         displayName: "function-tool",
///         description: "Example Description",
///         functionSpec: {
///             inputSchema: `        {
///           \\"type\\": \\"object\\",
///           \\"properties\\": {
///             \\"message_to_echo\\": {
///               \\"type\\": \\"string\\",
///               \\"description\\": \\"The message that should be echoed back.\\"
///             }
///           },
///           \\"required\\": [
///             \\"message_to_echo\\"
///           ]
///         }
/// `,
///             outputSchema: `        {
///           \\"type\\": \\"object\\",
///           \\"properties\\": {
///             \\"echoed_message\\": {
///               \\"type\\": \\"string\\",
///               \\"description\\": \\"The message that is echoed back.\\"
///             }
///           }
///         }
/// `,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-fucntion",
///     location="global",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.")
/// tool = gcp.diagflow.CxTool("tool",
///     parent=agent.id,
///     display_name="function-tool",
///     description="Example Description",
///     function_spec={
///         "input_schema": """      {
///         \"type\": \"object\",
///         \"properties\": {
///           \"message_to_echo\": {
///             \"type\": \"string\",
///             \"description\": \"The message that should be echoed back.\"
///           }
///         },
///         \"required\": [
///           \"message_to_echo\"
///         ]
///       }
/// """,
///         "output_schema": """      {
///         \"type\": \"object\",
///         \"properties\": {
///           \"echoed_message\": {
///             \"type\": \"string\",
///             \"description\": \"The message that is echoed back.\"
///           }
///         }
///       }
/// """,
///     })
/// function_tool_version = gcp.diagflow.CxToolVersion("function_tool_version",
///     parent=tool.id,
///     display_name="Example Function Tool Version",
///     tool={
///         "display_name": "function-tool",
///         "description": "Example Description",
///         "function_spec": {
///             "input_schema": """        {
///           \"type\": \"object\",
///           \"properties\": {
///             \"message_to_echo\": {
///               \"type\": \"string\",
///               \"description\": \"The message that should be echoed back.\"
///             }
///           },
///           \"required\": [
///             \"message_to_echo\"
///           ]
///         }
/// """,
///             "output_schema": """        {
///           \"type\": \"object\",
///           \"properties\": {
///             \"echoed_message\": {
///               \"type\": \"string\",
///               \"description\": \"The message that is echoed back.\"
///             }
///           }
///         }
/// """,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-fucntion",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///     });
///
///     var tool = new Gcp.Diagflow.CxTool("tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "function-tool",
///         Description = "Example Description",
///         FunctionSpec = new Gcp.Diagflow.Inputs.CxToolFunctionSpecArgs
///         {
///             InputSchema = @"      {
///         \""type\"": \""object\"",
///         \""properties\"": {
///           \""message_to_echo\"": {
///             \""type\"": \""string\"",
///             \""description\"": \""The message that should be echoed back.\""
///           }
///         },
///         \""required\"": [
///           \""message_to_echo\""
///         ]
///       }
/// ",
///             OutputSchema = @"      {
///         \""type\"": \""object\"",
///         \""properties\"": {
///           \""echoed_message\"": {
///             \""type\"": \""string\"",
///             \""description\"": \""The message that is echoed back.\""
///           }
///         }
///       }
/// ",
///         },
///     });
///
///     var functionToolVersion = new Gcp.Diagflow.CxToolVersion("function_tool_version", new()
///     {
///         Parent = tool.Id,
///         DisplayName = "Example Function Tool Version",
///         Tool = new Gcp.Diagflow.Inputs.CxToolVersionToolArgs
///         {
///             DisplayName = "function-tool",
///             Description = "Example Description",
///             FunctionSpec = new Gcp.Diagflow.Inputs.CxToolVersionToolFunctionSpecArgs
///             {
///                 InputSchema = @"        {
///           \""type\"": \""object\"",
///           \""properties\"": {
///             \""message_to_echo\"": {
///               \""type\"": \""string\"",
///               \""description\"": \""The message that should be echoed back.\""
///             }
///           },
///           \""required\"": [
///             \""message_to_echo\""
///           ]
///         }
/// ",
///                 OutputSchema = @"        {
///           \""type\"": \""object\"",
///           \""properties\"": {
///             \""echoed_message\"": {
///               \""type\"": \""string\"",
///               \""description\"": \""The message that is echoed back.\""
///             }
///           }
///         }
/// ",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent-fucntion"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 			Description:         pulumi.String("Example description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tool, err := diagflow.NewCxTool(ctx, "tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("function-tool"),
/// 			Description: pulumi.String("Example Description"),
/// 			FunctionSpec: &diagflow.CxToolFunctionSpecArgs{
/// 				InputSchema: pulumi.String(`      {
///         \"type\": \"object\",
///         \"properties\": {
///           \"message_to_echo\": {
///             \"type\": \"string\",
///             \"description\": \"The message that should be echoed back.\"
///           }
///         },
///         \"required\": [
///           \"message_to_echo\"
///         ]
///       }
/// `),
/// 				OutputSchema: pulumi.String(`      {
///         \"type\": \"object\",
///         \"properties\": {
///           \"echoed_message\": {
///             \"type\": \"string\",
///             \"description\": \"The message that is echoed back.\"
///           }
///         }
///       }
/// `),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxToolVersion(ctx, "function_tool_version", &diagflow.CxToolVersionArgs{
/// 			Parent:      tool.ID(),
/// 			DisplayName: pulumi.String("Example Function Tool Version"),
/// 			Tool: &diagflow.CxToolVersionToolArgs{
/// 				DisplayName: pulumi.String("function-tool"),
/// 				Description: pulumi.String("Example Description"),
/// 				FunctionSpec: &diagflow.CxToolVersionToolFunctionSpecArgs{
/// 					InputSchema: pulumi.String(`        {
///           \"type\": \"object\",
///           \"properties\": {
///             \"message_to_echo\": {
///               \"type\": \"string\",
///               \"description\": \"The message that should be echoed back.\"
///             }
///           },
///           \"required\": [
///             \"message_to_echo\"
///           ]
///         }
/// `),
/// 					OutputSchema: pulumi.String(`        {
///           \"type\": \"object\",
///           \"properties\": {
///             \"echoed_message\": {
///               \"type\": \"string\",
///               \"description\": \"The message that is echoed back.\"
///             }
///           }
///         }
/// `),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolFunctionSpecArgs;
/// import com.pulumi.gcp.diagflow.CxToolVersion;
/// import com.pulumi.gcp.diagflow.CxToolVersionArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolFunctionSpecArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-fucntion")
///             .location("global")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .build());
///
///         var tool = new CxTool("tool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("function-tool")
///             .description("Example Description")
///             .functionSpec(CxToolFunctionSpecArgs.builder()
///                 .inputSchema("""
///       {
///         \"type\": \"object\",
///         \"properties\": {
///           \"message_to_echo\": {
///             \"type\": \"string\",
///             \"description\": \"The message that should be echoed back.\"
///           }
///         },
///         \"required\": [
///           \"message_to_echo\"
///         ]
///       }
///                 """)
///                 .outputSchema("""
///       {
///         \"type\": \"object\",
///         \"properties\": {
///           \"echoed_message\": {
///             \"type\": \"string\",
///             \"description\": \"The message that is echoed back.\"
///           }
///         }
///       }
///                 """)
///                 .build())
///             .build());
///
///         var functionToolVersion = new CxToolVersion("functionToolVersion", CxToolVersionArgs.builder()
///             .parent(tool.id())
///             .displayName("Example Function Tool Version")
///             .tool(CxToolVersionToolArgs.builder()
///                 .displayName("function-tool")
///                 .description("Example Description")
///                 .functionSpec(CxToolVersionToolFunctionSpecArgs.builder()
///                     .inputSchema("""
///         {
///           \"type\": \"object\",
///           \"properties\": {
///             \"message_to_echo\": {
///               \"type\": \"string\",
///               \"description\": \"The message that should be echoed back.\"
///             }
///           },
///           \"required\": [
///             \"message_to_echo\"
///           ]
///         }
///                     """)
///                     .outputSchema("""
///         {
///           \"type\": \"object\",
///           \"properties\": {
///             \"echoed_message\": {
///               \"type\": \"string\",
///               \"description\": \"The message that is echoed back.\"
///             }
///           }
///         }
///                     """)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-fucntion
///       location: global
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///   tool:
///     type: gcp:diagflow:CxTool
///     properties:
///       parent: ${agent.id}
///       displayName: function-tool
///       description: Example Description
///       functionSpec:
///         inputSchema: |2
///                 {
///                   \"type\": \"object\",
///                   \"properties\": {
///                     \"message_to_echo\": {
///                       \"type\": \"string\",
///                       \"description\": \"The message that should be echoed back.\"
///                     }
///                   },
///                   \"required\": [
///                     \"message_to_echo\"
///                   ]
///                 }
///         outputSchema: |2
///                 {
///                   \"type\": \"object\",
///                   \"properties\": {
///                     \"echoed_message\": {
///                       \"type\": \"string\",
///                       \"description\": \"The message that is echoed back.\"
///                     }
///                   }
///                 }
///   functionToolVersion:
///     type: gcp:diagflow:CxToolVersion
///     name: function_tool_version
///     properties:
///       parent: ${tool.id}
///       displayName: Example Function Tool Version
///       tool:
///         displayName: function-tool
///         description: Example Description
///         functionSpec:
///           inputSchema: |2
///                     {
///                       \"type\": \"object\",
///                       \"properties\": {
///                         \"message_to_echo\": {
///                           \"type\": \"string\",
///                           \"description\": \"The message that should be echoed back.\"
///                         }
///                       },
///                       \"required\": [
///                         \"message_to_echo\"
///                       ]
///                     }
///           outputSchema: |2
///                     {
///                       \"type\": \"object\",
///                       \"properties\": {
///                         \"echoed_message\": {
///                           \"type\": \"string\",
///                           \"description\": \"The message that is echoed back.\"
///                         }
///                       }
///                     }
/// ```
///
/// ### Dialogflowcx Tool Version Connector
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-connector",
///     location: "us-central1",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
///     deleteChatEngineOnDestroy: true,
/// });
/// const bqDataset = new gcp.bigquery.Dataset("bq_dataset", {
///     datasetId: "example_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "us-central1",
///     deleteContentsOnDestroy: true,
/// });
/// const testProject = gcp.organizations.getProject({});
/// const integrationConnector = new gcp.integrationconnectors.Connection("integration_connector", {
///     name: "example-connection",
///     location: "us-central1",
///     connectorVersion: pulumi.interpolate`projects/${agent.project}/locations/global/providers/gcp/connectors/bigquery/versions/1`,
///     description: "tf created description",
///     configVariables: [
///         {
///             key: "dataset_id",
///             stringValue: bqDataset.datasetId,
///         },
///         {
///             key: "project_id",
///             stringValue: agent.project,
///         },
///         {
///             key: "support_native_data_type",
///             booleanValue: false,
///         },
///         {
///             key: "proxy_enabled",
///             booleanValue: false,
///         },
///     ],
///     serviceAccount: testProject.then(testProject => `${testProject.number}-compute@developer.gserviceaccount.com`),
///     authConfig: {
///         authType: "AUTH_TYPE_UNSPECIFIED",
///     },
/// });
/// const bqTable = new gcp.bigquery.Table("bq_table", {
///     deletionProtection: false,
///     datasetId: bqDataset.datasetId,
///     tableId: "example_table",
/// });
/// const connectorSaDatasetPerms = new gcp.bigquery.DatasetIamMember("connector_sa_dataset_perms", {
///     project: testProject.then(testProject => testProject.projectId),
///     datasetId: bqDataset.datasetId,
///     role: "roles/bigquery.dataEditor",
///     member: testProject.then(testProject => `serviceAccount:${testProject.number}-compute@developer.gserviceaccount.com`),
/// });
/// const tool = new gcp.diagflow.CxTool("tool", {
///     parent: agent.id,
///     displayName: "connector-tool",
///     description: "Example Description",
///     connectorSpec: {
///         name: pulumi.interpolate`projects/${agent.project}/locations/us-central1/connections/${integrationConnector.name}`,
///         actions: [
///             {
///                 connectionActionId: "ExecuteCustomQuery",
///                 inputFields: ["test1"],
///                 outputFields: ["test1"],
///             },
///             {
///                 entityOperation: {
///                     entityId: bqTable.tableId,
///                     operation: "LIST",
///                 },
///             },
///         ],
///     },
/// });
/// const connectorToolVersion = new gcp.diagflow.CxToolVersion("connector_tool_version", {
///     parent: tool.id,
///     displayName: "Example Connector Tool Version",
///     tool: {
///         displayName: "connector-tool",
///         description: "Example Description",
///         connectorSpec: {
///             name: pulumi.interpolate`projects/${agent.project}/locations/us-central1/connections/${integrationConnector.name}`,
///             actions: [
///                 {
///                     connectionActionId: "ExecuteCustomQuery",
///                     inputFields: ["test1"],
///                     outputFields: ["test1"],
///                 },
///                 {
///                     entityOperation: {
///                         entityId: bqTable.tableId,
///                         operation: "LIST",
///                     },
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-connector",
///     location="us-central1",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.",
///     delete_chat_engine_on_destroy=True)
/// bq_dataset = gcp.bigquery.Dataset("bq_dataset",
///     dataset_id="example_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="us-central1",
///     delete_contents_on_destroy=True)
/// test_project = gcp.organizations.get_project()
/// integration_connector = gcp.integrationconnectors.Connection("integration_connector",
///     name="example-connection",
///     location="us-central1",
///     connector_version=agent.project.apply(lambda project: f"projects/{project}/locations/global/providers/gcp/connectors/bigquery/versions/1"),
///     description="tf created description",
///     config_variables=[
///         {
///             "key": "dataset_id",
///             "string_value": bq_dataset.dataset_id,
///         },
///         {
///             "key": "project_id",
///             "string_value": agent.project,
///         },
///         {
///             "key": "support_native_data_type",
///             "boolean_value": False,
///         },
///         {
///             "key": "proxy_enabled",
///             "boolean_value": False,
///         },
///     ],
///     service_account=f"{test_project.number}-compute@developer.gserviceaccount.com",
///     auth_config={
///         "auth_type": "AUTH_TYPE_UNSPECIFIED",
///     })
/// bq_table = gcp.bigquery.Table("bq_table",
///     deletion_protection=False,
///     dataset_id=bq_dataset.dataset_id,
///     table_id="example_table")
/// connector_sa_dataset_perms = gcp.bigquery.DatasetIamMember("connector_sa_dataset_perms",
///     project=test_project.project_id,
///     dataset_id=bq_dataset.dataset_id,
///     role="roles/bigquery.dataEditor",
///     member=f"serviceAccount:{test_project.number}-compute@developer.gserviceaccount.com")
/// tool = gcp.diagflow.CxTool("tool",
///     parent=agent.id,
///     display_name="connector-tool",
///     description="Example Description",
///     connector_spec={
///         "name": pulumi.Output.all(
///             project=agent.project,
///             name=integration_connector.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/connections/{resolved_outputs['name']}")
/// ,
///         "actions": [
///             {
///                 "connection_action_id": "ExecuteCustomQuery",
///                 "input_fields": ["test1"],
///                 "output_fields": ["test1"],
///             },
///             {
///                 "entity_operation": {
///                     "entity_id": bq_table.table_id,
///                     "operation": "LIST",
///                 },
///             },
///         ],
///     })
/// connector_tool_version = gcp.diagflow.CxToolVersion("connector_tool_version",
///     parent=tool.id,
///     display_name="Example Connector Tool Version",
///     tool={
///         "display_name": "connector-tool",
///         "description": "Example Description",
///         "connector_spec": {
///             "name": pulumi.Output.all(
///                 project=agent.project,
///                 name=integration_connector.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/connections/{resolved_outputs['name']}")
/// ,
///             "actions": [
///                 {
///                     "connection_action_id": "ExecuteCustomQuery",
///                     "input_fields": ["test1"],
///                     "output_fields": ["test1"],
///                 },
///                 {
///                     "entity_operation": {
///                         "entity_id": bq_table.table_id,
///                         "operation": "LIST",
///                     },
///                 },
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-connector",
///         Location = "us-central1",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         DeleteChatEngineOnDestroy = true,
///     });
///
///     var bqDataset = new Gcp.BigQuery.Dataset("bq_dataset", new()
///     {
///         DatasetId = "example_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "us-central1",
///         DeleteContentsOnDestroy = true,
///     });
///
///     var testProject = Gcp.Organizations.GetProject.Invoke();
///
///     var integrationConnector = new Gcp.IntegrationConnectors.Connection("integration_connector", new()
///     {
///         Name = "example-connection",
///         Location = "us-central1",
///         ConnectorVersion = agent.Project.Apply(project => $"projects/{project}/locations/global/providers/gcp/connectors/bigquery/versions/1"),
///         Description = "tf created description",
///         ConfigVariables = new[]
///         {
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "dataset_id",
///                 StringValue = bqDataset.DatasetId,
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "project_id",
///                 StringValue = agent.Project,
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "support_native_data_type",
///                 BooleanValue = false,
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "proxy_enabled",
///                 BooleanValue = false,
///             },
///         },
///         ServiceAccount = $"{testProject.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///         AuthConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigArgs
///         {
///             AuthType = "AUTH_TYPE_UNSPECIFIED",
///         },
///     });
///
///     var bqTable = new Gcp.BigQuery.Table("bq_table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = bqDataset.DatasetId,
///         TableId = "example_table",
///     });
///
///     var connectorSaDatasetPerms = new Gcp.BigQuery.DatasetIamMember("connector_sa_dataset_perms", new()
///     {
///         Project = testProject.Apply(getProjectResult => getProjectResult.ProjectId),
///         DatasetId = bqDataset.DatasetId,
///         Role = "roles/bigquery.dataEditor",
///         Member = $"serviceAccount:{testProject.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///     });
///
///     var tool = new Gcp.Diagflow.CxTool("tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "connector-tool",
///         Description = "Example Description",
///         ConnectorSpec = new Gcp.Diagflow.Inputs.CxToolConnectorSpecArgs
///         {
///             Name = Output.Tuple(agent.Project, integrationConnector.Name).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var name = values.Item2;
///                 return $"projects/{project}/locations/us-central1/connections/{name}";
///             }),
///             Actions = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxToolConnectorSpecActionArgs
///                 {
///                     ConnectionActionId = "ExecuteCustomQuery",
///                     InputFields = new[]
///                     {
///                         "test1",
///                     },
///                     OutputFields = new[]
///                     {
///                         "test1",
///                     },
///                 },
///                 new Gcp.Diagflow.Inputs.CxToolConnectorSpecActionArgs
///                 {
///                     EntityOperation = new Gcp.Diagflow.Inputs.CxToolConnectorSpecActionEntityOperationArgs
///                     {
///                         EntityId = bqTable.TableId,
///                         Operation = "LIST",
///                     },
///                 },
///             },
///         },
///     });
///
///     var connectorToolVersion = new Gcp.Diagflow.CxToolVersion("connector_tool_version", new()
///     {
///         Parent = tool.Id,
///         DisplayName = "Example Connector Tool Version",
///         Tool = new Gcp.Diagflow.Inputs.CxToolVersionToolArgs
///         {
///             DisplayName = "connector-tool",
///             Description = "Example Description",
///             ConnectorSpec = new Gcp.Diagflow.Inputs.CxToolVersionToolConnectorSpecArgs
///             {
///                 Name = Output.Tuple(agent.Project, integrationConnector.Name).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var name = values.Item2;
///                     return $"projects/{project}/locations/us-central1/connections/{name}";
///                 }),
///                 Actions = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxToolVersionToolConnectorSpecActionArgs
///                     {
///                         ConnectionActionId = "ExecuteCustomQuery",
///                         InputFields = new[]
///                         {
///                             "test1",
///                         },
///                         OutputFields = new[]
///                         {
///                             "test1",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxToolVersionToolConnectorSpecActionArgs
///                     {
///                         EntityOperation = new Gcp.Diagflow.Inputs.CxToolVersionToolConnectorSpecActionEntityOperationArgs
///                         {
///                             EntityId = bqTable.TableId,
///                             Operation = "LIST",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/integrationconnectors"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:               pulumi.String("dialogflowcx-agent-connector"),
/// 			Location:                  pulumi.String("us-central1"),
/// 			DefaultLanguageCode:       pulumi.String("en"),
/// 			TimeZone:                  pulumi.String("America/New_York"),
/// 			Description:               pulumi.String("Example description."),
/// 			DeleteChatEngineOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqDataset, err := bigquery.NewDataset(ctx, "bq_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:               pulumi.String("example_dataset"),
/// 			FriendlyName:            pulumi.String("test"),
/// 			Description:             pulumi.String("This is a test description"),
/// 			Location:                pulumi.String("us-central1"),
/// 			DeleteContentsOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		integrationConnector, err := integrationconnectors.NewConnection(ctx, "integration_connector", &integrationconnectors.ConnectionArgs{
/// 			Name:     pulumi.String("example-connection"),
/// 			Location: pulumi.String("us-central1"),
/// 			ConnectorVersion: agent.Project.ApplyT(func(project string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/locations/global/providers/gcp/connectors/bigquery/versions/1", project), nil
/// 			}).(pulumi.StringOutput),
/// 			Description: pulumi.String("tf created description"),
/// 			ConfigVariables: integrationconnectors.ConnectionConfigVariableArray{
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:         pulumi.String("dataset_id"),
/// 					StringValue: bqDataset.DatasetId,
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:         pulumi.String("project_id"),
/// 					StringValue: agent.Project,
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:          pulumi.String("support_native_data_type"),
/// 					BooleanValue: pulumi.Bool(false),
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:          pulumi.String("proxy_enabled"),
/// 					BooleanValue: pulumi.Bool(false),
/// 				},
/// 			},
/// 			ServiceAccount: pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", testProject.Number),
/// 			AuthConfig: &integrationconnectors.ConnectionAuthConfigArgs{
/// 				AuthType: pulumi.String("AUTH_TYPE_UNSPECIFIED"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqTable, err := bigquery.NewTable(ctx, "bq_table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          bqDataset.DatasetId,
/// 			TableId:            pulumi.String("example_table"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamMember(ctx, "connector_sa_dataset_perms", &bigquery.DatasetIamMemberArgs{
/// 			Project:   pulumi.String(testProject.ProjectId),
/// 			DatasetId: bqDataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataEditor"),
/// 			Member:    pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", testProject.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tool, err := diagflow.NewCxTool(ctx, "tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("connector-tool"),
/// 			Description: pulumi.String("Example Description"),
/// 			ConnectorSpec: &diagflow.CxToolConnectorSpecArgs{
/// 				Name: pulumi.All(agent.Project, integrationConnector.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					name := _args[1].(string)
/// 					return fmt.Sprintf("projects/%v/locations/us-central1/connections/%v", project, name), nil
/// 				}).(pulumi.StringOutput),
/// 				Actions: diagflow.CxToolConnectorSpecActionArray{
/// 					&diagflow.CxToolConnectorSpecActionArgs{
/// 						ConnectionActionId: pulumi.String("ExecuteCustomQuery"),
/// 						InputFields: pulumi.StringArray{
/// 							pulumi.String("test1"),
/// 						},
/// 						OutputFields: pulumi.StringArray{
/// 							pulumi.String("test1"),
/// 						},
/// 					},
/// 					&diagflow.CxToolConnectorSpecActionArgs{
/// 						EntityOperation: &diagflow.CxToolConnectorSpecActionEntityOperationArgs{
/// 							EntityId:  bqTable.TableId,
/// 							Operation: pulumi.String("LIST"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxToolVersion(ctx, "connector_tool_version", &diagflow.CxToolVersionArgs{
/// 			Parent:      tool.ID(),
/// 			DisplayName: pulumi.String("Example Connector Tool Version"),
/// 			Tool: &diagflow.CxToolVersionToolArgs{
/// 				DisplayName: pulumi.String("connector-tool"),
/// 				Description: pulumi.String("Example Description"),
/// 				ConnectorSpec: &diagflow.CxToolVersionToolConnectorSpecArgs{
/// 					Name: pulumi.All(agent.Project, integrationConnector.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("projects/%v/locations/us-central1/connections/%v", project, name), nil
/// 					}).(pulumi.StringOutput),
/// 					Actions: diagflow.CxToolVersionToolConnectorSpecActionArray{
/// 						&diagflow.CxToolVersionToolConnectorSpecActionArgs{
/// 							ConnectionActionId: pulumi.String("ExecuteCustomQuery"),
/// 							InputFields: pulumi.StringArray{
/// 								pulumi.String("test1"),
/// 							},
/// 							OutputFields: pulumi.StringArray{
/// 								pulumi.String("test1"),
/// 							},
/// 						},
/// 						&diagflow.CxToolVersionToolConnectorSpecActionArgs{
/// 							EntityOperation: &diagflow.CxToolVersionToolConnectorSpecActionEntityOperationArgs{
/// 								EntityId:  bqTable.TableId,
/// 								Operation: pulumi.String("LIST"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.integrationconnectors.Connection;
/// import com.pulumi.gcp.integrationconnectors.ConnectionArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionConfigVariableArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolConnectorSpecArgs;
/// import com.pulumi.gcp.diagflow.CxToolVersion;
/// import com.pulumi.gcp.diagflow.CxToolVersionArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolVersionToolConnectorSpecArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-connector")
///             .location("us-central1")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .deleteChatEngineOnDestroy(true)
///             .build());
///
///         var bqDataset = new Dataset("bqDataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("us-central1")
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var integrationConnector = new Connection("integrationConnector", ConnectionArgs.builder()
///             .name("example-connection")
///             .location("us-central1")
///             .connectorVersion(agent.project().applyValue(_project -> String.format("projects/%s/locations/global/providers/gcp/connectors/bigquery/versions/1", _project)))
///             .description("tf created description")
///             .configVariables(
///                 ConnectionConfigVariableArgs.builder()
///                     .key("dataset_id")
///                     .stringValue(bqDataset.datasetId())
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("project_id")
///                     .stringValue(agent.project())
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("support_native_data_type")
///                     .booleanValue(false)
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("proxy_enabled")
///                     .booleanValue(false)
///                     .build())
///             .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", testProject.number()))
///             .authConfig(ConnectionAuthConfigArgs.builder()
///                 .authType("AUTH_TYPE_UNSPECIFIED")
///                 .build())
///             .build());
///
///         var bqTable = new Table("bqTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(bqDataset.datasetId())
///             .tableId("example_table")
///             .build());
///
///         var connectorSaDatasetPerms = new DatasetIamMember("connectorSaDatasetPerms", DatasetIamMemberArgs.builder()
///             .project(testProject.projectId())
///             .datasetId(bqDataset.datasetId())
///             .role("roles/bigquery.dataEditor")
///             .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", testProject.number()))
///             .build());
///
///         var tool = new CxTool("tool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("connector-tool")
///             .description("Example Description")
///             .connectorSpec(CxToolConnectorSpecArgs.builder()
///                 .name(Output.tuple(agent.project(), integrationConnector.name()).applyValue(values -> {
///                     var project = values.t1;
///                     var name = values.t2;
///                     return String.format("projects/%s/locations/us-central1/connections/%s", project,name);
///                 }))
///                 .actions(
///                     CxToolConnectorSpecActionArgs.builder()
///                         .connectionActionId("ExecuteCustomQuery")
///                         .inputFields("test1")
///                         .outputFields("test1")
///                         .build(),
///                     CxToolConnectorSpecActionArgs.builder()
///                         .entityOperation(CxToolConnectorSpecActionEntityOperationArgs.builder()
///                             .entityId(bqTable.tableId())
///                             .operation("LIST")
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///         var connectorToolVersion = new CxToolVersion("connectorToolVersion", CxToolVersionArgs.builder()
///             .parent(tool.id())
///             .displayName("Example Connector Tool Version")
///             .tool(CxToolVersionToolArgs.builder()
///                 .displayName("connector-tool")
///                 .description("Example Description")
///                 .connectorSpec(CxToolVersionToolConnectorSpecArgs.builder()
///                     .name(Output.tuple(agent.project(), integrationConnector.name()).applyValue(values -> {
///                         var project = values.t1;
///                         var name = values.t2;
///                         return String.format("projects/%s/locations/us-central1/connections/%s", project,name);
///                     }))
///                     .actions(
///                         CxToolVersionToolConnectorSpecActionArgs.builder()
///                             .connectionActionId("ExecuteCustomQuery")
///                             .inputFields("test1")
///                             .outputFields("test1")
///                             .build(),
///                         CxToolVersionToolConnectorSpecActionArgs.builder()
///                             .entityOperation(CxToolVersionToolConnectorSpecActionEntityOperationArgs.builder()
///                                 .entityId(bqTable.tableId())
///                                 .operation("LIST")
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-connector
///       location: us-central1
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///       deleteChatEngineOnDestroy: true
///   integrationConnector:
///     type: gcp:integrationconnectors:Connection
///     name: integration_connector
///     properties:
///       name: example-connection
///       location: us-central1
///       connectorVersion: projects/${agent.project}/locations/global/providers/gcp/connectors/bigquery/versions/1
///       description: tf created description
///       configVariables:
///         - key: dataset_id
///           stringValue: ${bqDataset.datasetId}
///         - key: project_id
///           stringValue: ${agent.project}
///         - key: support_native_data_type
///           booleanValue: false
///         - key: proxy_enabled
///           booleanValue: false
///       serviceAccount: ${testProject.number}-compute@developer.gserviceaccount.com
///       authConfig:
///         authType: AUTH_TYPE_UNSPECIFIED
///   bqDataset:
///     type: gcp:bigquery:Dataset
///     name: bq_dataset
///     properties:
///       datasetId: example_dataset
///       friendlyName: test
///       description: This is a test description
///       location: us-central1
///       deleteContentsOnDestroy: true
///   bqTable:
///     type: gcp:bigquery:Table
///     name: bq_table
///     properties:
///       deletionProtection: false
///       datasetId: ${bqDataset.datasetId}
///       tableId: example_table
///   connectorSaDatasetPerms:
///     type: gcp:bigquery:DatasetIamMember
///     name: connector_sa_dataset_perms
///     properties:
///       project: ${testProject.projectId}
///       datasetId: ${bqDataset.datasetId}
///       role: roles/bigquery.dataEditor
///       member: serviceAccount:${testProject.number}-compute@developer.gserviceaccount.com
///   tool:
///     type: gcp:diagflow:CxTool
///     properties:
///       parent: ${agent.id}
///       displayName: connector-tool
///       description: Example Description
///       connectorSpec:
///         name: projects/${agent.project}/locations/us-central1/connections/${integrationConnector.name}
///         actions:
///           - connectionActionId: ExecuteCustomQuery
///             inputFields:
///               - test1
///             outputFields:
///               - test1
///           - entityOperation:
///               entityId: ${bqTable.tableId}
///               operation: LIST
///   connectorToolVersion:
///     type: gcp:diagflow:CxToolVersion
///     name: connector_tool_version
///     properties:
///       parent: ${tool.id}
///       displayName: Example Connector Tool Version
///       tool:
///         displayName: connector-tool
///         description: Example Description
///         connectorSpec:
///           name: projects/${agent.project}/locations/us-central1/connections/${integrationConnector.name}
///           actions:
///             - connectionActionId: ExecuteCustomQuery
///               inputFields:
///                 - test1
///               outputFields:
///                 - test1
///             - entityOperation:
///                 entityId: ${bqTable.tableId}
///                 operation: LIST
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ToolVersion can be imported using any of these accepted formats:
///
/// * `{{parent}}/versions/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, ToolVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxToolVersion:CxToolVersion default {{parent}}/versions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxToolVersion:CxToolVersion default {{parent}}/{{name}}
/// ```
class CxToolVersion extends pulumi.CustomResource {
  /// Last time the tool version was created or modified.
  /// Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> createTime;

  /// The display name of the tool version.
  late final pulumi.Output<String> displayName;

  /// The unique identifier of the tool version.
  /// Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/tools/<ToolID>/versions/<VersionID>.
  late final pulumi.Output<String> name;

  /// The tool to create a Version for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  late final pulumi.Output<String> parent;

  /// Snapshot of the tool to be associated with this version.
  /// Structure is documented below.
  late final pulumi.Output<CxToolVersionTool> tool;

  /// Last time the tool version was created or modified.
  /// Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CxToolVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxToolVersion]. {@macro pulumi_diagflow_cx_tool_version_cx_tool_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxToolVersion(
    String name, {
    CxToolVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxToolVersion:CxToolVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.tool = registerOutput<CxToolVersionTool>('tool');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
