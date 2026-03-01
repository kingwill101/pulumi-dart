import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_args.dart';
import 'acl_entry_list.dart';
import 'acl_state.dart';

/// An access control list contains multiple IP addresses or CIDR blocks.
/// The access control list can help you to define multiple instance listening dimension,
/// and to meet the multiple usage for single access control list.
///
/// Server Load Balancer allows you to configure access control for listeners.
/// You can configure different whitelists or blacklists for different listeners.
///
/// You can configure access control
/// when you create a listener or change access control configuration after a listener is created.
///
/// > **NOTE:** One access control list can be attached to many Listeners in different load balancer as whitelists or blacklists.
///
/// > **NOTE:** The maximum number of access control lists per region  is 50.
///
/// > **NOTE:** The maximum number of IP addresses added each time is 50.
///
/// > **NOTE:** The maximum number of entries per access control list is 300.
///
/// > **NOTE:** The maximum number of listeners that an access control list can be added to is 50.
///
/// For information about slb and how to use it, see [What is Server Load Balancer](https://www.alibabacloud.com/help/doc-detail/27539.htm).
///
/// For information about acl and how to use it, see [Configure an access control list](https://www.alibabacloud.com/help/doc-detail/70015.htm).
///
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const acl = new alicloud.slb.Acl("acl", {
///     name: "terraformslbaclconfig",
///     ipVersion: "ipv4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// acl = alicloud.slb.Acl("acl",
///     name="terraformslbaclconfig",
///     ip_version="ipv4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acl = new AliCloud.Slb.Acl("acl", new()
///     {
///         Name = "terraformslbaclconfig",
///         IpVersion = "ipv4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := slb.NewAcl(ctx, "acl", &slb.AclArgs{
/// 			Name:      pulumi.String("terraformslbaclconfig"),
/// 			IpVersion: pulumi.String("ipv4"),
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
/// import com.pulumi.alicloud.slb.Acl;
/// import com.pulumi.alicloud.slb.AclArgs;
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
///         var acl = new Acl("acl", AclArgs.builder()
///             .name("terraformslbaclconfig")
///             .ipVersion("ipv4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   acl:
///     type: alicloud:slb:Acl
///     properties:
///       name: terraformslbaclconfig
///       ipVersion: ipv4
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Entry Block
///
/// The entry mapping supports the following:
///
/// * `entry` - (Optional, Computed) The CIDR blocks.
/// * `comment` - (Optional, Computed) The comment of the entry.
///
/// ## Import
///
/// Server Load balancer access control list can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/acl:Acl example acl-abc123456
/// ```
class Acl extends pulumi.CustomResource {
  /// A list of entry (CIDR blocks) to be added. It contains two sub-fields as `Entry Block` follows. **NOTE:** "Field 'entry_list' has been deprecated from provider version 1.162.0 and it will be removed in the future version. Please use the new resource 'alicloud_slb_acl_entry_attachment'.",
  late final pulumi.Output<List<AclEntryList>> entryLists;
  /// The IP Version of access control list is the type of its entry (IP addresses or CIDR blocks). It values ipv4/ipv6. Our plugin provides a default ip_version: "ipv4".
  late final pulumi.Output<String?> ipVersion;
  /// Name of the access control list.
  late final pulumi.Output<String> name;
  /// Resource group ID.
  late final pulumi.Output<String> resourceGroupId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Acl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Acl]. {@macro pulumi_slb_acl_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Acl(
    String name, {
    AclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/acl:Acl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.entryLists = registerOutput<List<AclEntryList>>('entryLists');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.name = registerOutput<String>('name');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Acl] resource's state with the given [name] and [id].
  static Acl get(
    String name,
    pulumi.Input<String> id, {
    AclState? state,
  }) {
    return Acl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Acl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/acl:Acl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.entryLists = registerOutput<List<AclEntryList>>('entryLists');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.name = registerOutput<String>('name');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
