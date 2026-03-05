import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_acl_args.dart';
import 'service_endpoint_acl_state.dart';

/// Provides a Message Service Endpoint Acl resource.
///
///
///
/// For information about Message Service Endpoint Acl and how to use it, see [What is Endpoint Acl](https://www.alibabacloud.com/help/en/mns/developer-reference/api-mns-open-2022-01-19-authorizeendpointacl).
///
/// &gt; **NOTE:** Available since v1.243.0.
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
/// const _default = new alicloud.message.ServiceEndpoint("default", {
///     endpointEnabled: true,
///     endpointType: "public",
/// });
/// const defaultServiceEndpointAcl = new alicloud.message.ServiceEndpointAcl("default", {
///     cidr: "192.168.1.1/23",
///     endpointType: _default.id,
///     aclStrategy: "allow",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.message.ServiceEndpoint("default",
///     endpoint_enabled=True,
///     endpoint_type="public")
/// default_service_endpoint_acl = alicloud.message.ServiceEndpointAcl("default",
///     cidr="192.168.1.1/23",
///     endpoint_type=default.id,
///     acl_strategy="allow")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Message.ServiceEndpoint("default", new()
///     {
///         EndpointEnabled = true,
///         EndpointType = "public",
///     });
///
///     var defaultServiceEndpointAcl = new AliCloud.Message.ServiceEndpointAcl("default", new()
///     {
///         Cidr = "192.168.1.1/23",
///         EndpointType = @default.Id,
///         AclStrategy = "allow",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/message"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := message.NewServiceEndpoint(ctx, "default", &message.ServiceEndpointArgs{
/// 			EndpointEnabled: pulumi.Bool(true),
/// 			EndpointType:    pulumi.String("public"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = message.NewServiceEndpointAcl(ctx, "default", &message.ServiceEndpointAclArgs{
/// 			Cidr:         pulumi.String("192.168.1.1/23"),
/// 			EndpointType: _default.ID(),
/// 			AclStrategy:  pulumi.String("allow"),
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
/// import com.pulumi.alicloud.message.ServiceEndpoint;
/// import com.pulumi.alicloud.message.ServiceEndpointArgs;
/// import com.pulumi.alicloud.message.ServiceEndpointAcl;
/// import com.pulumi.alicloud.message.ServiceEndpointAclArgs;
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
///         var default_ = new ServiceEndpoint("default", ServiceEndpointArgs.builder()
///             .endpointEnabled(true)
///             .endpointType("public")
///             .build());
///
///         var defaultServiceEndpointAcl = new ServiceEndpointAcl("defaultServiceEndpointAcl", ServiceEndpointAclArgs.builder()
///             .cidr("192.168.1.1/23")
///             .endpointType(default_.id())
///             .aclStrategy("allow")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:message:ServiceEndpoint
///     properties:
///       endpointEnabled: true
///       endpointType: public
///   defaultServiceEndpointAcl:
///     type: alicloud:message:ServiceEndpointAcl
///     name: default
///     properties:
///       cidr: 192.168.1.1/23
///       endpointType: ${default.id}
///       aclStrategy: allow
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Message Service Endpoint Acl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:message/serviceEndpointAcl:ServiceEndpointAcl example <endpoint_type>:<acl_strategy>:<cidr>
/// ```
class ServiceEndpointAcl extends pulumi.CustomResource {
  /// The ACL policy. Valid value:
  /// - allow: indicates that the current endpoint allows access from the corresponding CIDR block. (Only allow is supported)
  late final pulumi.Output<String> aclStrategy;
  late final pulumi.Output<String> cidr;
  /// Access point type. Value:
  /// - public: indicates a public access point. (Currently only public is supported)
  late final pulumi.Output<String> endpointType;

  /// Creates a new [ServiceEndpointAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceEndpointAcl]. {@macro pulumi_message_service_endpoint_acl_service_endpoint_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceEndpointAcl(
    String name, {
    ServiceEndpointAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:message/serviceEndpointAcl:ServiceEndpointAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclStrategy = registerOutput<String>('aclStrategy');
    cidr = registerOutput<String>('cidr');
    endpointType = registerOutput<String>('endpointType');
  }

  /// Gets an existing [ServiceEndpointAcl] resource's state with the given [name] and [id].
  static ServiceEndpointAcl get(
    String name,
    pulumi.Input<String> id, {
    ServiceEndpointAclState? state,
  }) {
    return ServiceEndpointAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceEndpointAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:message/serviceEndpointAcl:ServiceEndpointAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclStrategy = registerOutput<String>('aclStrategy');
    cidr = registerOutput<String>('cidr');
    endpointType = registerOutput<String>('endpointType');
  }
}
