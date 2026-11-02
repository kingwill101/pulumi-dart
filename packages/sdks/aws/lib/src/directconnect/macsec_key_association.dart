import 'package:pulumi/pulumi.dart' as pulumi;
import 'macsec_key_association_args.dart';
import 'macsec_key_association_state.dart';

/// Manages a MAC Security (MACSec) secret key association for use with Direct Connect. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for information about MAC Security (MACsec) prerequisites.
///
/// Creating this resource will also create a resource of type `aws.secretsmanager.Secret` which is managed by Direct Connect. While you can import this resource into your state, because this secret is managed by Direct Connect, you will not be able to make any modifications to it. See [How AWS Direct Connect uses AWS Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/integrating_how-services-use-secrets_directconnect.html) for details.
///
/// &gt; **Note:** The `ckn` and `cak` arguments are stored in the raw state as plain-text. Use `cknWo` and `cakWo` instead to avoid storing these values in the plan or state. When `cknWo` is configured, the API-returned CKN is not stored in `ckn`.
///
/// &gt; **Note:** The `secretArn` argument can only be used to reference a previously created MACSec key. You cannot associate a Secrets Manager secret created outside of the `aws.directconnect.MacsecKeyAssociation` resource.
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
/// const example = aws.directconnect.getConnection({
///     name: "tf-dx-connection",
/// });
/// const exampleMacsecKeyAssociation = new aws.directconnect.MacsecKeyAssociation("example", {
///     connectionId: example.then(example => example.id),
///     ckn: "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
///     cak: "abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.get_connection(name="tf-dx-connection")
/// example_macsec_key_association = aws.directconnect.MacsecKeyAssociation("example",
///     connection_id=example.id,
///     ckn="0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
///     cak="abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DirectConnect.GetConnection.Invoke(new()
///     {
///         Name = "tf-dx-connection",
///     });
///
///     var exampleMacsecKeyAssociation = new Aws.DirectConnect.MacsecKeyAssociation("example", new()
///     {
///         ConnectionId = example.Apply(getConnectionResult => getConnectionResult.Id),
///         Ckn = "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
///         Cak = "abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directconnect.LookupConnection(ctx, &directconnect.LookupConnectionArgs{
/// 			Name: "tf-dx-connection",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewMacsecKeyAssociation(ctx, "example", &directconnect.MacsecKeyAssociationArgs{
/// 			ConnectionId: pulumi.String(example.Id),
/// 			Ckn:          pulumi.String("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"),
/// 			Cak:          pulumi.String("abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789"),
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
/// data "aws_directconnect_connection" "example" {
///   name = "tf-dx-connection"
/// }
///
/// resource "aws_directconnect_macsec_key_association" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   connection_id = data.aws_directconnect_connection.example.id
///   ckn           = "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"
///   cak           = "abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directconnect.DirectconnectFunctions;
/// import com.pulumi.aws.directconnect.inputs.GetConnectionArgs;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociation;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociationArgs;
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
///         final var example = DirectconnectFunctions.getConnection(GetConnectionArgs.builder()
///             .name("tf-dx-connection")
///             .build());
///
///         var exampleMacsecKeyAssociation = new MacsecKeyAssociation("exampleMacsecKeyAssociation", MacsecKeyAssociationArgs.builder()
///             .connectionId(example.id())
///             .ckn("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef")
///             .cak("abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMacsecKeyAssociation:
///     type: aws:directconnect:MacsecKeyAssociation
///     name: example
///     properties:
///       connectionId: ${example.id}
///       ckn: 0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
///       cak: abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789
/// variables:
///   example:
///     fn::invoke:
///       function: aws:directconnect:getConnection
///       arguments:
///         name: tf-dx-connection
/// ```
///
///
/// ### Create MACSec key with write-only CKN and CAK
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.directconnect.getConnection({
///     name: "tf-dx-connection",
/// });
/// const config = new pulumi.Config();
/// const cak = config.require("cak");
/// const ckn = config.require("ckn");
/// const exampleMacsecKeyAssociation = new aws.directconnect.MacsecKeyAssociation("example", {
///     connectionId: example.then(example => example.id),
///     cakWo: cak,
///     cakWoVersion: 1,
///     cknWo: ckn,
///     cknWoVersion: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.get_connection(name="tf-dx-connection")
/// config = pulumi.Config()
/// cak = config.require("cak")
/// ckn = config.require("ckn")
/// example_macsec_key_association = aws.directconnect.MacsecKeyAssociation("example",
///     connection_id=example.id,
///     cak_wo=cak,
///     cak_wo_version=1,
///     ckn_wo=ckn,
///     ckn_wo_version=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DirectConnect.GetConnection.Invoke(new()
///     {
///         Name = "tf-dx-connection",
///     });
///
///     var config = new Config();
///     var cak = config.Require("cak");
///     var ckn = config.Require("ckn");
///     var exampleMacsecKeyAssociation = new Aws.DirectConnect.MacsecKeyAssociation("example", new()
///     {
///         ConnectionId = example.Apply(getConnectionResult => getConnectionResult.Id),
///         CakWo = cak,
///         CakWoVersion = 1,
///         CknWo = ckn,
///         CknWoVersion = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directconnect.LookupConnection(ctx, &directconnect.LookupConnectionArgs{
/// 			Name: "tf-dx-connection",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		cak := cfg.Require("cak")
/// 		ckn := cfg.Require("ckn")
/// 		_, err = directconnect.NewMacsecKeyAssociation(ctx, "example", &directconnect.MacsecKeyAssociationArgs{
/// 			ConnectionId: pulumi.String(example.Id),
/// 			CakWo:        pulumi.String(cak),
/// 			CakWoVersion: pulumi.Int(1),
/// 			CknWo:        pulumi.String(ckn),
/// 			CknWoVersion: pulumi.Int(1),
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
/// data "aws_directconnect_connection" "example" {
///   name = "tf-dx-connection"
/// }
///
/// resource "aws_directconnect_macsec_key_association" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   connection_id  = data.aws_directconnect_connection.example.id
///   cak_wo         = var.cak
///   cak_wo_version = 1
///   ckn_wo         = var.ckn
///   ckn_wo_version = 1
/// }
/// variable "cak" {
///   type = string
/// }
/// variable "ckn" {
///   type = string
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directconnect.DirectconnectFunctions;
/// import com.pulumi.aws.directconnect.inputs.GetConnectionArgs;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociation;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociationArgs;
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
///         final var config = ctx.config();
///         final var example = DirectconnectFunctions.getConnection(GetConnectionArgs.builder()
///             .name("tf-dx-connection")
///             .build());
///
///         final var cak = config.require("cak");
///         final var ckn = config.require("ckn");
///         var exampleMacsecKeyAssociation = new MacsecKeyAssociation("exampleMacsecKeyAssociation", MacsecKeyAssociationArgs.builder()
///             .connectionId(example.id())
///             .cakWo(cak)
///             .cakWoVersion(1)
///             .cknWo(ckn)
///             .cknWoVersion(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   cak:
///     type: string
///   ckn:
///     type: string
/// resources:
///   exampleMacsecKeyAssociation:
///     type: aws:directconnect:MacsecKeyAssociation
///     name: example
///     properties:
///       connectionId: ${example.id}
///       cakWo: ${cak}
///       cakWoVersion: 1
///       cknWo: ${ckn}
///       cknWoVersion: 1
/// variables:
///   example:
///     fn::invoke:
///       function: aws:directconnect:getConnection
///       arguments:
///         name: tf-dx-connection
/// ```
///
///
/// Changing a write-only value alone does not trigger a change. Increment its corresponding `cakWoVersion` or `cknWoVersion` to replace the association with the new key material. The version counters are independent; increment both when changing both values.
///
/// ### Create MACSec key with existing Secrets Manager secret
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.directconnect.getConnection({
///     name: "tf-dx-connection",
/// });
/// const exampleGetSecret = aws.secretsmanager.getSecret({
///     name: "directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
/// });
/// const exampleMacsecKeyAssociation = new aws.directconnect.MacsecKeyAssociation("example", {
///     connectionId: example.then(example => example.id),
///     secretArn: exampleGetSecret.then(exampleGetSecret => exampleGetSecret.arn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.get_connection(name="tf-dx-connection")
/// example_get_secret = aws.secretsmanager.get_secret(name="directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef")
/// example_macsec_key_association = aws.directconnect.MacsecKeyAssociation("example",
///     connection_id=example.id,
///     secret_arn=example_get_secret.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DirectConnect.GetConnection.Invoke(new()
///     {
///         Name = "tf-dx-connection",
///     });
///
///     var exampleGetSecret = Aws.SecretsManager.GetSecret.Invoke(new()
///     {
///         Name = "directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
///     });
///
///     var exampleMacsecKeyAssociation = new Aws.DirectConnect.MacsecKeyAssociation("example", new()
///     {
///         ConnectionId = example.Apply(getConnectionResult => getConnectionResult.Id),
///         SecretArn = exampleGetSecret.Apply(getSecretResult => getSecretResult.Arn),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directconnect.LookupConnection(ctx, &directconnect.LookupConnectionArgs{
/// 			Name: "tf-dx-connection",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetSecret, err := secretsmanager.LookupSecret(ctx, &secretsmanager.LookupSecretArgs{
/// 			Name: pulumi.StringRef("directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewMacsecKeyAssociation(ctx, "example", &directconnect.MacsecKeyAssociationArgs{
/// 			ConnectionId: pulumi.String(example.Id),
/// 			SecretArn:    pulumi.String(exampleGetSecret.Arn),
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
/// data "aws_directconnect_connection" "example" {
///   name = "tf-dx-connection"
/// }
/// data "aws_secretsmanager_secret" "exampleGetSecret" {
///   name = "directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"
/// }
///
/// resource "aws_directconnect_macsec_key_association" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   connection_id = data.aws_directconnect_connection.example.id
///   secret_arn    = data.aws_secretsmanager_secret.exampleGetSecret.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directconnect.DirectconnectFunctions;
/// import com.pulumi.aws.directconnect.inputs.GetConnectionArgs;
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretArgs;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociation;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociationArgs;
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
///         final var example = DirectconnectFunctions.getConnection(GetConnectionArgs.builder()
///             .name("tf-dx-connection")
///             .build());
///
///         final var exampleGetSecret = SecretsmanagerFunctions.getSecret(GetSecretArgs.builder()
///             .name("directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef")
///             .build());
///
///         var exampleMacsecKeyAssociation = new MacsecKeyAssociation("exampleMacsecKeyAssociation", MacsecKeyAssociationArgs.builder()
///             .connectionId(example.id())
///             .secretArn(exampleGetSecret.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMacsecKeyAssociation:
///     type: aws:directconnect:MacsecKeyAssociation
///     name: example
///     properties:
///       connectionId: ${example.id}
///       secretArn: ${exampleGetSecret.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:directconnect:getConnection
///       arguments:
///         name: tf-dx-connection
///   exampleGetSecret:
///     fn::invoke:
///       function: aws:secretsmanager:getSecret
///       arguments:
///         name: directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
/// ```
class MacsecKeyAssociation extends pulumi.CustomResource {
  /// MAC Security (MACsec) CAK to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Required with `ckn` or `cknWo` unless `cakWo` is configured. Conflicts with `cakWo`. Changing this argument replaces the association.
  late final pulumi.Output<String?> cak;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only MAC Security (MACsec) CAK to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Requires `cakWoVersion` and either `ckn` or `cknWo`. Conflicts with `cak` and `secretArn`. This value is not stored in the plan or state.
  late final pulumi.Output<String?> cakWo;
  /// Positive integer used to trigger replacement when `cakWo` changes. Required with `cakWo`. Increment this value to replace the association using the current write-only values.
  late final pulumi.Output<int?> cakWoVersion;
  /// MAC Security (MACsec) CKN to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Required with `cak` or `cakWo` unless `cknWo` is configured. Conflicts with `cknWo`. Changing this argument replaces the association.
  late final pulumi.Output<String> ckn;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only MAC Security (MACsec) CKN to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Requires `cknWoVersion` and either `cak` or `cakWo`. Conflicts with `ckn` and `secretArn`. This value is not stored in the plan or state.
  late final pulumi.Output<String?> cknWo;
  /// Positive integer used to trigger replacement when `cknWo` changes. Required with `cknWo`. Increment this value to replace the association using the current write-only values.
  late final pulumi.Output<int?> cknWoVersion;
  /// ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> connectionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  ///
  /// &gt; **Note:** Supply either a CAK/CKN pair (using regular or write-only arguments) or `secretArn`. Do not combine key arguments with `secretArn`.
  late final pulumi.Output<String> secretArn;
  /// The date in UTC format that the MAC Security (MACsec) secret key takes effect.
  late final pulumi.Output<String> startOn;
  /// The state of the MAC Security (MACsec) secret key. The possible values are: associating, associated, disassociating, disassociated. See [MacSecKey](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_MacSecKey.html#DX-Type-MacSecKey-state) for descriptions of each state.
  late final pulumi.Output<String> state;

  /// Creates a new [MacsecKeyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MacsecKeyAssociation]. {@macro pulumi_directconnect_macsec_key_association_macsec_key_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MacsecKeyAssociation(
    String name, {
    MacsecKeyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/macsecKeyAssociation:MacsecKeyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.52.1').merge(options),
          additionalSecretOutputs: const ['cakWo', 'cknWo'],
        ) {
    cak = registerOutput<String?>('cak');
    cakWo = registerOutput<String?>('cakWo', isSecret: true);
    cakWoVersion = registerOutput<int?>('cakWoVersion');
    ckn = registerOutput<String>('ckn');
    cknWo = registerOutput<String?>('cknWo', isSecret: true);
    cknWoVersion = registerOutput<int?>('cknWoVersion');
    connectionId = registerOutput<String>('connectionId');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
    startOn = registerOutput<String>('startOn');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [MacsecKeyAssociation] resource's state with the given [name] and [id].
  static MacsecKeyAssociation get(
    String name,
    pulumi.Input<String> id, {
    MacsecKeyAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MacsecKeyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MacsecKeyAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/macsecKeyAssociation:MacsecKeyAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cak = registerOutput<String?>('cak');
    cakWo = registerOutput<String?>('cakWo', isSecret: true);
    cakWoVersion = registerOutput<int?>('cakWoVersion');
    ckn = registerOutput<String>('ckn');
    cknWo = registerOutput<String?>('cknWo', isSecret: true);
    cknWoVersion = registerOutput<int?>('cknWoVersion');
    connectionId = registerOutput<String>('connectionId');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
    startOn = registerOutput<String>('startOn');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [MacsecKeyAssociation] resource.
  MacsecKeyAssociation.reference(String urn)
    : super(
        'aws:directconnect/macsecKeyAssociation:MacsecKeyAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['cakWo', 'cknWo'],
        isResourceReference: true,
      ) {
    cak = registerOutput<String?>('cak');
    cakWo = registerOutput<String?>('cakWo', isSecret: true);
    cakWoVersion = registerOutput<int?>('cakWoVersion');
    ckn = registerOutput<String>('ckn');
    cknWo = registerOutput<String?>('cknWo', isSecret: true);
    cknWoVersion = registerOutput<int?>('cknWoVersion');
    connectionId = registerOutput<String>('connectionId');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
    startOn = registerOutput<String>('startOn');
    state = registerOutput<String>('state');
  }
}
