import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_entry_attachment_args.dart';
import 'acl_entry_attachment_state.dart';

/// Provides an ACL entry attachment resource for attaching ACL entry to an API Gateway ACL.
///
/// > **NOTE:** Available since v1.228.0
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
/// const name = config.get("name") || "terraform_example";
/// const _default = new alicloud.apigateway.AccessControlList("default", {
///     accessControlListName: name,
///     addressIpVersion: "ipv4",
/// });
/// const defaultAclEntryAttachment = new alicloud.apigateway.AclEntryAttachment("default", {
///     aclId: _default.id,
///     entry: "128.0.0.1/32",
///     comment: "test comment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default = alicloud.apigateway.AccessControlList("default",
///     access_control_list_name=name,
///     address_ip_version="ipv4")
/// default_acl_entry_attachment = alicloud.apigateway.AclEntryAttachment("default",
///     acl_id=default.id,
///     entry="128.0.0.1/32",
///     comment="test comment")
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
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = new AliCloud.ApiGateway.AccessControlList("default", new()
///     {
///         AccessControlListName = name,
///         AddressIpVersion = "ipv4",
///     });
///
///     var defaultAclEntryAttachment = new AliCloud.ApiGateway.AclEntryAttachment("default", new()
///     {
///         AclId = @default.Id,
///         Entry = "128.0.0.1/32",
///         Comment = "test comment",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := apigateway.NewAccessControlList(ctx, "default", &apigateway.AccessControlListArgs{
/// 			AccessControlListName: pulumi.String(name),
/// 			AddressIpVersion:      pulumi.String("ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewAclEntryAttachment(ctx, "default", &apigateway.AclEntryAttachmentArgs{
/// 			AclId:   _default.ID(),
/// 			Entry:   pulumi.String("128.0.0.1/32"),
/// 			Comment: pulumi.String("test comment"),
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
/// import com.pulumi.alicloud.apigateway.AccessControlList;
/// import com.pulumi.alicloud.apigateway.AccessControlListArgs;
/// import com.pulumi.alicloud.apigateway.AclEntryAttachment;
/// import com.pulumi.alicloud.apigateway.AclEntryAttachmentArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var default_ = new AccessControlList("default", AccessControlListArgs.builder()
///             .accessControlListName(name)
///             .addressIpVersion("ipv4")
///             .build());
///
///         var defaultAclEntryAttachment = new AclEntryAttachment("defaultAclEntryAttachment", AclEntryAttachmentArgs.builder()
///             .aclId(default_.id())
///             .entry("128.0.0.1/32")
///             .comment("test comment")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   default:
///     type: alicloud:apigateway:AccessControlList
///     properties:
///       accessControlListName: ${name}
///       addressIpVersion: ipv4
///   defaultAclEntryAttachment:
///     type: alicloud:apigateway:AclEntryAttachment
///     name: default
///     properties:
///       aclId: ${default.id}
///       entry: 128.0.0.1/32
///       comment: test comment
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api Gateway Acl Entry Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/aclEntryAttachment:AclEntryAttachment example <acl_id>:<entry>
/// ```
class AclEntryAttachment extends pulumi.CustomResource {
  /// The ID of the ACL that the entry will be attached to.
  late final pulumi.Output<String> aclId;
  /// The comment for the entry.
  late final pulumi.Output<String?> comment;
  /// The CIDR block of the entry to attach.
  late final pulumi.Output<String> entry;

  /// Creates a new [AclEntryAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclEntryAttachment]. {@macro pulumi_apigateway_acl_entry_attachment_acl_entry_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclEntryAttachment(
    String name, {
    AclEntryAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/aclEntryAttachment:AclEntryAttachment',
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
          'alicloud:apigateway/aclEntryAttachment:AclEntryAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclId = registerOutput<String>('aclId');
    this.comment = registerOutput<String?>('comment');
    this.entry = registerOutput<String>('entry');
  }
}
