import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_state.dart';

/// Provides a Direct Mail Domain resource.
///
/// For information about Direct Mail Domain and how to use it, see [What is Domain](https://www.alibabacloud.com/help/en/doc-detail/29414.htm).
///
/// > **NOTE:** Available since v1.134.0.
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
/// const example = new alicloud.directmail.Domain("example", {domainName: `alicloud-provider-${_default.result}.online`});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.directmail.Domain("example", domain_name=f"alicloud-provider-{default['result']}.online")
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
///     var example = new AliCloud.DirectMail.Domain("example", new()
///     {
///         DomainName = $"alicloud-provider-{@default.Result}.online",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/directmail"
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
/// 		_, err = directmail.NewDomain(ctx, "example", &directmail.DomainArgs{
/// 			DomainName: pulumi.Sprintf("alicloud-provider-%v.online", _default.Result),
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
/// import com.pulumi.alicloud.directmail.Domain;
/// import com.pulumi.alicloud.directmail.DomainArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName(String.format("alicloud-provider-%s.online", default_.result()))
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
///   example:
///     type: alicloud:directmail:Domain
///     properties:
///       domainName: alicloud-provider-${default.result}.online
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Direct Mail Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:directmail/domain:Domain example <id>
/// ```
class Domain extends pulumi.CustomResource {
  /// Domain, length `1` to `50`, including numbers or capitals or lowercase letters or `.` or `-`
  late final pulumi.Output<String> domainName;
  /// The status of the domain name. Valid values:`0` to `4`. `0`:Available, Passed. `1`: Unavailable, No passed. `2`: Available, cname no passed, icp no passed. `3`: Available, icp no passed. `4`: Available, cname no passed.
  late final pulumi.Output<String> status;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_directmail_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:directmail/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:directmail/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.status = registerOutput<String>('status');
  }
}
