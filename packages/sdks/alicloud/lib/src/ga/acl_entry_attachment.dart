import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_entry_attachment_args.dart';
import 'acl_entry_attachment_state.dart';

/// Provides a Global Accelerator (GA) Acl Entry Attachment resource.
///
/// For information about Global Accelerator (GA) Acl Entry Attachment and how to use it, see [What is Acl Entry Attachment](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-addentriestoacl).
///
/// &gt; **NOTE:** Available since v1.190.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.ga.Acl("default", {
///     addressIpVersion: "IPv4",
///     aclName: name,
/// });
/// const defaultAclEntryAttachment = new alicloud.ga.AclEntryAttachment("default", {
///     aclId: _default.id,
///     entry: "192.168.1.1/32",
///     entryDescription: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.ga.Acl("default",
///     address_ip_version="IPv4",
///     acl_name=name)
/// default_acl_entry_attachment = alicloud.ga.AclEntryAttachment("default",
///     acl_id=default.id,
///     entry="192.168.1.1/32",
///     entry_description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Ga.Acl("default", new()
///     {
///         AddressIpVersion = "IPv4",
///         AclName = name,
///     });
///
///     var defaultAclEntryAttachment = new AliCloud.Ga.AclEntryAttachment("default", new()
///     {
///         AclId = @default.Id,
///         Entry = "192.168.1.1/32",
///         EntryDescription = name,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := ga.NewAcl(ctx, "default", &ga.AclArgs{
/// 			AddressIpVersion: pulumi.String("IPv4"),
/// 			AclName:          pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewAclEntryAttachment(ctx, "default", &ga.AclEntryAttachmentArgs{
/// 			AclId:            _default.ID(),
/// 			Entry:            pulumi.String("192.168.1.1/32"),
/// 			EntryDescription: pulumi.String(name),
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Acl("default", AclArgs.builder()
///             .addressIpVersion("IPv4")
///             .aclName(name)
///             .build());
///
///         var defaultAclEntryAttachment = new AclEntryAttachment("defaultAclEntryAttachment", AclEntryAttachmentArgs.builder()
///             .aclId(default_.id())
///             .entry("192.168.1.1/32")
///             .entryDescription(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:ga:Acl
///     properties:
///       addressIpVersion: IPv4
///       aclName: ${name}
///   defaultAclEntryAttachment:
///     type: alicloud:ga:AclEntryAttachment
///     name: default
///     properties:
///       aclId: ${default.id}
///       entry: 192.168.1.1/32
///       entryDescription: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Acl Entry Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/aclEntryAttachment:AclEntryAttachment example <acl_id>:<entry>
/// ```
class AclEntryAttachment extends pulumi.CustomResource {
  /// The ID of the Acl.
  late final pulumi.Output<String> aclId;

  /// The entry (IP address or CIDR block) that you want to add.
  late final pulumi.Output<String> entry;

  /// The description of the entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), and underscores (_).
  late final pulumi.Output<String?> entryDescription;

  /// The status of the Acl Entry Attachment.
  late final pulumi.Output<String> status;

  /// Creates a new [AclEntryAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclEntryAttachment]. {@macro pulumi_ga_acl_entry_attachment_acl_entry_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclEntryAttachment(
    String name, {
    AclEntryAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/aclEntryAttachment:AclEntryAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclId = registerOutput<String>('aclId');
    entry = registerOutput<String>('entry');
    entryDescription = registerOutput<String?>('entryDescription');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AclEntryAttachment] resource's state with the given [name] and [id].
  static AclEntryAttachment get(
    String name,
    pulumi.Input<String> id, {
    AclEntryAttachmentState? state,
  }) {
    return AclEntryAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AclEntryAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/aclEntryAttachment:AclEntryAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclId = registerOutput<String>('aclId');
    entry = registerOutput<String>('entry');
    entryDescription = registerOutput<String?>('entryDescription');
    status = registerOutput<String>('status');
  }
}
