import 'package:pulumi/pulumi.dart' as pulumi;
import 'cipher_group_args.dart';

/// `f5bigip.ltm.CipherGroup` Manages F5 BIG-IP LTM cipher group using iControl REST.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_cipher_group = new f5bigip.ltm.CipherGroup("test-cipher-group", {
///     name: "/Common/test-cipher-group-01",
///     allows: ["/Common/f5-aes"],
///     requires: ["/Common/f5-quic"],
///     ordering: "speed",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_cipher_group = f5bigip.ltm.CipherGroup("test-cipher-group",
///     name="/Common/test-cipher-group-01",
///     allows=["/Common/f5-aes"],
///     requires=["/Common/f5-quic"],
///     ordering="speed")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_cipher_group = new F5BigIP.Ltm.CipherGroup("test-cipher-group", new()
///     {
///         Name = "/Common/test-cipher-group-01",
///         Allows = new[]
///         {
///             "/Common/f5-aes",
///         },
///         Requires = new[]
///         {
///             "/Common/f5-quic",
///         },
///         Ordering = "speed",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewCipherGroup(ctx, "test-cipher-group", &ltm.CipherGroupArgs{
/// 			Name: pulumi.String("/Common/test-cipher-group-01"),
/// 			Allows: pulumi.StringArray{
/// 				pulumi.String("/Common/f5-aes"),
/// 			},
/// 			Requires: pulumi.StringArray{
/// 				pulumi.String("/Common/f5-quic"),
/// 			},
/// 			Ordering: pulumi.String("speed"),
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
/// import com.pulumi.f5bigip.ltm.CipherGroup;
/// import com.pulumi.f5bigip.ltm.CipherGroupArgs;
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
///         var test_cipher_group = new CipherGroup("test-cipher-group", CipherGroupArgs.builder()
///             .name("/Common/test-cipher-group-01")
///             .allows("/Common/f5-aes")
///             .requires("/Common/f5-quic")
///             .ordering("speed")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-cipher-group:
///     type: f5bigip:ltm:CipherGroup
///     properties:
///       name: /Common/test-cipher-group-01
///       allows:
///         - /Common/f5-aes
///       requires:
///         - /Common/f5-quic
///       ordering: speed
/// ```
///
///
/// ## Importing
///
/// An existing cipher group can be imported into this resource by supplying the cipher rule full path name ex : `/partition/name`
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_cipher_group.test_cipher_group /Common/test_cipher_group
///
/// ```
class CipherGroup extends pulumi.CustomResource {
  /// Specifies the configuration of the allowed groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no allowed ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  late final pulumi.Output<List<String>?> allows;
  /// Specifies descriptive text that identifies the cipher rule
  late final pulumi.Output<String?> description;
  /// Name of the Cipher group. Name should be in pattern `partition` + `cipher_group_name`
  late final pulumi.Output<String> name;
  /// Controls the order of the Cipher String list in the Cipher Audit section. Options are Default, Speed, Strength, FIPS, and Hardware. The rules are processed in the order listed. The default is `default`.
  late final pulumi.Output<String?> ordering;
  /// Specifies the configuration of the restrict groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no restricted ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  late final pulumi.Output<List<String>?> requires;

  /// Creates a new [CipherGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CipherGroup]. {@macro pulumi_ltm_cipher_group_cipher_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CipherGroup(
    String name, {
    CipherGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/cipherGroup:CipherGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allows = registerOutput<List<String>?>('allows');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.ordering = registerOutput<String?>('ordering');
    this.requires = registerOutput<List<String>?>('requires');
  }
}
