import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_entry_attachment_args.dart';
import 'acl_entry_attachment_state.dart';

/// > **NOTE:** Available since v1.162.0.
///
/// > **NOTE:** The maximum number of entries per acl is 300.
///
/// For information about acl entry attachment and how to use it, see [Configure an acl entry](https://www.alibabacloud.com/help/en/doc-detail/70023.html).
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
/// const attachment = new alicloud.slb.Acl("attachment", {
///     name: "forSlbAclEntryAttachment",
///     ipVersion: "ipv4",
/// });
/// const attachmentAclEntryAttachment = new alicloud.slb.AclEntryAttachment("attachment", {
///     aclId: attachment.id,
///     entry: "168.10.10.0/24",
///     comment: "second",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// attachment = alicloud.slb.Acl("attachment",
///     name="forSlbAclEntryAttachment",
///     ip_version="ipv4")
/// attachment_acl_entry_attachment = alicloud.slb.AclEntryAttachment("attachment",
///     acl_id=attachment.id,
///     entry="168.10.10.0/24",
///     comment="second")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var attachment = new AliCloud.Slb.Acl("attachment", new()
///     {
///         Name = "forSlbAclEntryAttachment",
///         IpVersion = "ipv4",
///     });
///
///     var attachmentAclEntryAttachment = new AliCloud.Slb.AclEntryAttachment("attachment", new()
///     {
///         AclId = attachment.Id,
///         Entry = "168.10.10.0/24",
///         Comment = "second",
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
/// 		attachment, err := slb.NewAcl(ctx, "attachment", &slb.AclArgs{
/// 			Name:      pulumi.String("forSlbAclEntryAttachment"),
/// 			IpVersion: pulumi.String("ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewAclEntryAttachment(ctx, "attachment", &slb.AclEntryAttachmentArgs{
/// 			AclId:   attachment.ID(),
/// 			Entry:   pulumi.String("168.10.10.0/24"),
/// 			Comment: pulumi.String("second"),
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
/// import com.pulumi.alicloud.slb.AclEntryAttachment;
/// import com.pulumi.alicloud.slb.AclEntryAttachmentArgs;
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
///         var attachment = new Acl("attachment", AclArgs.builder()
///             .name("forSlbAclEntryAttachment")
///             .ipVersion("ipv4")
///             .build());
///
///         var attachmentAclEntryAttachment = new AclEntryAttachment("attachmentAclEntryAttachment", AclEntryAttachmentArgs.builder()
///             .aclId(attachment.id())
///             .entry("168.10.10.0/24")
///             .comment("second")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   attachment:
///     type: alicloud:slb:Acl
///     properties:
///       name: forSlbAclEntryAttachment
///       ipVersion: ipv4
///   attachmentAclEntryAttachment:
///     type: alicloud:slb:AclEntryAttachment
///     name: attachment
///     properties:
///       aclId: ${attachment.id}
///       entry: 168.10.10.0/24
///       comment: second
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Acl entry attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/aclEntryAttachment:AclEntryAttachment example <acl_id>:<entry>
/// ```
class AclEntryAttachment extends pulumi.CustomResource {
  /// The ID of the Acl.
  late final pulumi.Output<String> aclId;
  /// The comment of the entry.
  late final pulumi.Output<String?> comment;
  /// The CIDR blocks.
  late final pulumi.Output<String> entry;

  /// Creates a new [AclEntryAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclEntryAttachment]. {@macro pulumi_slb_acl_entry_attachment_acl_entry_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclEntryAttachment(
    String name, {
    AclEntryAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/aclEntryAttachment:AclEntryAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclId = registerOutput<String>('aclId');
    this.comment = registerOutput<String?>('comment');
    this.entry = registerOutput<String>('entry');
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
          'alicloud:slb/aclEntryAttachment:AclEntryAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclId = registerOutput<String>('aclId');
    this.comment = registerOutput<String?>('comment');
    this.entry = registerOutput<String>('entry');
  }
}
