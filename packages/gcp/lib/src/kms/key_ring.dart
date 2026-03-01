import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_ring_args.dart';

/// A `KeyRing` is a toplevel logical grouping of `CryptoKeys`.
///
///
/// > **Note:** KeyRings cannot be deleted from Google Cloud Platform.
/// Destroying a provider-managed KeyRing will remove it from state but
/// *will not delete the resource from the project.*
///
///
/// To get more information about KeyRing, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings)
/// * How-to Guides
/// * [Creating a key ring](https://cloud.google.com/kms/docs/creating-keys#create_a_key_ring)
///
/// ## Example Usage
///
/// ### Kms Key Ring Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_keyring = new gcp.kms.KeyRing("example-keyring", {
///     name: "keyring-example",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_keyring = gcp.kms.KeyRing("example-keyring",
///     name="keyring-example",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_keyring = new Gcp.Kms.KeyRing("example-keyring", new()
///     {
///         Name = "keyring-example",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRing(ctx, "example-keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("keyring-example"),
/// 			Location: pulumi.String("global"),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
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
///         var example_keyring = new KeyRing("example-keyring", KeyRingArgs.builder()
///             .name("keyring-example")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: keyring-example
///       location: global
/// ```
///
///
/// ## Import
///
/// KeyRing can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/keyRings/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, KeyRing can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/keyRing:KeyRing default projects/{{project}}/locations/{{location}}/keyRings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/keyRing:KeyRing default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/keyRing:KeyRing default {{location}}/{{name}}
/// ```
class KeyRing extends pulumi.CustomResource {
  /// The location for the KeyRing.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  late final pulumi.Output<String> location;

  /// The resource name for the KeyRing.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [KeyRing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyRing]. {@macro pulumi_kms_key_ring_key_ring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyRing(
    String name, {
    KeyRingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:kms/keyRing:KeyRing',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
