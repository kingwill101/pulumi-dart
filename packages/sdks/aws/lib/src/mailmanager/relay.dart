import 'package:pulumi/pulumi.dart' as pulumi;
import 'relay_args.dart';
import 'relay_authentication.dart';
import 'relay_state.dart';

/// Manages an AWS SES Mail Manager Relay.
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
/// const example = new aws.mailmanager.Relay("example", {
///     authentication: {
///         noAuthentication: {},
///     },
///     name: "example",
///     serverName: "smtp.example.com",
///     serverPort: 25,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mailmanager.Relay("example",
///     authentication={
///         "no_authentication": {},
///     },
///     name="example",
///     server_name="smtp.example.com",
///     server_port=25)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MailManager.Relay("example", new()
///     {
///         Authentication = new Aws.MailManager.Inputs.RelayAuthenticationArgs
///         {
///             NoAuthentication = null,
///         },
///         Name = "example",
///         ServerName = "smtp.example.com",
///         ServerPort = 25,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mailmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mailmanager.NewRelay(ctx, "example", &mailmanager.RelayArgs{
/// 			Authentication: &mailmanager.RelayAuthenticationArgs{
/// 				NoAuthentication: &mailmanager.RelayAuthenticationNoAuthenticationArgs{},
/// 			},
/// 			Name:       pulumi.String("example"),
/// 			ServerName: pulumi.String("smtp.example.com"),
/// 			ServerPort: pulumi.Int(25),
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
/// resource "aws_mailmanager_relay" "example" {
///   authentication = {
///     no_authentication = {}
///   }
///   name        = "example"
///   server_name = "smtp.example.com"
///   server_port = 25
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mailmanager.Relay;
/// import com.pulumi.aws.mailmanager.RelayArgs;
/// import com.pulumi.aws.mailmanager.inputs.RelayAuthenticationArgs;
/// import com.pulumi.aws.mailmanager.inputs.RelayAuthenticationNoAuthenticationArgs;
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
///         var example = new Relay("example", RelayArgs.builder()
///             .authentication(RelayAuthenticationArgs.builder()
///                 .noAuthentication(RelayAuthenticationNoAuthenticationArgs.builder()
///                     .build())
///                 .build())
///             .name("example")
///             .serverName("smtp.example.com")
///             .serverPort(25)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mailmanager:Relay
///     properties:
///       authentication:
///         noAuthentication: {}
///       name: example
///       serverName: smtp.example.com
///       serverPort: 25
/// ```
///
///
/// ### With Secret Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.Secret("example", {name: "example"});
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
///     secretId: example.id,
///     secretString: JSON.stringify({
///         username: "user",
///         password: "pass",
///     }),
/// });
/// const exampleRelay = new aws.mailmanager.Relay("example", {
///     authentication: {
///         secretArn: exampleSecretVersion.arn,
///     },
///     name: "example",
///     serverName: "smtp.example.com",
///     serverPort: 587,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.Secret("example", name="example")
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
///     secret_id=example.id,
///     secret_string=json.dumps({
///         "username": "user",
///         "password": "pass",
///     }))
/// example_relay = aws.mailmanager.Relay("example",
///     authentication={
///         "secret_arn": example_secret_version.arn,
///     },
///     name="example",
///     server_name="smtp.example.com",
///     server_port=587)
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
///         Name = "example",
///     });
///
///     var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = example.Id,
///         SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["username"] = "user",
///             ["password"] = "pass",
///         }),
///     });
///
///     var exampleRelay = new Aws.MailManager.Relay("example", new()
///     {
///         Authentication = new Aws.MailManager.Inputs.RelayAuthenticationArgs
///         {
///             SecretArn = exampleSecretVersion.Arn,
///         },
///         Name = "example",
///         ServerName = "smtp.example.com",
///         ServerPort = 587,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mailmanager"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"username": "user",
/// 			"password": "pass",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleSecretVersion, err := secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     example.ID().ToIDOutput().ToStringOutput(),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mailmanager.NewRelay(ctx, "example", &mailmanager.RelayArgs{
/// 			Authentication: &mailmanager.RelayAuthenticationArgs{
/// 				SecretArn: exampleSecretVersion.Arn,
/// 			},
/// 			Name:       pulumi.String("example"),
/// 			ServerName: pulumi.String("smtp.example.com"),
/// 			ServerPort: pulumi.Int(587),
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
/// resource "aws_secretsmanager_secret" "example" {
///   name = "example"
/// }
/// resource "aws_secretsmanager_secretversion" "example" {
///   secret_id = aws_secretsmanager_secret.example.id
///   secret_string = jsonencode({
///     "username" = "user"
///     "password" = "pass"
///   })
/// }
/// resource "aws_mailmanager_relay" "example" {
///   authentication = {
///     secret_arn = aws_secretsmanager_secretversion.example.arn
///   }
///   name        = "example"
///   server_name = "smtp.example.com"
///   server_port = 587
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
/// import com.pulumi.aws.mailmanager.Relay;
/// import com.pulumi.aws.mailmanager.RelayArgs;
/// import com.pulumi.aws.mailmanager.inputs.RelayAuthenticationArgs;
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
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
///             .secretId(example.id())
///             .secretString(serializeJson(
///                 jsonObject(
///                     jsonProperty("username", "user"),
///                     jsonProperty("password", "pass")
///                 )))
///             .build());
///
///         var exampleRelay = new Relay("exampleRelay", RelayArgs.builder()
///             .authentication(RelayAuthenticationArgs.builder()
///                 .secretArn(exampleSecretVersion.arn())
///                 .build())
///             .name("example")
///             .serverName("smtp.example.com")
///             .serverPort(587)
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
///       name: example
///   exampleSecretVersion:
///     type: aws:secretsmanager:SecretVersion
///     name: example
///     properties:
///       secretId: ${example.id}
///       secretString:
///         fn::toJSON:
///           username: user
///           password: pass
///   exampleRelay:
///     type: aws:mailmanager:Relay
///     name: example
///     properties:
///       authentication:
///         secretArn: ${exampleSecretVersion.arn}
///       name: example
///       serverName: smtp.example.com
///       serverPort: 587
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Identifier of the relay.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an SES Mail Manager Relay using its identifier. For example:
///
/// ```sh
/// $ pulumi import aws:mailmanager/relay:Relay example relay-id-12345678
/// ```
class Relay extends pulumi.CustomResource {
  /// ARN of the relay.
  late final pulumi.Output<String> arn;
  /// Authentication configuration for the relay. See `authentication` Block.
  late final pulumi.Output<RelayAuthentication?> authentication;
  /// Timestamp when the relay was created.
  late final pulumi.Output<String> createdTimestamp;
  /// Timestamp when the relay was last modified.
  late final pulumi.Output<String> lastModifiedTimestamp;
  /// Name of the relay.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Hostname of the SMTP server.
  late final pulumi.Output<String> serverName;
  /// Port of the SMTP server.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> serverPort;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Relay].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Relay]. {@macro pulumi_mailmanager_relay_relay_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Relay(
    String name, {
    RelayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/relay:Relay',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    authentication = registerOutput<RelayAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RelayAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTimestamp = registerOutput<String>('createdTimestamp');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverName = registerOutput<String>('serverName');
    serverPort = registerOutput<int>('serverPort');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Relay] resource's state with the given [name] and [id].
  static Relay get(
    String name,
    pulumi.Input<String> id, {
    RelayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Relay._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Relay._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/relay:Relay',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    authentication = registerOutput<RelayAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RelayAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTimestamp = registerOutput<String>('createdTimestamp');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverName = registerOutput<String>('serverName');
    serverPort = registerOutput<int>('serverPort');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Relay] resource.
  Relay.reference(String urn)
    : super(
        'aws:mailmanager/relay:Relay',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    authentication = registerOutput<RelayAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RelayAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTimestamp = registerOutput<String>('createdTimestamp');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverName = registerOutput<String>('serverName');
    serverPort = registerOutput<int>('serverPort');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
