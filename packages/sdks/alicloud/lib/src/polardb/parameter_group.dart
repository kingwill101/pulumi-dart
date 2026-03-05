import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_args.dart';
import 'parameter_group_state.dart';

/// Provides a Polar Db Parameter Group resource.
///
///
///
/// For information about Polar Db Parameter Group and how to use it, see [What is Parameter Group](https://www.alibabacloud.com/help/en/polardb/polardb-for-mysql/user-guide/apply-a-parameter-template).
///
/// &gt; **NOTE:** Available since v1.183.0.
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
/// const example = new alicloud.polardb.ParameterGroup("example", {
///     parameterGroupName: "example_value",
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     parameters: [{
///         paramName: "wait_timeout",
///         paramValue: "86400",
///     }],
///     description: "example_value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.polardb.ParameterGroup("example",
///     parameter_group_name="example_value",
///     db_type="MySQL",
///     db_version="8.0",
///     parameters=[{
///         "param_name": "wait_timeout",
///         "param_value": "86400",
///     }],
///     description="example_value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.PolarDB.ParameterGroup("example", new()
///     {
///         ParameterGroupName = "example_value",
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         Parameters = new[]
///         {
///             new AliCloud.PolarDB.Inputs.ParameterGroupParameterArgs
///             {
///                 ParamName = "wait_timeout",
///                 ParamValue = "86400",
///             },
///         },
///         Description = "example_value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := polardb.NewParameterGroup(ctx, "example", &polardb.ParameterGroupArgs{
/// 			ParameterGroupName: pulumi.String("example_value"),
/// 			DbType:             pulumi.String("MySQL"),
/// 			DbVersion:          pulumi.String("8.0"),
/// 			Parameters: polardb.ParameterGroupParameterArray{
/// 				&polardb.ParameterGroupParameterArgs{
/// 					ParamName:  pulumi.String("wait_timeout"),
/// 					ParamValue: pulumi.String("86400"),
/// 				},
/// 			},
/// 			Description: pulumi.String("example_value"),
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
/// import com.pulumi.alicloud.polardb.ParameterGroup;
/// import com.pulumi.alicloud.polardb.ParameterGroupArgs;
/// import com.pulumi.alicloud.polardb.inputs.ParameterGroupParameterArgs;
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
///         var example = new ParameterGroup("example", ParameterGroupArgs.builder()
///             .parameterGroupName("example_value")
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .parameters(ParameterGroupParameterArgs.builder()
///                 .paramName("wait_timeout")
///                 .paramValue("86400")
///                 .build())
///             .description("example_value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:polardb:ParameterGroup
///     properties:
///       parameterGroupName: example_value
///       dbType: MySQL
///       dbVersion: '8.0'
///       parameters:
///         - paramName: wait_timeout
///           paramValue: '86400'
///       description: example_value
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Polar Db Parameter Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/parameterGroup:ParameterGroup example <id>
/// ```
class ParameterGroup extends pulumi.CustomResource {
  /// The time when the parameter template was created. The time is in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// The type of the database engine. Only `MySQL` is supported.
  late final pulumi.Output<String> dbType;
  /// The version of the database engine. Valid values:
  /// - **5.6**
  /// - **5.7**
  /// - **8.0**
  late final pulumi.Output<String> dbVersion;
  /// The description of the parameter template.
  late final pulumi.Output<String?> description;
  /// . Field 'name' has been deprecated from provider version 1.263.0. New field 'parameter_group_name' instead.
  late final pulumi.Output<String> name;
  /// The name of the parameter template. The name must meet the following requirements:
  ///
  /// - It must start with a letter and can contain letters, digits, and underscores (_). It cannot contain Chinese characters or end with an underscore (_).
  ///
  /// - It must be 8 to 64 characters in length.
  late final pulumi.Output<String> parameterGroupName;
  /// Details about the parameters. See `parameters` below.
  ///
  /// &gt; **NOTE:**  You can view all parameter details for the target database engine version database cluster through the [DescribeParameterTemplates](https://next.api.alibabacloud.com/document/polardb/2017-08-01/DescribeParameterTemplates), including parameter name, value.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<List<Map<String, dynamic>>> parameters;

  /// Creates a new [ParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ParameterGroup]. {@macro pulumi_polardb_parameter_group_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ParameterGroup(
    String name, {
    ParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dbType = registerOutput<String>('dbType');
    dbVersion = registerOutput<String>('dbVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
  }

  /// Gets an existing [ParameterGroup] resource's state with the given [name] and [id].
  static ParameterGroup get(
    String name,
    pulumi.Input<String> id, {
    ParameterGroupState? state,
  }) {
    return ParameterGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ParameterGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dbType = registerOutput<String>('dbType');
    dbVersion = registerOutput<String>('dbVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
  }
}
