import 'package:pulumi/pulumi.dart' as pulumi;
import 'alidns_instance_args.dart';
import 'alidns_instance_state.dart';

/// Create an Alidns Instance resource.
///
/// > **NOTE:** Available since v1.95.0.
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
/// const example = new alicloud.dns.AlidnsInstance("example", {
///     dnsSecurity: "no",
///     domainNumbers: "2",
///     period: 1,
///     renewPeriod: 1,
///     renewalStatus: "ManualRenewal",
///     versionCode: "version_personal",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.dns.AlidnsInstance("example",
///     dns_security="no",
///     domain_numbers="2",
///     period=1,
///     renew_period=1,
///     renewal_status="ManualRenewal",
///     version_code="version_personal")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Dns.AlidnsInstance("example", new()
///     {
///         DnsSecurity = "no",
///         DomainNumbers = "2",
///         Period = 1,
///         RenewPeriod = 1,
///         RenewalStatus = "ManualRenewal",
///         VersionCode = "version_personal",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewAlidnsInstance(ctx, "example", &dns.AlidnsInstanceArgs{
/// 			DnsSecurity:   pulumi.String("no"),
/// 			DomainNumbers: pulumi.String("2"),
/// 			Period:        pulumi.Int(1),
/// 			RenewPeriod:   pulumi.Int(1),
/// 			RenewalStatus: pulumi.String("ManualRenewal"),
/// 			VersionCode:   pulumi.String("version_personal"),
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
/// import com.pulumi.alicloud.dns.AlidnsInstance;
/// import com.pulumi.alicloud.dns.AlidnsInstanceArgs;
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
///         var example = new AlidnsInstance("example", AlidnsInstanceArgs.builder()
///             .dnsSecurity("no")
///             .domainNumbers("2")
///             .period(1)
///             .renewPeriod(1)
///             .renewalStatus("ManualRenewal")
///             .versionCode("version_personal")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:dns:AlidnsInstance
///     properties:
///       dnsSecurity: no
///       domainNumbers: '2'
///       period: 1
///       renewPeriod: 1
///       renewalStatus: ManualRenewal
///       versionCode: version_personal
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DNS instance be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/alidnsInstance:AlidnsInstance example dns-cn-v0h1ldjhfff
/// ```
class AlidnsInstance extends pulumi.CustomResource {
  /// Alidns security level. Valid values: `no`, `basic`, `advanced`.
  late final pulumi.Output<String> dnsSecurity;
  /// Number of domain names bound.
  late final pulumi.Output<String> domainNumbers;
  /// The billing method of the Alidns instance. Valid values: `Subscription`. Default to `Subscription`.
  late final pulumi.Output<String?> paymentType;
  /// Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  late final pulumi.Output<int?> period;
  /// Automatic renewal period, the unit is month. When setting RenewalStatus to AutoRenewal, it must be set.
  late final pulumi.Output<int?> renewPeriod;
  /// Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`, default to `ManualRenewal`.
  late final pulumi.Output<String> renewalStatus;
  /// Paid package version. Valid values: `version_personal`, `version_enterprise_basic`, `version_enterprise_advanced`.
  late final pulumi.Output<String> versionCode;
  /// Paid package version name.
  late final pulumi.Output<String> versionName;

  /// Creates a new [AlidnsInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlidnsInstance]. {@macro pulumi_dns_alidns_instance_alidns_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlidnsInstance(
    String name, {
    AlidnsInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/alidnsInstance:AlidnsInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dnsSecurity = registerOutput<String>('dnsSecurity');
    this.domainNumbers = registerOutput<String>('domainNumbers');
    this.paymentType = registerOutput<String?>('paymentType');
    this.period = registerOutput<int?>('period');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.versionCode = registerOutput<String>('versionCode');
    this.versionName = registerOutput<String>('versionName');
  }

  /// Gets an existing [AlidnsInstance] resource's state with the given [name] and [id].
  static AlidnsInstance get(
    String name,
    pulumi.Input<String> id, {
    AlidnsInstanceState? state,
  }) {
    return AlidnsInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlidnsInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/alidnsInstance:AlidnsInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dnsSecurity = registerOutput<String>('dnsSecurity');
    this.domainNumbers = registerOutput<String>('domainNumbers');
    this.paymentType = registerOutput<String?>('paymentType');
    this.period = registerOutput<int?>('period');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.versionCode = registerOutput<String>('versionCode');
    this.versionName = registerOutput<String>('versionName');
  }
}
