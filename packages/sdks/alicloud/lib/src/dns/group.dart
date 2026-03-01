import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// > **DEPRECATED:**  This resource  has been deprecated from version `1.84.0`. Please use new resource alicloud_alidns_domain_group.
///
/// Provides a DNS Group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Add a new Domain group.
/// const group = new alicloud.dns.Group("group", {name: "testgroup"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Add a new Domain group.
/// group = alicloud.dns.Group("group", name="testgroup")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Add a new Domain group.
///     var @group = new AliCloud.Dns.Group("group", new()
///     {
///         Name = "testgroup",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Add a new Domain group.
/// 		_, err := dns.NewGroup(ctx, "group", &dns.GroupArgs{
/// 			Name: pulumi.String("testgroup"),
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
/// import com.pulumi.alicloud.dns.Group;
/// import com.pulumi.alicloud.dns.GroupArgs;
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
///         // Add a new Domain group.
///         var group = new Group("group", GroupArgs.builder()
///             .name("testgroup")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Add a new Domain group.
///   group:
///     type: alicloud:dns:Group
///     properties:
///       name: testgroup
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class Group extends pulumi.CustomResource {
  /// Name of the domain group.
  late final pulumi.Output<String> name;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_dns_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
  }
}
