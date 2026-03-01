import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_related_record_args.dart';
import 'routine_related_record_state.dart';

/// Provides a ESA Routine Related Record resource.
///
///
///
/// For information about ESA Routine Related Record and how to use it, see [What is Routine Related Record](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateRoutineRelatedRecord).
///
/// > **NOTE:** Available since v1.265.0.
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
/// const name = config.get("name") || "terraform-example";
/// const defaultRoutine = new alicloud.esa.Routine("default", {
///     description: "example-routine2",
///     name: "example-routine2",
/// });
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultRoutineRelatedRecord = new alicloud.esa.RoutineRelatedRecord("default", {
///     name: defaultRoutine.id,
///     recordName: "tfexampleacc.com",
///     siteId: "618651327383200",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_routine = alicloud.esa.Routine("default",
///     description="example-routine2",
///     name="example-routine2")
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_routine_related_record = alicloud.esa.RoutineRelatedRecord("default",
///     name=default_routine.id,
///     record_name="tfexampleacc.com",
///     site_id="618651327383200")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultRoutine = new AliCloud.Esa.Routine("default", new()
///     {
///         Description = "example-routine2",
///         Name = "example-routine2",
///     });
///
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultRoutineRelatedRecord = new AliCloud.Esa.RoutineRelatedRecord("default", new()
///     {
///         Name = defaultRoutine.Id,
///         RecordName = "tfexampleacc.com",
///         SiteId = "618651327383200",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultRoutine, err := esa.NewRoutine(ctx, "default", &esa.RoutineArgs{
/// 			Description: pulumi.String("example-routine2"),
/// 			Name:        pulumi.String("example-routine2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewRoutineRelatedRecord(ctx, "default", &esa.RoutineRelatedRecordArgs{
/// 			Name:       defaultRoutine.ID(),
/// 			RecordName: pulumi.String("tfexampleacc.com"),
/// 			SiteId:     pulumi.String("618651327383200"),
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
/// import com.pulumi.alicloud.esa.Routine;
/// import com.pulumi.alicloud.esa.RoutineArgs;
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.alicloud.esa.RoutineRelatedRecord;
/// import com.pulumi.alicloud.esa.RoutineRelatedRecordArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var defaultRoutine = new Routine("defaultRoutine", RoutineArgs.builder()
///             .description("example-routine2")
///             .name("example-routine2")
///             .build());
///
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultRoutineRelatedRecord = new RoutineRelatedRecord("defaultRoutineRelatedRecord", RoutineRelatedRecordArgs.builder()
///             .name(defaultRoutine.id())
///             .recordName("tfexampleacc.com")
///             .siteId("618651327383200")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultRoutine:
///     type: alicloud:esa:Routine
///     name: default
///     properties:
///       description: example-routine2
///       name: example-routine2
///   defaultRoutineRelatedRecord:
///     type: alicloud:esa:RoutineRelatedRecord
///     name: default
///     properties:
///       name: ${defaultRoutine.id}
///       recordName: tfexampleacc.com
///       siteId: '618651327383200'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Routine Related Record can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/routineRelatedRecord:RoutineRelatedRecord example <name>:<record_id>
/// ```
class RoutineRelatedRecord extends pulumi.CustomResource {
  /// The routine name.
  late final pulumi.Output<String> name;
  /// The record ID.
  late final pulumi.Output<int> recordId;
  /// The record name.
  late final pulumi.Output<String> recordName;
  /// The website ID.
  late final pulumi.Output<String> siteId;

  /// Creates a new [RoutineRelatedRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutineRelatedRecord]. {@macro pulumi_esa_routine_related_record_routine_related_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutineRelatedRecord(
    String name, {
    RoutineRelatedRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/routineRelatedRecord:RoutineRelatedRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.recordId = registerOutput<int>('recordId');
    this.recordName = registerOutput<String>('recordName');
    this.siteId = registerOutput<String>('siteId');
  }

  /// Gets an existing [RoutineRelatedRecord] resource's state with the given [name] and [id].
  static RoutineRelatedRecord get(
    String name,
    pulumi.Input<String> id, {
    RoutineRelatedRecordState? state,
  }) {
    return RoutineRelatedRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoutineRelatedRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/routineRelatedRecord:RoutineRelatedRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.recordId = registerOutput<int>('recordId');
    this.recordName = registerOutput<String>('recordName');
    this.siteId = registerOutput<String>('siteId');
  }
}
