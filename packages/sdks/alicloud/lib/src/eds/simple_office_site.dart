import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_office_site_args.dart';
import 'simple_office_site_state.dart';

/// Provides a ECD Simple Office Site resource.
///
/// For information about ECD Simple Office Site and how to use it, see [What is Simple Office Site](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-ecd-2020-09-30-createsimpleofficesite).
///
/// &gt; **NOTE:** Available since v1.140.0.
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
/// 		_, err = eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// 			CidrBlock:         pulumi.String("172.16.0.0/12"),
/// 			EnableAdminAccess: pulumi.Bool(true),
/// 			DesktopAccessType: pulumi.String("Internet"),
/// 			OfficeSiteName:    pulumi.Sprintf("terraform-example-%v", _default.Result),
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Simple Office Site can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/simpleOfficeSite:SimpleOfficeSite example <id>
/// ```
class SimpleOfficeSite extends pulumi.CustomResource {
  /// The Internet Bandwidth Peak. It has been deprecated from version 1.142.0 and can be found in the new resource alicloud_ecd_network_package.
  late final pulumi.Output<int> bandwidth;
  /// Cloud Enterprise Network Instance ID.
  late final pulumi.Output<String?> cenId;
  /// The cen owner id.
  late final pulumi.Output<String?> cenOwnerId;
  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  late final pulumi.Output<String> cidrBlock;
  /// Connect to the Cloud Desktop Allows the Use of the Access Mode of. Valid values: `Any`, `Internet`, `VPC`.
  late final pulumi.Output<String> desktopAccessType;
  /// Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  late final pulumi.Output<bool> enableAdminAccess;
  /// Enable Cross-Desktop Access.
  late final pulumi.Output<bool> enableCrossDesktopAccess;
  /// Whether the Open Internet Access Function.
  late final pulumi.Output<bool> enableInternetAccess;
  /// Whether to Enable Multi-Factor Authentication MFA.
  late final pulumi.Output<bool> mfaEnabled;
  /// The office site name.
  late final pulumi.Output<String?> officeSiteName;
  /// Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  late final pulumi.Output<bool> ssoEnabled;
  /// Workspace State. Valid Values: `REGISTERED`,`REGISTERING`.
  late final pulumi.Output<String> status;

  /// Creates a new [SimpleOfficeSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SimpleOfficeSite]. {@macro pulumi_eds_simple_office_site_simple_office_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SimpleOfficeSite(
    String name, {
    SimpleOfficeSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/simpleOfficeSite:SimpleOfficeSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int>('bandwidth');
    cenId = registerOutput<String?>('cenId');
    cenOwnerId = registerOutput<String?>('cenOwnerId');
    cidrBlock = registerOutput<String>('cidrBlock');
    desktopAccessType = registerOutput<String>('desktopAccessType');
    enableAdminAccess = registerOutput<bool>('enableAdminAccess');
    enableCrossDesktopAccess = registerOutput<bool>('enableCrossDesktopAccess');
    enableInternetAccess = registerOutput<bool>('enableInternetAccess');
    mfaEnabled = registerOutput<bool>('mfaEnabled');
    officeSiteName = registerOutput<String?>('officeSiteName');
    ssoEnabled = registerOutput<bool>('ssoEnabled');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [SimpleOfficeSite] resource's state with the given [name] and [id].
  static SimpleOfficeSite get(
    String name,
    pulumi.Input<String> id, {
    SimpleOfficeSiteState? state,
  }) {
    return SimpleOfficeSite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SimpleOfficeSite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/simpleOfficeSite:SimpleOfficeSite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int>('bandwidth');
    cenId = registerOutput<String?>('cenId');
    cenOwnerId = registerOutput<String?>('cenOwnerId');
    cidrBlock = registerOutput<String>('cidrBlock');
    desktopAccessType = registerOutput<String>('desktopAccessType');
    enableAdminAccess = registerOutput<bool>('enableAdminAccess');
    enableCrossDesktopAccess = registerOutput<bool>('enableCrossDesktopAccess');
    enableInternetAccess = registerOutput<bool>('enableInternetAccess');
    mfaEnabled = registerOutput<bool>('mfaEnabled');
    officeSiteName = registerOutput<String?>('officeSiteName');
    ssoEnabled = registerOutput<bool>('ssoEnabled');
    status = registerOutput<String>('status');
  }
}
