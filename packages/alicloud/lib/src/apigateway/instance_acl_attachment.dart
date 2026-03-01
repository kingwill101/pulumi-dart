import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_acl_attachment_args.dart';

/// Provides an Instance ACL attachment resource for attaching an ACL to a specific API Gateway instance.
///
/// > **NOTE:** Available since v1.228.0.
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
/// const _default = new alicloud.apigateway.Instance("default", {
///     instanceName: name,
///     instanceSpec: "api.s1.small",
///     httpsPolicy: "HTTPS2_TLS1_0",
///     zoneId: "cn-hangzhou-MAZ6",
///     paymentType: "PayAsYouGo",
///     instanceType: "normal",
/// });
/// const defaultAccessControlList = new alicloud.apigateway.AccessControlList("default", {
///     accessControlListName: name,
///     addressIpVersion: "ipv4",
/// });
/// const defaultAclEntryAttachment = new alicloud.apigateway.AclEntryAttachment("default", {
///     aclId: defaultAccessControlList.id,
///     entry: "128.0.0.1/32",
///     comment: "test comment",
/// });
/// const defaultInstanceAclAttachment = new alicloud.apigateway.InstanceAclAttachment("default", {
///     instanceId: _default.id,
///     aclId: defaultAccessControlList.id,
///     aclType: "white",
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
/// default = alicloud.apigateway.Instance("default",
///     instance_name=name,
///     instance_spec="api.s1.small",
///     https_policy="HTTPS2_TLS1_0",
///     zone_id="cn-hangzhou-MAZ6",
///     payment_type="PayAsYouGo",
///     instance_type="normal")
/// default_access_control_list = alicloud.apigateway.AccessControlList("default",
///     access_control_list_name=name,
///     address_ip_version="ipv4")
/// default_acl_entry_attachment = alicloud.apigateway.AclEntryAttachment("default",
///     acl_id=default_access_control_list.id,
///     entry="128.0.0.1/32",
///     comment="test comment")
/// default_instance_acl_attachment = alicloud.apigateway.InstanceAclAttachment("default",
///     instance_id=default.id,
///     acl_id=default_access_control_list.id,
///     acl_type="white")
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
///     var @default = new AliCloud.ApiGateway.Instance("default", new()
///     {
///         InstanceName = name,
///         InstanceSpec = "api.s1.small",
///         HttpsPolicy = "HTTPS2_TLS1_0",
///         ZoneId = "cn-hangzhou-MAZ6",
///         PaymentType = "PayAsYouGo",
///         InstanceType = "normal",
///     });
///
///     var defaultAccessControlList = new AliCloud.ApiGateway.AccessControlList("default", new()
///     {
///         AccessControlListName = name,
///         AddressIpVersion = "ipv4",
///     });
///
///     var defaultAclEntryAttachment = new AliCloud.ApiGateway.AclEntryAttachment("default", new()
///     {
///         AclId = defaultAccessControlList.Id,
///         Entry = "128.0.0.1/32",
///         Comment = "test comment",
///     });
///
///     var defaultInstanceAclAttachment = new AliCloud.ApiGateway.InstanceAclAttachment("default", new()
///     {
///         InstanceId = @default.Id,
///         AclId = defaultAccessControlList.Id,
///         AclType = "white",
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
/// 		_default, err := apigateway.NewInstance(ctx, "default", &apigateway.InstanceArgs{
/// 			InstanceName: pulumi.String(name),
/// 			InstanceSpec: pulumi.String("api.s1.small"),
/// 			HttpsPolicy:  pulumi.String("HTTPS2_TLS1_0"),
/// 			ZoneId:       pulumi.String("cn-hangzhou-MAZ6"),
/// 			PaymentType:  pulumi.String("PayAsYouGo"),
/// 			InstanceType: pulumi.String("normal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccessControlList, err := apigateway.NewAccessControlList(ctx, "default", &apigateway.AccessControlListArgs{
/// 			AccessControlListName: pulumi.String(name),
/// 			AddressIpVersion:      pulumi.String("ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewAclEntryAttachment(ctx, "default", &apigateway.AclEntryAttachmentArgs{
/// 			AclId:   defaultAccessControlList.ID(),
/// 			Entry:   pulumi.String("128.0.0.1/32"),
/// 			Comment: pulumi.String("test comment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewInstanceAclAttachment(ctx, "default", &apigateway.InstanceAclAttachmentArgs{
/// 			InstanceId: _default.ID(),
/// 			AclId:      defaultAccessControlList.ID(),
/// 			AclType:    pulumi.String("white"),
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
/// import com.pulumi.alicloud.apigateway.Instance;
/// import com.pulumi.alicloud.apigateway.InstanceArgs;
/// import com.pulumi.alicloud.apigateway.AccessControlList;
/// import com.pulumi.alicloud.apigateway.AccessControlListArgs;
/// import com.pulumi.alicloud.apigateway.AclEntryAttachment;
/// import com.pulumi.alicloud.apigateway.AclEntryAttachmentArgs;
/// import com.pulumi.alicloud.apigateway.InstanceAclAttachment;
/// import com.pulumi.alicloud.apigateway.InstanceAclAttachmentArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceName(name)
///             .instanceSpec("api.s1.small")
///             .httpsPolicy("HTTPS2_TLS1_0")
///             .zoneId("cn-hangzhou-MAZ6")
///             .paymentType("PayAsYouGo")
///             .instanceType("normal")
///             .build());
///
///         var defaultAccessControlList = new AccessControlList("defaultAccessControlList", AccessControlListArgs.builder()
///             .accessControlListName(name)
///             .addressIpVersion("ipv4")
///             .build());
///
///         var defaultAclEntryAttachment = new AclEntryAttachment("defaultAclEntryAttachment", AclEntryAttachmentArgs.builder()
///             .aclId(defaultAccessControlList.id())
///             .entry("128.0.0.1/32")
///             .comment("test comment")
///             .build());
///
///         var defaultInstanceAclAttachment = new InstanceAclAttachment("defaultInstanceAclAttachment", InstanceAclAttachmentArgs.builder()
///             .instanceId(default_.id())
///             .aclId(defaultAccessControlList.id())
///             .aclType("white")
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
///     type: alicloud:apigateway:Instance
///     properties:
///       instanceName: ${name}
///       instanceSpec: api.s1.small
///       httpsPolicy: HTTPS2_TLS1_0
///       zoneId: cn-hangzhou-MAZ6
///       paymentType: PayAsYouGo
///       instanceType: normal
///   defaultAccessControlList:
///     type: alicloud:apigateway:AccessControlList
///     name: default
///     properties:
///       accessControlListName: ${name}
///       addressIpVersion: ipv4
///   defaultAclEntryAttachment:
///     type: alicloud:apigateway:AclEntryAttachment
///     name: default
///     properties:
///       aclId: ${defaultAccessControlList.id}
///       entry: 128.0.0.1/32
///       comment: test comment
///   defaultInstanceAclAttachment:
///     type: alicloud:apigateway:InstanceAclAttachment
///     name: default
///     properties:
///       instanceId: ${default.id}
///       aclId: ${defaultAccessControlList.id}
///       aclType: white
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api Gateway Instance Acl Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/instanceAclAttachment:InstanceAclAttachment example <instance_id>:<acl_id>:<acl_type>
/// ```
class InstanceAclAttachment extends pulumi.CustomResource {
  /// The ID of the ACL to attach.
  late final pulumi.Output<String> aclId;
  /// The type of the ACL. Valid values: `white`, `black`.
  late final pulumi.Output<String> aclType;
  /// The ID of the API Gateway instance that the ACL will be attached to.
  late final pulumi.Output<String> instanceId;

  /// Creates a new [InstanceAclAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAclAttachment]. {@macro pulumi_apigateway_instance_acl_attachment_instance_acl_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAclAttachment(
    String name, {
    InstanceAclAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/instanceAclAttachment:InstanceAclAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclId = registerOutput<String>('aclId');
    this.aclType = registerOutput<String>('aclType');
    this.instanceId = registerOutput<String>('instanceId');
  }
}
