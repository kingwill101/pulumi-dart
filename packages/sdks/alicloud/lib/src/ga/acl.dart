import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_args.dart';
import 'acl_state.dart';

/// Provides a Global Accelerator (GA) Acl resource.
///
/// For information about Global Accelerator (GA) Acl and how to use it, see [What is Acl](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createacl).
///
/// &gt; **NOTE:** Available since v1.150.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.ga.Acl("default", {
///     aclName: "terraform-example",
///     addressIpVersion: "IPv4",
/// });
/// const defaultAclEntryAttachment = new alicloud.ga.AclEntryAttachment("default", {
///     aclId: _default.id,
///     entry: "192.168.1.1/32",
///     entryDescription: "terraform-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.Acl("default",
///     acl_name="terraform-example",
///     address_ip_version="IPv4")
/// default_acl_entry_attachment = alicloud.ga.AclEntryAttachment("default",
///     acl_id=default.id,
///     entry="192.168.1.1/32",
///     entry_description="terraform-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ga.Acl("default", new()
///     {
///         AclName = "terraform-example",
///         AddressIpVersion = "IPv4",
///     });
///
///     var defaultAclEntryAttachment = new AliCloud.Ga.AclEntryAttachment("default", new()
///     {
///         AclId = @default.Id,
///         Entry = "192.168.1.1/32",
///         EntryDescription = "terraform-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ga.NewAcl(ctx, "default", &ga.AclArgs{
/// 			AclName:          pulumi.String("terraform-example"),
/// 			AddressIpVersion: pulumi.String("IPv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewAclEntryAttachment(ctx, "default", &ga.AclEntryAttachmentArgs{
/// 			AclId:            _default.ID(),
/// 			Entry:            pulumi.String("192.168.1.1/32"),
/// 			EntryDescription: pulumi.String("terraform-example"),
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
/// import com.pulumi.alicloud.ga.Acl;
/// import com.pulumi.alicloud.ga.AclArgs;
/// import com.pulumi.alicloud.ga.AclEntryAttachment;
/// import com.pulumi.alicloud.ga.AclEntryAttachmentArgs;
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
///         var default_ = new Acl("default", AclArgs.builder()
///             .aclName("terraform-example")
///             .addressIpVersion("IPv4")
///             .build());
///
///         var defaultAclEntryAttachment = new AclEntryAttachment("defaultAclEntryAttachment", AclEntryAttachmentArgs.builder()
///             .aclId(default_.id())
///             .entry("192.168.1.1/32")
///             .entryDescription("terraform-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ga:Acl
///     properties:
///       aclName: terraform-example
///       addressIpVersion: IPv4
///   defaultAclEntryAttachment:
///     type: alicloud:ga:AclEntryAttachment
///     name: default
///     properties:
///       aclId: ${default.id}
///       entry: 192.168.1.1/32
///       entryDescription: terraform-example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Acl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/acl:Acl example <id>
/// ```
class Acl extends pulumi.CustomResource {
  /// The entries of the Acl. See `acl_entries` below. **NOTE:** "Field `acl_entries` has been deprecated from provider version 1.190.0 and it will be removed in the future version. Please use the new resource `alicloud.ga.AclEntryAttachment`."
  late final pulumi.Output<List<Map<String, dynamic>>> aclEntries;

  /// The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), hyphens (-) and underscores (_). It must start with a letter.
  late final pulumi.Output<String?> aclName;

  /// The IP version. Valid values: `IPv4` and `IPv6`.
  late final pulumi.Output<String> addressIpVersion;

  /// The dry run.
  late final pulumi.Output<bool?> dryRun;

  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Acl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Acl]. {@macro pulumi_ga_acl_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Acl(String name, {AclArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:ga/acl:Acl',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    aclEntries = registerOutput<List<Map<String, dynamic>>>('aclEntries');
    aclName = registerOutput<String?>('aclName');
    addressIpVersion = registerOutput<String>('addressIpVersion');
    dryRun = registerOutput<bool?>('dryRun');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Acl] resource's state with the given [name] and [id].
  static Acl get(String name, pulumi.Input<String> id, {AclState? state}) {
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
         'alicloud:ga/acl:Acl',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclEntries = registerOutput<List<Map<String, dynamic>>>('aclEntries');
    aclName = registerOutput<String?>('aclName');
    addressIpVersion = registerOutput<String>('addressIpVersion');
    dryRun = registerOutput<bool?>('dryRun');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
