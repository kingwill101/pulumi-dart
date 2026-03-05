import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_group_args.dart';
import 'domain_group_state.dart';

/// Provides a Alidns Domain Group resource. For information about Alidns Domain Group and how to use it, see [What is Resource Alidns Domain Group](https://www.alibabacloud.com/help/en/doc-detail/29762.htm).
///
/// &gt; **NOTE:** Available since v1.84.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.dns.DomainGroup("default", {domainGroupName: "tf-example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dns.DomainGroup("default", domain_group_name="tf-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Dns.DomainGroup("default", new()
///     {
///         DomainGroupName = "tf-example",
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
/// 		_, err := dns.NewDomainGroup(ctx, "default", &dns.DomainGroupArgs{
/// 			DomainGroupName: pulumi.String("tf-example"),
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
/// import com.pulumi.alicloud.dns.DomainGroup;
/// import com.pulumi.alicloud.dns.DomainGroupArgs;
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
///         var default_ = new DomainGroup("default", DomainGroupArgs.builder()
///             .domainGroupName("tf-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:dns:DomainGroup
///     properties:
///       domainGroupName: tf-example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alidns domain group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/domainGroup:DomainGroup example 0932eb3ddee7499085c4d13d45*****
/// ```
class DomainGroup extends pulumi.CustomResource {
  /// The Name of the domain group. The `domain_group_name` is required when the value of the `group_name`  is Empty.
  late final pulumi.Output<String> domainGroupName;
  /// The Name of the domain group. The `group_name` has been deprecated from provider version 1.97.0. Please use `domain_group_name` instead.
  late final pulumi.Output<String> groupName;
  /// User language.
  late final pulumi.Output<String?> lang;

  /// Creates a new [DomainGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainGroup]. {@macro pulumi_dns_domain_group_domain_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainGroup(
    String name, {
    DomainGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/domainGroup:DomainGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainGroupName = registerOutput<String>('domainGroupName');
    groupName = registerOutput<String>('groupName');
    lang = registerOutput<String?>('lang');
  }

  /// Gets an existing [DomainGroup] resource's state with the given [name] and [id].
  static DomainGroup get(
    String name,
    pulumi.Input<String> id, {
    DomainGroupState? state,
  }) {
    return DomainGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/domainGroup:DomainGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainGroupName = registerOutput<String>('domainGroupName');
    groupName = registerOutput<String>('groupName');
    lang = registerOutput<String?>('lang');
  }
}
