import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_physical_connection_requirements.dart';
import 'connection_state.dart';

/// Provides a Glue Connection resource.
///
/// ## Example Usage
///
/// ### Non-VPC Connection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Connection("example", {
///     name: "example",
///     connectionProperties: {
///         JDBC_CONNECTION_URL: "jdbc:mysql://example.com/exampledatabase",
///         PASSWORD: "examplepassword",
///         USERNAME: "exampleusername",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Connection("example",
///     name="example",
///     connection_properties={
///         "JDBC_CONNECTION_URL": "jdbc:mysql://example.com/exampledatabase",
///         "PASSWORD": "examplepassword",
///         "USERNAME": "exampleusername",
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
///     var example = new Aws.Glue.Connection("example", new()
///     {
///         Name = "example",
///         ConnectionProperties =
///         {
///             { "JDBC_CONNECTION_URL", "jdbc:mysql://example.com/exampledatabase" },
///             { "PASSWORD", "examplepassword" },
///             { "USERNAME", "exampleusername" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewConnection(ctx, "example", &glue.ConnectionArgs{
/// 			Name: pulumi.String("example"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"JDBC_CONNECTION_URL": pulumi.String("jdbc:mysql://example.com/exampledatabase"),
/// 				"PASSWORD":            pulumi.String("examplepassword"),
/// 				"USERNAME":            pulumi.String("exampleusername"),
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
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .name("example")
///             .connectionProperties(Map.ofEntries(
///                 Map.entry("JDBC_CONNECTION_URL", "jdbc:mysql://example.com/exampledatabase"),
///                 Map.entry("PASSWORD", "examplepassword"),
///                 Map.entry("USERNAME", "exampleusername")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Connection
///     properties:
///       name: example
///       connectionProperties:
///         JDBC_CONNECTION_URL: jdbc:mysql://example.com/exampledatabase
///         PASSWORD: examplepassword
///         USERNAME: exampleusername
/// ```
///
///
/// ### Non-VPC Connection with secret manager reference
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.secretsmanager.getSecret({
///     name: "example-secret",
/// });
/// const exampleConnection = new aws.glue.Connection("example", {
///     name: "example",
///     connectionProperties: {
///         JDBC_CONNECTION_URL: "jdbc:mysql://example.com/exampledatabase",
///         SECRET_ID: example.then(example => example.name),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.get_secret(name="example-secret")
/// example_connection = aws.glue.Connection("example",
///     name="example",
///     connection_properties={
///         "JDBC_CONNECTION_URL": "jdbc:mysql://example.com/exampledatabase",
///         "SECRET_ID": example.name,
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
///     var example = Aws.SecretsManager.GetSecret.Invoke(new()
///     {
///         Name = "example-secret",
///     });
///
///     var exampleConnection = new Aws.Glue.Connection("example", new()
///     {
///         Name = "example",
///         ConnectionProperties =
///         {
///             { "JDBC_CONNECTION_URL", "jdbc:mysql://example.com/exampledatabase" },
///             { "SECRET_ID", example.Apply(getSecretResult => getSecretResult.Name) },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.LookupSecret(ctx, &secretsmanager.LookupSecretArgs{
/// 			Name: pulumi.StringRef("example-secret"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewConnection(ctx, "example", &glue.ConnectionArgs{
/// 			Name: pulumi.String("example"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"JDBC_CONNECTION_URL": pulumi.String("jdbc:mysql://example.com/exampledatabase"),
/// 				"SECRET_ID":           pulumi.String(example.Name),
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
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretArgs;
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         final var example = SecretsmanagerFunctions.getSecret(GetSecretArgs.builder()
///             .name("example-secret")
///             .build());
///
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("example")
///             .connectionProperties(Map.ofEntries(
///                 Map.entry("JDBC_CONNECTION_URL", "jdbc:mysql://example.com/exampledatabase"),
///                 Map.entry("SECRET_ID", example.name())
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleConnection:
///     type: aws:glue:Connection
///     name: example
///     properties:
///       name: example
///       connectionProperties:
///         JDBC_CONNECTION_URL: jdbc:mysql://example.com/exampledatabase
///         SECRET_ID: ${example.name}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:secretsmanager:getSecret
///       arguments:
///         name: example-secret
/// ```
///
///
/// ### VPC Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/populate-add-connection.html#connection-JDBC-VPC).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Connection("example", {
///     name: "example",
///     connectionProperties: {
///         JDBC_CONNECTION_URL: `jdbc:mysql://${exampleAwsRdsCluster.endpoint}/exampledatabase`,
///         PASSWORD: "examplepassword",
///         USERNAME: "exampleusername",
///     },
///     physicalConnectionRequirements: {
///         availabilityZone: exampleAwsSubnet.availabilityZone,
///         securityGroupIdLists: [exampleAwsSecurityGroup.id],
///         subnetId: exampleAwsSubnet.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Connection("example",
///     name="example",
///     connection_properties={
///         "JDBC_CONNECTION_URL": f"jdbc:mysql://{example_aws_rds_cluster['endpoint']}/exampledatabase",
///         "PASSWORD": "examplepassword",
///         "USERNAME": "exampleusername",
///     },
///     physical_connection_requirements={
///         "availability_zone": example_aws_subnet["availabilityZone"],
///         "security_group_id_lists": [example_aws_security_group["id"]],
///         "subnet_id": example_aws_subnet["id"],
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
///     var example = new Aws.Glue.Connection("example", new()
///     {
///         Name = "example",
///         ConnectionProperties =
///         {
///             { "JDBC_CONNECTION_URL", $"jdbc:mysql://{exampleAwsRdsCluster.Endpoint}/exampledatabase" },
///             { "PASSWORD", "examplepassword" },
///             { "USERNAME", "exampleusername" },
///         },
///         PhysicalConnectionRequirements = new Aws.Glue.Inputs.ConnectionPhysicalConnectionRequirementsArgs
///         {
///             AvailabilityZone = exampleAwsSubnet.AvailabilityZone,
///             SecurityGroupIdLists = new[]
///             {
///                 exampleAwsSecurityGroup.Id,
///             },
///             SubnetId = exampleAwsSubnet.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewConnection(ctx, "example", &glue.ConnectionArgs{
/// 			Name: pulumi.String("example"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"JDBC_CONNECTION_URL": pulumi.Sprintf("jdbc:mysql://%v/exampledatabase", exampleAwsRdsCluster.Endpoint),
/// 				"PASSWORD":            pulumi.String("examplepassword"),
/// 				"USERNAME":            pulumi.String("exampleusername"),
/// 			},
/// 			PhysicalConnectionRequirements: &glue.ConnectionPhysicalConnectionRequirementsArgs{
/// 				AvailabilityZone: pulumi.Any(exampleAwsSubnet.AvailabilityZone),
/// 				SecurityGroupIdLists: pulumi.StringArray{
/// 					exampleAwsSecurityGroup.Id,
/// 				},
/// 				SubnetId: pulumi.Any(exampleAwsSubnet.Id),
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
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
/// import com.pulumi.aws.glue.inputs.ConnectionPhysicalConnectionRequirementsArgs;
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .name("example")
///             .connectionProperties(Map.ofEntries(
///                 Map.entry("JDBC_CONNECTION_URL", String.format("jdbc:mysql://%s/exampledatabase", exampleAwsRdsCluster.endpoint())),
///                 Map.entry("PASSWORD", "examplepassword"),
///                 Map.entry("USERNAME", "exampleusername")
///             ))
///             .physicalConnectionRequirements(ConnectionPhysicalConnectionRequirementsArgs.builder()
///                 .availabilityZone(exampleAwsSubnet.availabilityZone())
///                 .securityGroupIdLists(exampleAwsSecurityGroup.id())
///                 .subnetId(exampleAwsSubnet.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Connection
///     properties:
///       name: example
///       connectionProperties:
///         JDBC_CONNECTION_URL: jdbc:mysql://${exampleAwsRdsCluster.endpoint}/exampledatabase
///         PASSWORD: examplepassword
///         USERNAME: exampleusername
///       physicalConnectionRequirements:
///         availabilityZone: ${exampleAwsSubnet.availabilityZone}
///         securityGroupIdLists:
///           - ${exampleAwsSecurityGroup.id}
///         subnetId: ${exampleAwsSubnet.id}
/// ```
///
///
/// ### Connection using a custom connector
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Define the custom connector using the connection_type of `CUSTOM` with the match_criteria of `template_connection`
/// // Example here being a snowflake jdbc connector with a secret having user and password as keys
/// const example = aws.secretsmanager.getSecret({
///     name: "example-secret",
/// });
/// const example1 = new aws.glue.Connection("example1", {
///     name: "example1",
///     connectionType: "CUSTOM",
///     connectionProperties: {
///         CONNECTOR_CLASS_NAME: "net.snowflake.client.jdbc.SnowflakeDriver",
///         CONNECTION_TYPE: "Jdbc",
///         CONNECTOR_URL: "s3://example/snowflake-jdbc.jar",
///         JDBC_CONNECTION_URL: "[[\"default=jdbc:snowflake://example.com/?user=${user}&password=${password}\"],\",\"]",
///     },
///     matchCriterias: ["template-connection"],
/// });
/// // Reference the connector using match_criteria with the connector created above.
/// const example2 = new aws.glue.Connection("example2", {
///     name: "example2",
///     connectionType: "CUSTOM",
///     connectionProperties: {
///         CONNECTOR_CLASS_NAME: "net.snowflake.client.jdbc.SnowflakeDriver",
///         CONNECTION_TYPE: "Jdbc",
///         CONNECTOR_URL: "s3://example/snowflake-jdbc.jar",
///         JDBC_CONNECTION_URL: "jdbc:snowflake://example.com/?user=${user}&password=${password}",
///         SECRET_ID: example.then(example => example.name),
///     },
///     matchCriterias: [
///         "Connection",
///         example1.name,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Define the custom connector using the connection_type of `CUSTOM` with the match_criteria of `template_connection`
/// # Example here being a snowflake jdbc connector with a secret having user and password as keys
/// example = aws.secretsmanager.get_secret(name="example-secret")
/// example1 = aws.glue.Connection("example1",
///     name="example1",
///     connection_type="CUSTOM",
///     connection_properties={
///         "CONNECTOR_CLASS_NAME": "net.snowflake.client.jdbc.SnowflakeDriver",
///         "CONNECTION_TYPE": "Jdbc",
///         "CONNECTOR_URL": "s3://example/snowflake-jdbc.jar",
///         "JDBC_CONNECTION_URL": "[[\"default=jdbc:snowflake://example.com/?user=${user}&password=${password}\"],\",\"]",
///     },
///     match_criterias=["template-connection"])
/// # Reference the connector using match_criteria with the connector created above.
/// example2 = aws.glue.Connection("example2",
///     name="example2",
///     connection_type="CUSTOM",
///     connection_properties={
///         "CONNECTOR_CLASS_NAME": "net.snowflake.client.jdbc.SnowflakeDriver",
///         "CONNECTION_TYPE": "Jdbc",
///         "CONNECTOR_URL": "s3://example/snowflake-jdbc.jar",
///         "JDBC_CONNECTION_URL": "jdbc:snowflake://example.com/?user=${user}&password=${password}",
///         "SECRET_ID": example.name,
///     },
///     match_criterias=[
///         "Connection",
///         example1.name,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Define the custom connector using the connection_type of `CUSTOM` with the match_criteria of `template_connection`
///     // Example here being a snowflake jdbc connector with a secret having user and password as keys
///     var example = Aws.SecretsManager.GetSecret.Invoke(new()
///     {
///         Name = "example-secret",
///     });
///
///     var example1 = new Aws.Glue.Connection("example1", new()
///     {
///         Name = "example1",
///         ConnectionType = "CUSTOM",
///         ConnectionProperties =
///         {
///             { "CONNECTOR_CLASS_NAME", "net.snowflake.client.jdbc.SnowflakeDriver" },
///             { "CONNECTION_TYPE", "Jdbc" },
///             { "CONNECTOR_URL", "s3://example/snowflake-jdbc.jar" },
///             { "JDBC_CONNECTION_URL", "[[\"default=jdbc:snowflake://example.com/?user=${user}&password=${password}\"],\",\"]" },
///         },
///         MatchCriterias = new[]
///         {
///             "template-connection",
///         },
///     });
///
///     // Reference the connector using match_criteria with the connector created above.
///     var example2 = new Aws.Glue.Connection("example2", new()
///     {
///         Name = "example2",
///         ConnectionType = "CUSTOM",
///         ConnectionProperties =
///         {
///             { "CONNECTOR_CLASS_NAME", "net.snowflake.client.jdbc.SnowflakeDriver" },
///             { "CONNECTION_TYPE", "Jdbc" },
///             { "CONNECTOR_URL", "s3://example/snowflake-jdbc.jar" },
///             { "JDBC_CONNECTION_URL", "jdbc:snowflake://example.com/?user=${user}&password=${password}" },
///             { "SECRET_ID", example.Apply(getSecretResult => getSecretResult.Name) },
///         },
///         MatchCriterias = new[]
///         {
///             "Connection",
///             example1.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Define the custom connector using the connection_type of `CUSTOM` with the match_criteria of `template_connection`
/// 		// Example here being a snowflake jdbc connector with a secret having user and password as keys
/// 		example, err := secretsmanager.LookupSecret(ctx, &secretsmanager.LookupSecretArgs{
/// 			Name: pulumi.StringRef("example-secret"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example1, err := glue.NewConnection(ctx, "example1", &glue.ConnectionArgs{
/// 			Name:           pulumi.String("example1"),
/// 			ConnectionType: pulumi.String("CUSTOM"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"CONNECTOR_CLASS_NAME": pulumi.String("net.snowflake.client.jdbc.SnowflakeDriver"),
/// 				"CONNECTION_TYPE":      pulumi.String("Jdbc"),
/// 				"CONNECTOR_URL":        pulumi.String("s3://example/snowflake-jdbc.jar"),
/// 				"JDBC_CONNECTION_URL":  pulumi.String("[[\"default=jdbc:snowflake://example.com/?user=${user}&password=${password}\"],\",\"]"),
/// 			},
/// 			MatchCriterias: pulumi.StringArray{
/// 				pulumi.String("template-connection"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Reference the connector using match_criteria with the connector created above.
/// 		_, err = glue.NewConnection(ctx, "example2", &glue.ConnectionArgs{
/// 			Name:           pulumi.String("example2"),
/// 			ConnectionType: pulumi.String("CUSTOM"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"CONNECTOR_CLASS_NAME": pulumi.String("net.snowflake.client.jdbc.SnowflakeDriver"),
/// 				"CONNECTION_TYPE":      pulumi.String("Jdbc"),
/// 				"CONNECTOR_URL":        pulumi.String("s3://example/snowflake-jdbc.jar"),
/// 				"JDBC_CONNECTION_URL":  pulumi.String("jdbc:snowflake://example.com/?user=${user}&password=${password}"),
/// 				"SECRET_ID":            pulumi.String(example.Name),
/// 			},
/// 			MatchCriterias: pulumi.StringArray{
/// 				pulumi.String("Connection"),
/// 				example1.Name,
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
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretArgs;
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         // Define the custom connector using the connection_type of `CUSTOM` with the match_criteria of `template_connection`
///         // Example here being a snowflake jdbc connector with a secret having user and password as keys
///         final var example = SecretsmanagerFunctions.getSecret(GetSecretArgs.builder()
///             .name("example-secret")
///             .build());
///
///         var example1 = new Connection("example1", ConnectionArgs.builder()
///             .name("example1")
///             .connectionType("CUSTOM")
///             .connectionProperties(Map.ofEntries(
///                 Map.entry("CONNECTOR_CLASS_NAME", "net.snowflake.client.jdbc.SnowflakeDriver"),
///                 Map.entry("CONNECTION_TYPE", "Jdbc"),
///                 Map.entry("CONNECTOR_URL", "s3://example/snowflake-jdbc.jar"),
///                 Map.entry("JDBC_CONNECTION_URL", "[[\"default=jdbc:snowflake://example.com/?user=${user}&password=${password}\"],\",\"]")
///             ))
///             .matchCriterias("template-connection")
///             .build());
///
///         // Reference the connector using match_criteria with the connector created above.
///         var example2 = new Connection("example2", ConnectionArgs.builder()
///             .name("example2")
///             .connectionType("CUSTOM")
///             .connectionProperties(Map.ofEntries(
///                 Map.entry("CONNECTOR_CLASS_NAME", "net.snowflake.client.jdbc.SnowflakeDriver"),
///                 Map.entry("CONNECTION_TYPE", "Jdbc"),
///                 Map.entry("CONNECTOR_URL", "s3://example/snowflake-jdbc.jar"),
///                 Map.entry("JDBC_CONNECTION_URL", "jdbc:snowflake://example.com/?user=${user}&password=${password}"),
///                 Map.entry("SECRET_ID", example.name())
///             ))
///             .matchCriterias(
///                 "Connection",
///                 example1.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example1:
///     type: aws:glue:Connection
///     properties:
///       name: example1
///       connectionType: CUSTOM
///       connectionProperties:
///         CONNECTOR_CLASS_NAME: net.snowflake.client.jdbc.SnowflakeDriver
///         CONNECTION_TYPE: Jdbc
///         CONNECTOR_URL: s3://example/snowflake-jdbc.jar
///         JDBC_CONNECTION_URL: '[["default=jdbc:snowflake://example.com/?user=$${user}&password=$${password}"],","]'
///       matchCriterias:
///         - template-connection
///   # Reference the connector using match_criteria with the connector created above.
///   example2:
///     type: aws:glue:Connection
///     properties:
///       name: example2
///       connectionType: CUSTOM
///       connectionProperties:
///         CONNECTOR_CLASS_NAME: net.snowflake.client.jdbc.SnowflakeDriver
///         CONNECTION_TYPE: Jdbc
///         CONNECTOR_URL: s3://example/snowflake-jdbc.jar
///         JDBC_CONNECTION_URL: jdbc:snowflake://example.com/?user=$${user}&password=$${password}
///         SECRET_ID: ${example.name}
///       matchCriterias:
///         - Connection
///         - ${example1.name}
/// variables:
///   # Define the custom connector using the connection_type of `CUSTOM` with the match_criteria of `template_connection`
///   # Example here being a snowflake jdbc connector with a secret having user and password as keys
///   example:
///     fn::invoke:
///       function: aws:secretsmanager:getSecret
///       arguments:
///         name: example-secret
/// ```
///
///
/// ### Azure Cosmos Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-azurecosmos).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.Secret("example", {name: "example-secret"});
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
///     secretId: example.id,
///     secretString: JSON.stringify({
///         username: "exampleusername",
///         password: "examplepassword",
///     }),
/// });
/// const exampleConnection = new aws.glue.Connection("example", {
///     name: "example",
///     connectionType: "AZURECOSMOS",
///     connectionProperties: {
///         SparkProperties: pulumi.jsonStringify({
///             secretId: example.name,
///             "spark.cosmos.accountEndpoint": "https://exampledbaccount.documents.azure.com:443/",
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.Secret("example", name="example-secret")
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
///     secret_id=example.id,
///     secret_string=json.dumps({
///         "username": "exampleusername",
///         "password": "examplepassword",
///     }))
/// example_connection = aws.glue.Connection("example",
///     name="example",
///     connection_type="AZURECOSMOS",
///     connection_properties={
///         "SparkProperties": pulumi.Output.json_dumps({
///             "secretId": example.name,
///             "spark.cosmos.accountEndpoint": "https://exampledbaccount.documents.azure.com:443/",
///         }),
///     })
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
///     var example = new Aws.SecretsManager.Secret("example", new()
///     {
///         Name = "example-secret",
///     });
///
///     var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = example.Id,
///         SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["username"] = "exampleusername",
///             ["password"] = "examplepassword",
///         }),
///     });
///
///     var exampleConnection = new Aws.Glue.Connection("example", new()
///     {
///         Name = "example",
///         ConnectionType = "AZURECOSMOS",
///         ConnectionProperties =
///         {
///             { "SparkProperties", Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///             {
///                 ["secretId"] = example.Name,
///                 ["spark.cosmos.accountEndpoint"] = "https://exampledbaccount.documents.azure.com:443/",
///             })) },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example-secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"username": "exampleusername",
/// 			"password": "examplepassword",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     example.ID(),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewConnection(ctx, "example", &glue.ConnectionArgs{
/// 			Name:           pulumi.String("example"),
/// 			ConnectionType: pulumi.String("AZURECOSMOS"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"SparkProperties": example.Name.ApplyT(func(name string) (pulumi.String, error) {
/// 					var _zero pulumi.String
/// 					tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 						"secretId":                     name,
/// 						"spark.cosmos.accountEndpoint": "https://exampledbaccount.documents.azure.com:443/",
/// 					})
/// 					if err != nil {
/// 						return _zero, err
/// 					}
/// 					json1 := string(tmpJSON1)
/// 					return pulumi.String(json1), nil
/// 				}).(pulumi.StringOutput),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example-secret")
///             .build());
///
///         var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
///             .secretId(example.id())
///             .secretString(serializeJson(
///                 jsonObject(
///                     jsonProperty("username", "exampleusername"),
///                     jsonProperty("password", "examplepassword")
///                 )))
///             .build());
///
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("example")
///             .connectionType("AZURECOSMOS")
///             .connectionProperties(Map.of("SparkProperties", example.name().applyValue(_name -> serializeJson(
///                 jsonObject(
///                     jsonProperty("secretId", _name),
///                     jsonProperty("spark.cosmos.accountEndpoint", "https://exampledbaccount.documents.azure.com:443/")
///                 )))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example-secret
///   exampleSecretVersion:
///     type: aws:secretsmanager:SecretVersion
///     name: example
///     properties:
///       secretId: ${example.id}
///       secretString:
///         fn::toJSON:
///           username: exampleusername
///           password: examplepassword
///   exampleConnection:
///     type: aws:glue:Connection
///     name: example
///     properties:
///       name: example
///       connectionType: AZURECOSMOS
///       connectionProperties:
///         SparkProperties:
///           fn::toJSON:
///             secretId: ${example.name}
///             spark.cosmos.accountEndpoint: https://exampledbaccount.documents.azure.com:443/
/// ```
///
///
/// ### Azure SQL Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-azuresql).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.Secret("example", {name: "example-secret"});
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
///     secretId: example.id,
///     secretString: JSON.stringify({
///         username: "exampleusername",
///         password: "examplepassword",
///     }),
/// });
/// const exampleConnection = new aws.glue.Connection("example", {
///     name: "example",
///     connectionType: "AZURECOSMOS",
///     connectionProperties: {
///         SparkProperties: pulumi.jsonStringify({
///             secretId: example.name,
///             url: "jdbc:sqlserver:exampledbserver.database.windows.net:1433;database=exampledatabase",
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.Secret("example", name="example-secret")
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
///     secret_id=example.id,
///     secret_string=json.dumps({
///         "username": "exampleusername",
///         "password": "examplepassword",
///     }))
/// example_connection = aws.glue.Connection("example",
///     name="example",
///     connection_type="AZURECOSMOS",
///     connection_properties={
///         "SparkProperties": pulumi.Output.json_dumps({
///             "secretId": example.name,
///             "url": "jdbc:sqlserver:exampledbserver.database.windows.net:1433;database=exampledatabase",
///         }),
///     })
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
///     var example = new Aws.SecretsManager.Secret("example", new()
///     {
///         Name = "example-secret",
///     });
///
///     var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = example.Id,
///         SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["username"] = "exampleusername",
///             ["password"] = "examplepassword",
///         }),
///     });
///
///     var exampleConnection = new Aws.Glue.Connection("example", new()
///     {
///         Name = "example",
///         ConnectionType = "AZURECOSMOS",
///         ConnectionProperties =
///         {
///             { "SparkProperties", Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///             {
///                 ["secretId"] = example.Name,
///                 ["url"] = "jdbc:sqlserver:exampledbserver.database.windows.net:1433;database=exampledatabase",
///             })) },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example-secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"username": "exampleusername",
/// 			"password": "examplepassword",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     example.ID(),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewConnection(ctx, "example", &glue.ConnectionArgs{
/// 			Name:           pulumi.String("example"),
/// 			ConnectionType: pulumi.String("AZURECOSMOS"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"SparkProperties": example.Name.ApplyT(func(name string) (pulumi.String, error) {
/// 					var _zero pulumi.String
/// 					tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 						"secretId": name,
/// 						"url":      "jdbc:sqlserver:exampledbserver.database.windows.net:1433;database=exampledatabase",
/// 					})
/// 					if err != nil {
/// 						return _zero, err
/// 					}
/// 					json1 := string(tmpJSON1)
/// 					return pulumi.String(json1), nil
/// 				}).(pulumi.StringOutput),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example-secret")
///             .build());
///
///         var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
///             .secretId(example.id())
///             .secretString(serializeJson(
///                 jsonObject(
///                     jsonProperty("username", "exampleusername"),
///                     jsonProperty("password", "examplepassword")
///                 )))
///             .build());
///
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("example")
///             .connectionType("AZURECOSMOS")
///             .connectionProperties(Map.of("SparkProperties", example.name().applyValue(_name -> serializeJson(
///                 jsonObject(
///                     jsonProperty("secretId", _name),
///                     jsonProperty("url", "jdbc:sqlserver:exampledbserver.database.windows.net:1433;database=exampledatabase")
///                 )))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example-secret
///   exampleSecretVersion:
///     type: aws:secretsmanager:SecretVersion
///     name: example
///     properties:
///       secretId: ${example.id}
///       secretString:
///         fn::toJSON:
///           username: exampleusername
///           password: examplepassword
///   exampleConnection:
///     type: aws:glue:Connection
///     name: example
///     properties:
///       name: example
///       connectionType: AZURECOSMOS
///       connectionProperties:
///         SparkProperties:
///           fn::toJSON:
///             secretId: ${example.name}
///             url: jdbc:sqlserver:exampledbserver.database.windows.net:1433;database=exampledatabase
/// ```
///
///
/// ### Google BigQuery Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-bigquery).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.secretsmanager.Secret("example", {name: "example-secret"});
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
///     secretId: example.id,
///     secretString: JSON.stringify({
///         credentials: std.base64encode({
///             input: `{
///   \\"type\\": \\"service_account\\",
///   \\"project_id\\": \\"example-project\\",
///   \\"private_key_id\\": \\"example-key\\",
///   \\"private_key\\": \\"-----BEGIN RSA PRIVATE KEY-----\\
/// REDACTED\\
/// -----END RSA PRIVATE KEY-----\\",
///   \\"client_email\\": \\"example-project@appspot.gserviceaccount.com\\",
///   \\"client_id\\": example-client\\",
///   \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",
///   \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",
///   \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",
///   \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/example-project%%40appspot.gserviceaccount.com\\",
///   \\"universe_domain\\": \\"googleapis.com\\"
/// }
/// `,
///         }).then(invoke => invoke.result),
///     }),
/// });
/// const exampleConnection = new aws.glue.Connection("example", {
///     name: "example",
///     connectionType: "BIGQUERY",
///     connectionProperties: {
///         SparkProperties: pulumi.jsonStringify({
///             secretId: example.name,
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.secretsmanager.Secret("example", name="example-secret")
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
///     secret_id=example.id,
///     secret_string=json.dumps({
///         "credentials": std.base64encode(input="""{
///   \"type\": \"service_account\",
///   \"project_id\": \"example-project\",
///   \"private_key_id\": \"example-key\",
///   \"private_key\": \"-----BEGIN RSA PRIVATE KEY-----\
/// REDACTED\
/// -----END RSA PRIVATE KEY-----\",
///   \"client_email\": \"example-project@appspot.gserviceaccount.com\",
///   \"client_id\": example-client\",
///   \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",
///   \"token_uri\": \"https://oauth2.googleapis.com/token\",
///   \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",
///   \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/example-project%%40appspot.gserviceaccount.com\",
///   \"universe_domain\": \"googleapis.com\"
/// }
/// """).result,
///     }))
/// example_connection = aws.glue.Connection("example",
///     name="example",
///     connection_type="BIGQUERY",
///     connection_properties={
///         "SparkProperties": pulumi.Output.json_dumps({
///             "secretId": example.name,
///         }),
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecretsManager.Secret("example", new()
///     {
///         Name = "example-secret",
///     });
///
///     var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = example.Id,
///         SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["credentials"] = Std.Base64encode.Invoke(new()
///             {
///                 Input = @"{
///   \""type\"": \""service_account\"",
///   \""project_id\"": \""example-project\"",
///   \""private_key_id\"": \""example-key\"",
///   \""private_key\"": \""-----BEGIN RSA PRIVATE KEY-----\
/// REDACTED\
/// -----END RSA PRIVATE KEY-----\"",
///   \""client_email\"": \""example-project@appspot.gserviceaccount.com\"",
///   \""client_id\"": example-client\"",
///   \""auth_uri\"": \""https://accounts.google.com/o/oauth2/auth\"",
///   \""token_uri\"": \""https://oauth2.googleapis.com/token\"",
///   \""auth_provider_x509_cert_url\"": \""https://www.googleapis.com/oauth2/v1/certs\"",
///   \""client_x509_cert_url\"": \""https://www.googleapis.com/robot/v1/metadata/x509/example-project%%40appspot.gserviceaccount.com\"",
///   \""universe_domain\"": \""googleapis.com\""
/// }
/// ",
///             }).Apply(invoke => invoke.Result),
///         }),
///     });
///
///     var exampleConnection = new Aws.Glue.Connection("example", new()
///     {
///         Name = "example",
///         ConnectionType = "BIGQUERY",
///         ConnectionProperties =
///         {
///             { "SparkProperties", Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///             {
///                 ["secretId"] = example.Name,
///             })) },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example-secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"credentials": std.Base64encode(ctx, &std.Base64encodeArgs{
/// 				Input: `{
///   \"type\": \"service_account\",
///   \"project_id\": \"example-project\",
///   \"private_key_id\": \"example-key\",
///   \"private_key\": \"-----BEGIN RSA PRIVATE KEY-----\
/// REDACTED\
/// -----END RSA PRIVATE KEY-----\",
///   \"client_email\": \"example-project@appspot.gserviceaccount.com\",
///   \"client_id\": example-client\",
///   \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",
///   \"token_uri\": \"https://oauth2.googleapis.com/token\",
///   \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",
///   \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/example-project%%40appspot.gserviceaccount.com\",
///   \"universe_domain\": \"googleapis.com\"
/// }
/// `,
/// 			}, nil).Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     example.ID(),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewConnection(ctx, "example", &glue.ConnectionArgs{
/// 			Name:           pulumi.String("example"),
/// 			ConnectionType: pulumi.String("BIGQUERY"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"SparkProperties": example.Name.ApplyT(func(name string) (pulumi.String, error) {
/// 					var _zero pulumi.String
/// 					tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 						"secretId": name,
/// 					})
/// 					if err != nil {
/// 						return _zero, err
/// 					}
/// 					json1 := string(tmpJSON1)
/// 					return pulumi.String(json1), nil
/// 				}).(pulumi.StringOutput),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example-secret")
///             .build());
///
///         var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
///             .secretId(example.id())
///             .secretString(serializeJson(
///                 jsonObject(
///                     jsonProperty("credentials", StdFunctions.base64encode(Base64encodeArgs.builder()
///                         .input("""
/// {
///   \"type\": \"service_account\",
///   \"project_id\": \"example-project\",
///   \"private_key_id\": \"example-key\",
///   \"private_key\": \"-----BEGIN RSA PRIVATE KEY-----\
/// REDACTED\
/// -----END RSA PRIVATE KEY-----\",
///   \"client_email\": \"example-project@appspot.gserviceaccount.com\",
///   \"client_id\": example-client\",
///   \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",
///   \"token_uri\": \"https://oauth2.googleapis.com/token\",
///   \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",
///   \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/example-project%%40appspot.gserviceaccount.com\",
///   \"universe_domain\": \"googleapis.com\"
/// }
///                         """)
///                         .build()).result())
///                 )))
///             .build());
///
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("example")
///             .connectionType("BIGQUERY")
///             .connectionProperties(Map.of("SparkProperties", example.name().applyValue(_name -> serializeJson(
///                 jsonObject(
///                     jsonProperty("secretId", _name)
///                 )))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example-secret
///   exampleSecretVersion:
///     type: aws:secretsmanager:SecretVersion
///     name: example
///     properties:
///       secretId: ${example.id}
///       secretString:
///         fn::toJSON:
///           credentials:
///             fn::invoke:
///               function: std:base64encode
///               arguments:
///                 input: |
///                   {
///                     \"type\": \"service_account\",
///                     \"project_id\": \"example-project\",
///                     \"private_key_id\": \"example-key\",
///                     \"private_key\": \"-----BEGIN RSA PRIVATE KEY-----\
///                   REDACTED\
///                   -----END RSA PRIVATE KEY-----\",
///                     \"client_email\": \"example-project@appspot.gserviceaccount.com\",
///                     \"client_id\": example-client\",
///                     \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",
///                     \"token_uri\": \"https://oauth2.googleapis.com/token\",
///                     \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",
///                     \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/example-project%%40appspot.gserviceaccount.com\",
///                     \"universe_domain\": \"googleapis.com\"
///                   }
///               return: result
///   exampleConnection:
///     type: aws:glue:Connection
///     name: example
///     properties:
///       name: example
///       connectionType: BIGQUERY
///       connectionProperties:
///         SparkProperties:
///           fn::toJSON:
///             secretId: ${example.name}
/// ```
///
///
/// ### OpenSearch Service Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-opensearch).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.Secret("example", {name: "example-secret"});
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
///     secretId: example.id,
///     secretString: JSON.stringify({
///         "opensearch.net.http.auth.user": "exampleusername",
///         "opensearch.net.http.auth.pass": "examplepassword",
///     }),
/// });
/// const exampleConnection = new aws.glue.Connection("example", {
///     name: "example",
///     connectionType: "OPENSEARCH",
///     connectionProperties: {
///         SparkProperties: pulumi.jsonStringify({
///             secretId: example.name,
///             "opensearch.nodes": "https://search-exampledomain-ixlmh4jieahrau3bfebcgp8cnm.us-east-1.es.amazonaws.com",
///             "opensearch.port": "443",
///             "opensearch.aws.sigv4.region": "us-east-1",
///             "opensearch.nodes.wan.only": "true",
///             "opensearch.aws.sigv4.enabled": "true",
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.Secret("example", name="example-secret")
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
///     secret_id=example.id,
///     secret_string=json.dumps({
///         "opensearch.net.http.auth.user": "exampleusername",
///         "opensearch.net.http.auth.pass": "examplepassword",
///     }))
/// example_connection = aws.glue.Connection("example",
///     name="example",
///     connection_type="OPENSEARCH",
///     connection_properties={
///         "SparkProperties": pulumi.Output.json_dumps({
///             "secretId": example.name,
///             "opensearch.nodes": "https://search-exampledomain-ixlmh4jieahrau3bfebcgp8cnm.us-east-1.es.amazonaws.com",
///             "opensearch.port": "443",
///             "opensearch.aws.sigv4.region": "us-east-1",
///             "opensearch.nodes.wan.only": "true",
///             "opensearch.aws.sigv4.enabled": "true",
///         }),
///     })
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
///     var example = new Aws.SecretsManager.Secret("example", new()
///     {
///         Name = "example-secret",
///     });
///
///     var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = example.Id,
///         SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["opensearch.net.http.auth.user"] = "exampleusername",
///             ["opensearch.net.http.auth.pass"] = "examplepassword",
///         }),
///     });
///
///     var exampleConnection = new Aws.Glue.Connection("example", new()
///     {
///         Name = "example",
///         ConnectionType = "OPENSEARCH",
///         ConnectionProperties =
///         {
///             { "SparkProperties", Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///             {
///                 ["secretId"] = example.Name,
///                 ["opensearch.nodes"] = "https://search-exampledomain-ixlmh4jieahrau3bfebcgp8cnm.us-east-1.es.amazonaws.com",
///                 ["opensearch.port"] = "443",
///                 ["opensearch.aws.sigv4.region"] = "us-east-1",
///                 ["opensearch.nodes.wan.only"] = "true",
///                 ["opensearch.aws.sigv4.enabled"] = "true",
///             })) },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example-secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"opensearch.net.http.auth.user": "exampleusername",
/// 			"opensearch.net.http.auth.pass": "examplepassword",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     example.ID(),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewConnection(ctx, "example", &glue.ConnectionArgs{
/// 			Name:           pulumi.String("example"),
/// 			ConnectionType: pulumi.String("OPENSEARCH"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"SparkProperties": example.Name.ApplyT(func(name string) (pulumi.String, error) {
/// 					var _zero pulumi.String
/// 					tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 						"secretId":                     name,
/// 						"opensearch.nodes":             "https://search-exampledomain-ixlmh4jieahrau3bfebcgp8cnm.us-east-1.es.amazonaws.com",
/// 						"opensearch.port":              "443",
/// 						"opensearch.aws.sigv4.region":  "us-east-1",
/// 						"opensearch.nodes.wan.only":    "true",
/// 						"opensearch.aws.sigv4.enabled": "true",
/// 					})
/// 					if err != nil {
/// 						return _zero, err
/// 					}
/// 					json1 := string(tmpJSON1)
/// 					return pulumi.String(json1), nil
/// 				}).(pulumi.StringOutput),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example-secret")
///             .build());
///
///         var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
///             .secretId(example.id())
///             .secretString(serializeJson(
///                 jsonObject(
///                     jsonProperty("opensearch.net.http.auth.user", "exampleusername"),
///                     jsonProperty("opensearch.net.http.auth.pass", "examplepassword")
///                 )))
///             .build());
///
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("example")
///             .connectionType("OPENSEARCH")
///             .connectionProperties(Map.of("SparkProperties", example.name().applyValue(_name -> serializeJson(
///                 jsonObject(
///                     jsonProperty("secretId", _name),
///                     jsonProperty("opensearch.nodes", "https://search-exampledomain-ixlmh4jieahrau3bfebcgp8cnm.us-east-1.es.amazonaws.com"),
///                     jsonProperty("opensearch.port", "443"),
///                     jsonProperty("opensearch.aws.sigv4.region", "us-east-1"),
///                     jsonProperty("opensearch.nodes.wan.only", "true"),
///                     jsonProperty("opensearch.aws.sigv4.enabled", "true")
///                 )))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example-secret
///   exampleSecretVersion:
///     type: aws:secretsmanager:SecretVersion
///     name: example
///     properties:
///       secretId: ${example.id}
///       secretString:
///         fn::toJSON:
///           opensearch.net.http.auth.user: exampleusername
///           opensearch.net.http.auth.pass: examplepassword
///   exampleConnection:
///     type: aws:glue:Connection
///     name: example
///     properties:
///       name: example
///       connectionType: OPENSEARCH
///       connectionProperties:
///         SparkProperties:
///           fn::toJSON:
///             secretId: ${example.name}
///             opensearch.nodes: https://search-exampledomain-ixlmh4jieahrau3bfebcgp8cnm.us-east-1.es.amazonaws.com
///             opensearch.port: '443'
///             opensearch.aws.sigv4.region: us-east-1
///             opensearch.nodes.wan.only: 'true'
///             opensearch.aws.sigv4.enabled: 'true'
/// ```
///
///
/// ### Snowflake Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-snowflake).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.Secret("example", {name: "example-secret"});
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
///     secretId: example.id,
///     secretString: JSON.stringify({
///         sfUser: "exampleusername",
///         sfPassword: "examplepassword",
///     }),
/// });
/// const exampleConnection = new aws.glue.Connection("example", {
///     name: "example",
///     connectionType: "SNOWFLAKE",
///     connectionProperties: {
///         SparkProperties: pulumi.jsonStringify({
///             secretId: example.name,
///             sfRole: "EXAMPLEETLROLE",
///             sfUrl: "exampleorg-exampleconnection.snowflakecomputing.com",
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.Secret("example", name="example-secret")
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
///     secret_id=example.id,
///     secret_string=json.dumps({
///         "sfUser": "exampleusername",
///         "sfPassword": "examplepassword",
///     }))
/// example_connection = aws.glue.Connection("example",
///     name="example",
///     connection_type="SNOWFLAKE",
///     connection_properties={
///         "SparkProperties": pulumi.Output.json_dumps({
///             "secretId": example.name,
///             "sfRole": "EXAMPLEETLROLE",
///             "sfUrl": "exampleorg-exampleconnection.snowflakecomputing.com",
///         }),
///     })
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
///     var example = new Aws.SecretsManager.Secret("example", new()
///     {
///         Name = "example-secret",
///     });
///
///     var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = example.Id,
///         SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["sfUser"] = "exampleusername",
///             ["sfPassword"] = "examplepassword",
///         }),
///     });
///
///     var exampleConnection = new Aws.Glue.Connection("example", new()
///     {
///         Name = "example",
///         ConnectionType = "SNOWFLAKE",
///         ConnectionProperties =
///         {
///             { "SparkProperties", Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///             {
///                 ["secretId"] = example.Name,
///                 ["sfRole"] = "EXAMPLEETLROLE",
///                 ["sfUrl"] = "exampleorg-exampleconnection.snowflakecomputing.com",
///             })) },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example-secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"sfUser":     "exampleusername",
/// 			"sfPassword": "examplepassword",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     example.ID(),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewConnection(ctx, "example", &glue.ConnectionArgs{
/// 			Name:           pulumi.String("example"),
/// 			ConnectionType: pulumi.String("SNOWFLAKE"),
/// 			ConnectionProperties: pulumi.StringMap{
/// 				"SparkProperties": example.Name.ApplyT(func(name string) (pulumi.String, error) {
/// 					var _zero pulumi.String
/// 					tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 						"secretId": name,
/// 						"sfRole":   "EXAMPLEETLROLE",
/// 						"sfUrl":    "exampleorg-exampleconnection.snowflakecomputing.com",
/// 					})
/// 					if err != nil {
/// 						return _zero, err
/// 					}
/// 					json1 := string(tmpJSON1)
/// 					return pulumi.String(json1), nil
/// 				}).(pulumi.StringOutput),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example-secret")
///             .build());
///
///         var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
///             .secretId(example.id())
///             .secretString(serializeJson(
///                 jsonObject(
///                     jsonProperty("sfUser", "exampleusername"),
///                     jsonProperty("sfPassword", "examplepassword")
///                 )))
///             .build());
///
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("example")
///             .connectionType("SNOWFLAKE")
///             .connectionProperties(Map.of("SparkProperties", example.name().applyValue(_name -> serializeJson(
///                 jsonObject(
///                     jsonProperty("secretId", _name),
///                     jsonProperty("sfRole", "EXAMPLEETLROLE"),
///                     jsonProperty("sfUrl", "exampleorg-exampleconnection.snowflakecomputing.com")
///                 )))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example-secret
///   exampleSecretVersion:
///     type: aws:secretsmanager:SecretVersion
///     name: example
///     properties:
///       secretId: ${example.id}
///       secretString:
///         fn::toJSON:
///           sfUser: exampleusername
///           sfPassword: examplepassword
///   exampleConnection:
///     type: aws:glue:Connection
///     name: example
///     properties:
///       name: example
///       connectionType: SNOWFLAKE
///       connectionProperties:
///         SparkProperties:
///           fn::toJSON:
///             secretId: ${example.name}
///             sfRole: EXAMPLEETLROLE
///             sfUrl: exampleorg-exampleconnection.snowflakecomputing.com
/// ```
///
///
/// ### DynamoDB Connection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.glue.Connection("test", {
///     name: "example",
///     connectionType: "DYNAMODB",
///     athenaProperties: {
///         lambda_function_arn: "arn:aws:lambda:us-east-1:123456789012:function:athenafederatedcatalog_athena_abcdefgh",
///         disable_spill_encryption: "false",
///         spill_bucket: "example-bucket",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.glue.Connection("test",
///     name="example",
///     connection_type="DYNAMODB",
///     athena_properties={
///         "lambda_function_arn": "arn:aws:lambda:us-east-1:123456789012:function:athenafederatedcatalog_athena_abcdefgh",
///         "disable_spill_encryption": "false",
///         "spill_bucket": "example-bucket",
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
///     var test = new Aws.Glue.Connection("test", new()
///     {
///         Name = "example",
///         ConnectionType = "DYNAMODB",
///         AthenaProperties =
///         {
///             { "lambda_function_arn", "arn:aws:lambda:us-east-1:123456789012:function:athenafederatedcatalog_athena_abcdefgh" },
///             { "disable_spill_encryption", "false" },
///             { "spill_bucket", "example-bucket" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewConnection(ctx, "test", &glue.ConnectionArgs{
/// 			Name:           pulumi.String("example"),
/// 			ConnectionType: pulumi.String("DYNAMODB"),
/// 			AthenaProperties: pulumi.StringMap{
/// 				"lambda_function_arn":      pulumi.String("arn:aws:lambda:us-east-1:123456789012:function:athenafederatedcatalog_athena_abcdefgh"),
/// 				"disable_spill_encryption": pulumi.String("false"),
/// 				"spill_bucket":             pulumi.String("example-bucket"),
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
/// import com.pulumi.aws.glue.Connection;
/// import com.pulumi.aws.glue.ConnectionArgs;
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
///         var test = new Connection("test", ConnectionArgs.builder()
///             .name("example")
///             .connectionType("DYNAMODB")
///             .athenaProperties(Map.ofEntries(
///                 Map.entry("lambda_function_arn", "arn:aws:lambda:us-east-1:123456789012:function:athenafederatedcatalog_athena_abcdefgh"),
///                 Map.entry("disable_spill_encryption", "false"),
///                 Map.entry("spill_bucket", "example-bucket")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:glue:Connection
///     properties:
///       name: example
///       connectionType: DYNAMODB
///       athenaProperties:
///         lambda_function_arn: arn:aws:lambda:us-east-1:123456789012:function:athenafederatedcatalog_athena_abcdefgh
///         disable_spill_encryption: 'false'
///         spill_bucket: example-bucket
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Connections using the `CATALOG-ID` (AWS account ID if not custom) and `NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/connection:Connection MyConnection 123456789012:MyConnection
/// ```
class Connection extends pulumi.CustomResource {
  /// ARN of the Glue Connection.
  late final pulumi.Output<String> arn;
  /// Map of key-value pairs used as connection properties specific to the Athena compute environment.
  late final pulumi.Output<Map<String, String>?> athenaProperties;
  /// ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
  late final pulumi.Output<String> catalogId;
  /// Map of key-value pairs used as parameters for this connection. For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html).
  ///
  /// **Note:** Some connection types require the `SparkProperties` property with a JSON document that contains the actual connection properties. For specific examples, refer to Example Usage.
  late final pulumi.Output<Map<String, String>?> connectionProperties;
  /// Type of the connection. Valid values: `AZURECOSMOS`, `AZURESQL`, `BIGQUERY`, `CUSTOM`, `DYNAMODB`, `JDBC`, `KAFKA`, `MARKETPLACE`, `MONGODB`, `NETWORK`, `OPENSEARCH`, `SNOWFLAKE`. Defaults to `JDBC`.
  late final pulumi.Output<String?> connectionType;
  /// Description of the connection.
  late final pulumi.Output<String?> description;
  /// List of criteria that can be used in selecting this connection.
  late final pulumi.Output<List<String>?> matchCriterias;
  /// Name of the connection.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Map of physical connection requirements, such as VPC and SecurityGroup. See `physical_connection_requirements` Block for details.
  late final pulumi.Output<ConnectionPhysicalConnectionRequirements?> physicalConnectionRequirements;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_glue_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.athenaProperties = registerOutput<Map<String, String>?>('athenaProperties');
    this.catalogId = registerOutput<String>('catalogId');
    this.connectionProperties = registerOutput<Map<String, String>?>('connectionProperties');
    this.connectionType = registerOutput<String?>('connectionType');
    this.description = registerOutput<String?>('description');
    this.matchCriterias = registerOutput<List<String>?>('matchCriterias');
    this.name = registerOutput<String>('name');
    this.physicalConnectionRequirements = registerOutput<ConnectionPhysicalConnectionRequirements?>('physicalConnectionRequirements');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.athenaProperties = registerOutput<Map<String, String>?>('athenaProperties');
    this.catalogId = registerOutput<String>('catalogId');
    this.connectionProperties = registerOutput<Map<String, String>?>('connectionProperties');
    this.connectionType = registerOutput<String?>('connectionType');
    this.description = registerOutput<String?>('description');
    this.matchCriterias = registerOutput<List<String>?>('matchCriterias');
    this.name = registerOutput<String>('name');
    this.physicalConnectionRequirements = registerOutput<ConnectionPhysicalConnectionRequirements?>('physicalConnectionRequirements');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
