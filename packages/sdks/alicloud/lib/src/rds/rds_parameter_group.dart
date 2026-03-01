import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_parameter_group_args.dart';
import 'rds_parameter_group_param_detail.dart';
import 'rds_parameter_group_state.dart';

/// Provides a RDS Parameter Group resource.
///
/// For information about RDS Parameter Group and how to use it, see [What is Parameter Group](https://www.alibabacloud.com/help/en/doc-detail/144839.htm).
///
/// > **NOTE:** Available since v1.119.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = new alicloud.rds.RdsParameterGroup("default", {
///     engine: "mysql",
///     engineVersion: "5.7",
///     paramDetails: [
///         {
///             paramName: "back_log",
///             paramValue: "4000",
///         },
///         {
///             paramName: "wait_timeout",
///             paramValue: "86460",
///         },
///     ],
///     parameterGroupDesc: name,
///     parameterGroupName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.rds.RdsParameterGroup("default",
///     engine="mysql",
///     engine_version="5.7",
///     param_details=[
///         {
///             "param_name": "back_log",
///             "param_value": "4000",
///         },
///         {
///             "param_name": "wait_timeout",
///             "param_value": "86460",
///         },
///     ],
///     parameter_group_desc=name,
///     parameter_group_name=name)
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new AliCloud.Rds.RdsParameterGroup("default", new()
///     {
///         Engine = "mysql",
///         EngineVersion = "5.7",
///         ParamDetails = new[]
///         {
///             new AliCloud.Rds.Inputs.RdsParameterGroupParamDetailArgs
///             {
///                 ParamName = "back_log",
///                 ParamValue = "4000",
///             },
///             new AliCloud.Rds.Inputs.RdsParameterGroupParamDetailArgs
///             {
///                 ParamName = "wait_timeout",
///                 ParamValue = "86460",
///             },
///         },
///         ParameterGroupDesc = name,
///         ParameterGroupName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := rds.NewRdsParameterGroup(ctx, "default", &rds.RdsParameterGroupArgs{
/// 			Engine:        pulumi.String("mysql"),
/// 			EngineVersion: pulumi.String("5.7"),
/// 			ParamDetails: rds.RdsParameterGroupParamDetailArray{
/// 				&rds.RdsParameterGroupParamDetailArgs{
/// 					ParamName:  pulumi.String("back_log"),
/// 					ParamValue: pulumi.String("4000"),
/// 				},
/// 				&rds.RdsParameterGroupParamDetailArgs{
/// 					ParamName:  pulumi.String("wait_timeout"),
/// 					ParamValue: pulumi.String("86460"),
/// 				},
/// 			},
/// 			ParameterGroupDesc: pulumi.String(name),
/// 			ParameterGroupName: pulumi.String(name),
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
/// import com.pulumi.alicloud.rds.RdsParameterGroup;
/// import com.pulumi.alicloud.rds.RdsParameterGroupArgs;
/// import com.pulumi.alicloud.rds.inputs.RdsParameterGroupParamDetailArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         var default_ = new RdsParameterGroup("default", RdsParameterGroupArgs.builder()
///             .engine("mysql")
///             .engineVersion("5.7")
///             .paramDetails(
///                 RdsParameterGroupParamDetailArgs.builder()
///                     .paramName("back_log")
///                     .paramValue("4000")
///                     .build(),
///                 RdsParameterGroupParamDetailArgs.builder()
///                     .paramName("wait_timeout")
///                     .paramValue("86460")
///                     .build())
///             .parameterGroupDesc(name)
///             .parameterGroupName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   default:
///     type: alicloud:rds:RdsParameterGroup
///     properties:
///       engine: mysql
///       engineVersion: '5.7'
///       paramDetails:
///         - paramName: back_log
///           paramValue: '4000'
///         - paramName: wait_timeout
///           paramValue: '86460'
///       parameterGroupDesc: ${name}
///       parameterGroupName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Parameter Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/rdsParameterGroup:RdsParameterGroup example <id>
/// ```
class RdsParameterGroup extends pulumi.CustomResource {
  /// The database engine. Valid values: `mysql`, `mariadb`, `PostgreSQL`.
  late final pulumi.Output<String> engine;
  /// The version of the database engine. Valid values: mysql: `5.1`, `5.5`, `5.6`, `5.7`, `8.0`; mariadb: `10.3`; PostgreSQL: `10.0`, `11.0`, `12.0`, `13.0`, `14.0`, `15.0`.
  late final pulumi.Output<String> engineVersion;
  /// Parameter list. See `param_detail` below.
  late final pulumi.Output<List<RdsParameterGroupParamDetail>> paramDetails;
  /// The description of the parameter template.
  late final pulumi.Output<String?> parameterGroupDesc;
  /// The name of the parameter template.
  late final pulumi.Output<String> parameterGroupName;

  /// Creates a new [RdsParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsParameterGroup]. {@macro pulumi_rds_rds_parameter_group_rds_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsParameterGroup(
    String name, {
    RdsParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsParameterGroup:RdsParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.paramDetails = registerOutput<List<RdsParameterGroupParamDetail>>('paramDetails');
    this.parameterGroupDesc = registerOutput<String?>('parameterGroupDesc');
    this.parameterGroupName = registerOutput<String>('parameterGroupName');
  }

  /// Gets an existing [RdsParameterGroup] resource's state with the given [name] and [id].
  static RdsParameterGroup get(
    String name,
    pulumi.Input<String> id, {
    RdsParameterGroupState? state,
  }) {
    return RdsParameterGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RdsParameterGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsParameterGroup:RdsParameterGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.paramDetails = registerOutput<List<RdsParameterGroupParamDetail>>('paramDetails');
    this.parameterGroupDesc = registerOutput<String?>('parameterGroupDesc');
    this.parameterGroupName = registerOutput<String>('parameterGroupName');
  }
}
