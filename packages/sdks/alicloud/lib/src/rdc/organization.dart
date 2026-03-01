import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_args.dart';
import 'organization_state.dart';

/// Provides a RDC Organization resource.
///
/// For information about RDC Organization and how to use it, see [What is Organization](https://www.alibabacloud.com/help/en/yunxiao/product-overview/what-is-cloud-effect).
///
/// > **NOTE:** Available since v1.137.0.
///
/// > **DEPRECATED:** This resource has been deprecated from version `1.238.0`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.rdc.Organization("example", {
///     organizationName: "example_value",
///     source: "example_value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rdc.Organization("example",
///     organization_name="example_value",
///     source="example_value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Rdc.Organization("example", new()
///     {
///         OrganizationName = "example_value",
///         Source = "example_value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rdc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rdc.NewOrganization(ctx, "example", &rdc.OrganizationArgs{
/// 			OrganizationName: pulumi.String("example_value"),
/// 			Source:           pulumi.String("example_value"),
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
/// import com.pulumi.alicloud.rdc.Organization;
/// import com.pulumi.alicloud.rdc.OrganizationArgs;
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
///         var example = new Organization("example", OrganizationArgs.builder()
///             .organizationName("example_value")
///             .source("example_value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:rdc:Organization
///     properties:
///       organizationName: example_value
///       source: example_value
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDC Organization can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rdc/organization:Organization example <id>
/// ```
class Organization extends pulumi.CustomResource {
  /// The desired member count.
  late final pulumi.Output<int?> desiredMemberCount;
  /// Company name.
  late final pulumi.Output<String> organizationName;
  /// User pk, not required, only required when the ak used by the calling interface is inconsistent with the user pk
  late final pulumi.Output<String?> realPk;
  /// This is organization source information
  late final pulumi.Output<String> source;

  /// Creates a new [Organization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Organization]. {@macro pulumi_rdc_organization_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Organization(
    String name, {
    OrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rdc/organization:Organization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.desiredMemberCount = registerOutput<int?>('desiredMemberCount');
    this.organizationName = registerOutput<String>('organizationName');
    this.realPk = registerOutput<String?>('realPk');
    this.source = registerOutput<String>('source');
  }

  /// Gets an existing [Organization] resource's state with the given [name] and [id].
  static Organization get(
    String name,
    pulumi.Input<String> id, {
    OrganizationState? state,
  }) {
    return Organization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Organization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rdc/organization:Organization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.desiredMemberCount = registerOutput<int?>('desiredMemberCount');
    this.organizationName = registerOutput<String>('organizationName');
    this.realPk = registerOutput<String?>('realPk');
    this.source = registerOutput<String>('source');
  }
}
