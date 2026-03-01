import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_package_args.dart';
import 'network_package_state.dart';

/// Provides a ECD Network Package resource.
///
/// For information about ECD Network Package and how to use it, see [What is Network Package](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-ecd-2020-09-30-createnetworkpackage).
///
/// > **NOTE:** Available since v1.142.0.
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
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultSimpleOfficeSite = new alicloud.eds.SimpleOfficeSite("default", {
///     cidrBlock: "172.16.0.0/12",
///     enableAdminAccess: true,
///     desktopAccessType: "Internet",
///     officeSiteName: `terraform-example-${_default.result}`,
/// });
/// const defaultNetworkPackage = new alicloud.eds.NetworkPackage("default", {
///     bandwidth: 10,
///     officeSiteId: defaultSimpleOfficeSite.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_simple_office_site = alicloud.eds.SimpleOfficeSite("default",
///     cidr_block="172.16.0.0/12",
///     enable_admin_access=True,
///     desktop_access_type="Internet",
///     office_site_name=f"terraform-example-{default['result']}")
/// default_network_package = alicloud.eds.NetworkPackage("default",
///     bandwidth=10,
///     office_site_id=default_simple_office_site.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultSimpleOfficeSite = new AliCloud.Eds.SimpleOfficeSite("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         EnableAdminAccess = true,
///         DesktopAccessType = "Internet",
///         OfficeSiteName = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultNetworkPackage = new AliCloud.Eds.NetworkPackage("default", new()
///     {
///         Bandwidth = 10,
///         OfficeSiteId = defaultSimpleOfficeSite.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSimpleOfficeSite, err := eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// 			CidrBlock:         pulumi.String("172.16.0.0/12"),
/// 			EnableAdminAccess: pulumi.Bool(true),
/// 			DesktopAccessType: pulumi.String("Internet"),
/// 			OfficeSiteName:    pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eds.NewNetworkPackage(ctx, "default", &eds.NetworkPackageArgs{
/// 			Bandwidth:    pulumi.Int(10),
/// 			OfficeSiteId: defaultSimpleOfficeSite.ID(),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.eds.NetworkPackage;
/// import com.pulumi.alicloud.eds.NetworkPackageArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultSimpleOfficeSite = new SimpleOfficeSite("defaultSimpleOfficeSite", SimpleOfficeSiteArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .enableAdminAccess(true)
///             .desktopAccessType("Internet")
///             .officeSiteName(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultNetworkPackage = new NetworkPackage("defaultNetworkPackage", NetworkPackageArgs.builder()
///             .bandwidth(10)
///             .officeSiteId(defaultSimpleOfficeSite.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultSimpleOfficeSite:
///     type: alicloud:eds:SimpleOfficeSite
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/12
///       enableAdminAccess: true
///       desktopAccessType: Internet
///       officeSiteName: terraform-example-${default.result}
///   defaultNetworkPackage:
///     type: alicloud:eds:NetworkPackage
///     name: default
///     properties:
///       bandwidth: 10
///       officeSiteId: ${defaultSimpleOfficeSite.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Network Package can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/networkPackage:NetworkPackage example <id>
/// ```
class NetworkPackage extends pulumi.CustomResource {
  /// The bandwidth of package public network bandwidth peak. Valid values: 1~200. Unit:Mbps.
  late final pulumi.Output<int> bandwidth;
  /// The internet charge type  of  package.
  late final pulumi.Output<String> internetChargeType;
  /// The ID of office site.
  late final pulumi.Output<String> officeSiteId;
  /// The status of network package. Valid values: `Creating`, `InUse`, `Releasing`,`Released`.
  late final pulumi.Output<String> status;

  /// Creates a new [NetworkPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPackage]. {@macro pulumi_eds_network_package_network_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPackage(
    String name, {
    NetworkPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/networkPackage:NetworkPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidth = registerOutput<int>('bandwidth');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.officeSiteId = registerOutput<String>('officeSiteId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [NetworkPackage] resource's state with the given [name] and [id].
  static NetworkPackage get(
    String name,
    pulumi.Input<String> id, {
    NetworkPackageState? state,
  }) {
    return NetworkPackage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkPackage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/networkPackage:NetworkPackage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidth = registerOutput<int>('bandwidth');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.officeSiteId = registerOutput<String>('officeSiteId');
    this.status = registerOutput<String>('status');
  }
}
