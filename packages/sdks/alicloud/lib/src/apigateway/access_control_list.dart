import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_list_acl_entry.dart';
import 'access_control_list_args.dart';
import 'access_control_list_state.dart';

/// Provides a Api Gateway Access Control List resource. Access control list.
///
/// For information about Api Gateway Access Control List and how to use it, see [What is Access Control List](https://www.alibabacloud.com/help/en/api-gateway/developer-reference/api-cloudapi-2016-07-14-createaccesscontrollist).
///
/// > **NOTE:** Available since v1.224.0.
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
/// const defaultxywS8c = new alicloud.apigateway.Instance("defaultxywS8c", {
///     instanceName: name,
///     instanceSpec: "api.s1.small",
///     httpsPolicy: "HTTPS2_TLS1_0",
///     zoneId: "cn-hangzhou-MAZ6",
///     paymentType: "PayAsYouGo",
/// });
/// const _default = new alicloud.apigateway.AccessControlList("default", {
///     accessControlListName: name,
///     addressIpVersion: "ipv4",
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
/// defaultxyw_s8c = alicloud.apigateway.Instance("defaultxywS8c",
///     instance_name=name,
///     instance_spec="api.s1.small",
///     https_policy="HTTPS2_TLS1_0",
///     zone_id="cn-hangzhou-MAZ6",
///     payment_type="PayAsYouGo")
/// default = alicloud.apigateway.AccessControlList("default",
///     access_control_list_name=name,
///     address_ip_version="ipv4")
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
///     var defaultxywS8c = new AliCloud.ApiGateway.Instance("defaultxywS8c", new()
///     {
///         InstanceName = name,
///         InstanceSpec = "api.s1.small",
///         HttpsPolicy = "HTTPS2_TLS1_0",
///         ZoneId = "cn-hangzhou-MAZ6",
///         PaymentType = "PayAsYouGo",
///     });
///
///     var @default = new AliCloud.ApiGateway.AccessControlList("default", new()
///     {
///         AccessControlListName = name,
///         AddressIpVersion = "ipv4",
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
/// 		_, err := apigateway.NewInstance(ctx, "defaultxywS8c", &apigateway.InstanceArgs{
/// 			InstanceName: pulumi.String(name),
/// 			InstanceSpec: pulumi.String("api.s1.small"),
/// 			HttpsPolicy:  pulumi.String("HTTPS2_TLS1_0"),
/// 			ZoneId:       pulumi.String("cn-hangzhou-MAZ6"),
/// 			PaymentType:  pulumi.String("PayAsYouGo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewAccessControlList(ctx, "default", &apigateway.AccessControlListArgs{
/// 			AccessControlListName: pulumi.String(name),
/// 			AddressIpVersion:      pulumi.String("ipv4"),
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
///         var defaultxywS8c = new Instance("defaultxywS8c", InstanceArgs.builder()
///             .instanceName(name)
///             .instanceSpec("api.s1.small")
///             .httpsPolicy("HTTPS2_TLS1_0")
///             .zoneId("cn-hangzhou-MAZ6")
///             .paymentType("PayAsYouGo")
///             .build());
///
///         var default_ = new AccessControlList("default", AccessControlListArgs.builder()
///             .accessControlListName(name)
///             .addressIpVersion("ipv4")
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
///   defaultxywS8c:
///     type: alicloud:apigateway:Instance
///     properties:
///       instanceName: ${name}
///       instanceSpec: api.s1.small
///       httpsPolicy: HTTPS2_TLS1_0
///       zoneId: cn-hangzhou-MAZ6
///       paymentType: PayAsYouGo
///   default:
///     type: alicloud:apigateway:AccessControlList
///     properties:
///       accessControlListName: ${name}
///       addressIpVersion: ipv4
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api Gateway Access Control List can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/accessControlList:AccessControlList example <id>
/// ```
class AccessControlList extends pulumi.CustomResource {
  /// Access control list name.
  late final pulumi.Output<String> accessControlListName;
  /// Information list of access control policies. You can add at most 50 IP addresses or CIDR blocks to an ACL in each call. If the IP address or CIDR block that you want to add to an ACL already exists, the IP address or CIDR block is not added. The entries that you add must be CIDR blocks. See `acl_entrys` below.
  /// **NOTE:** Field 'acl_entrys' has been deprecated from provider version 1.228.0, and it will be removed in the future version. Please use the new resource 'alicloud_api_gateway_acl_entry_attachment'.
  late final pulumi.Output<List<AccessControlListAclEntry>> aclEntrys;
  /// The IP version. Valid values: ipv4 and ipv6.
  late final pulumi.Output<String> addressIpVersion;

  /// Creates a new [AccessControlList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessControlList]. {@macro pulumi_apigateway_access_control_list_access_control_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessControlList(
    String name, {
    AccessControlListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/accessControlList:AccessControlList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessControlListName = registerOutput<String>('accessControlListName');
    this.aclEntrys = registerOutput<List<AccessControlListAclEntry>>('aclEntrys');
    this.addressIpVersion = registerOutput<String>('addressIpVersion');
  }

  /// Gets an existing [AccessControlList] resource's state with the given [name] and [id].
  static AccessControlList get(
    String name,
    pulumi.Input<String> id, {
    AccessControlListState? state,
  }) {
    return AccessControlList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessControlList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/accessControlList:AccessControlList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessControlListName = registerOutput<String>('accessControlListName');
    this.aclEntrys = registerOutput<List<AccessControlListAclEntry>>('aclEntrys');
    this.addressIpVersion = registerOutput<String>('addressIpVersion');
  }
}
