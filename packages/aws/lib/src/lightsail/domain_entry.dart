import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_entry_args.dart';

/// Manages a Lightsail domain entry (DNS record). Use this resource to define how DNS queries for your domain are handled.
///
/// > **NOTE on `id`:** In an effort to simplify imports, this resource `id` field has been updated to the standard resource id separator, a comma (`,`). For backward compatibility, the previous separator (underscore `_`) can still be used to read and import existing resources. When state is refreshed, the `id` will be updated to use the new standard separator. The previous separator will be deprecated in a future major release.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Domain("example", {domainName: "example.com"});
/// const exampleDomainEntry = new aws.lightsail.DomainEntry("example", {
///     domainName: example.domainName,
///     name: "www",
///     type: "A",
///     target: "127.0.0.1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Domain("example", domain_name="example.com")
/// example_domain_entry = aws.lightsail.DomainEntry("example",
///     domain_name=example.domain_name,
///     name="www",
///     type="A",
///     target="127.0.0.1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.Domain("example", new()
///     {
///         DomainName = "example.com",
///     });
///
///     var exampleDomainEntry = new Aws.LightSail.DomainEntry("example", new()
///     {
///         DomainName = example.DomainName,
///         Name = "www",
///         Type = "A",
///         Target = "127.0.0.1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lightsail.NewDomain(ctx, "example", &lightsail.DomainArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lightsail.NewDomainEntry(ctx, "example", &lightsail.DomainEntryArgs{
/// 			DomainName: example.DomainName,
/// 			Name:       pulumi.String("www"),
/// 			Type:       pulumi.String("A"),
/// 			Target:     pulumi.String("127.0.0.1"),
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
/// import com.pulumi.aws.lightsail.Domain;
/// import com.pulumi.aws.lightsail.DomainArgs;
/// import com.pulumi.aws.lightsail.DomainEntry;
/// import com.pulumi.aws.lightsail.DomainEntryArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("example.com")
///             .build());
///
///         var exampleDomainEntry = new DomainEntry("exampleDomainEntry", DomainEntryArgs.builder()
///             .domainName(example.domainName())
///             .name("www")
///             .type("A")
///             .target("127.0.0.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Domain
///     properties:
///       domainName: example.com
///   exampleDomainEntry:
///     type: aws:lightsail:DomainEntry
///     name: example
///     properties:
///       domainName: ${example.domainName}
///       name: www
///       type: A
///       target: 127.0.0.1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Domain Entry using the id attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/domainEntry:DomainEntry example www,example.com,A,127.0.0.1
/// ```
class DomainEntry extends pulumi.CustomResource {
  /// Name of the Lightsail domain in which to create the entry.
  late final pulumi.Output<String> domainName;
  /// Whether the entry should be an alias. Default: `false`.
  late final pulumi.Output<bool?> isAlias;
  /// Name of the entry record.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Target of the domain entry.
  late final pulumi.Output<String> target;
  /// Type of record. Valid values: `A`, `AAAA`, `CNAME`, `MX`, `NS`, `SOA`, `SRV`, `TXT`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [DomainEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainEntry]. {@macro pulumi_lightsail_domain_entry_domain_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainEntry(
    String name, {
    DomainEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/domainEntry:DomainEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.isAlias = registerOutput<bool?>('isAlias');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.target = registerOutput<String>('target');
    this.type = registerOutput<String>('type');
  }
}
